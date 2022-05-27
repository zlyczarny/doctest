<?php

namespace App\Controller\Admin;

use App\Entity\Users;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;



class UsersCrudController extends AbstractCrudController
{

    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (method_exists($entityInstance, 'setPassword')) {

            $clearPassword = trim($this->get('request_stack')->getCurrentRequest()->request->all()['Users']['clearpassword']);

            ///MyLog::info("clearPass:" . $clearPassword);

            // save password only if is set a new clearpass
            if ( !empty($clearPassword) ) {
                ////MyLog::info("clearPass not empty! encoding password...");
                $encodedPassword = $this->passwordEncoder->encodePassword($this->getUser(), $clearPassword);
                $entityInstance->setPassword($encodedPassword);
            }
        }

        parent::persistEntity($entityManager, $entityInstance);
    }

         /**
        * @var UserPasswordEncoderInterface
        */
        private $passwordEncoder;
    
        /**
         * UserCrudController constructor.
         * @param UserPasswordEncoderInterface $passwordEncoder
         */
    
        public function __construct(
            UserPasswordEncoderInterface $passwordEncoder
        ) {
            $this->passwordEncoder = $passwordEncoder;
        }
    
        public static function getEntityFqcn(): string
        {
            return Users::class;
        }
    
        
        public function configureFields(string $pageName): iterable
        {
            $password = TextField::new('clearpassword')
            ->setLabel("Nowe hasło")
            ->setFormType(PasswordType::class)
            ->setFormTypeOption('empty_data', '')
            ->setRequired(false)
            //->setHelp('If the right is not given, leave the field blank.')
            ->hideOnIndex();
    
            

            return [
                TextField::new('imie'),
                TextField::new('nazwisko'),
                TextField::new('username', 'Nazwa użytkownika')->hideOnIndex(),
                TextField::new('stanowisko'),
                ChoiceField::new('dzial','Dział')->setChoices([
                    'Kadry' => 'Kadry',
                    'Sprzedaż' => 'Sprzedaz',
                    'Zarząd'=> 'Zarzad',
                    'Księgowość' => 'Ksiegowosc',
                    'Marketing'=> 'Marketing',
                    'IT'=> 'IT']),
                EmailField::new('email'),
                DateField::new('rejestracja'),
                ChoiceField::new('roles', 'Uprawnienia')->allowMultipleChoices()->setChoices([
                    'Kadry' => 'ROLE_KADR',
                    'Kadry edycja' => 'ROLE_KADREDIT',
                    'Sprzedaż' => 'ROLE_SPRZ',
                    'Sprzedaż edycja' => 'ROLE_SPRZEDIT',
                    'Księgowość' => 'ROLE_KSIE',
                    'Księgowość edycja' => 'ROLE_KSIEEDIT',
                    'Marketing' => 'ROLE_MARK',
                    'Marketing edycja' => 'ROLE_MARKEDIT',
                    'Administrator' => 'ROLE_ADMIN',
                    'Blokada konta' => 'ROLE_BLOK']),
                BooleanField::new('aktywny') ->renderAsSwitch(false), //wyłącza przełącznik boola
                $password,
            ];
        }
    
        public function updateEntity(EntityManagerInterface $entityManager, $entityInstance): void
        {
            // set new password with encoder interface
            if (method_exists($entityInstance, 'setPassword')) {
    
                $clearPassword = trim($this->get('request_stack')->getCurrentRequest()->request->all()['Users']['clearpassword']);
    
                ///MyLog::info("clearPass:" . $clearPassword);
    
                // save password only if is set a new clearpass
                if ( !empty($clearPassword) ) {
                    ////MyLog::info("clearPass not empty! encoding password...");
                    $encodedPassword = $this->passwordEncoder->encodePassword($this->getUser(), $clearPassword);
                    $entityInstance->setPassword($encodedPassword);
                }
            }
    
            parent::updateEntity($entityManager, $entityInstance);
        }


        public function configureCrud(Crud $crud): Crud
        {
            return $crud
                // the labels used to refer to this entity in titles, buttons, etc.
                ->setEntityLabelInSingular('Użytkownik')
                ->setEntityLabelInPlural('Użytkownicy')
                ->setPageTitle('index', 'Lista Użytkowników')
                ->setPageTitle('detail', fn (Users $nazwa) => (string) $username)
                ->setEntityPermission('ROLE_UZYT')
                // in addition to a string, the argument of the singular and plural label methods
                // can be a closure that defines two nullable arguments: entityInstance (which will
                // be null in 'index' and 'new' pages) and the current page name

                //pokazuje akcje w lini
                //->showEntityActionsInlined()
            ;
        }

        public function configureFilters(Filters $filters): Filters
        {
            return $filters
                ->add('username')
                ->add('dzial')
                ->add('aktywny')
                ->add('rejestracja')
                ->add('email')
            ;
        }

        public function configureActions(Actions $actions): Actions
    {
        return $actions

            ->setPermission(Action::NEW, 'ROLE_ADMIN')
            ->setPermission(Action::EDIT, 'ROLE_ADMIN')
            ->setPermission(Action::DELETE, 'ROLE_ADMIN')
            //->remove(Crud::PAGE_INDEX, Action::EDIT)
        ;
    }
    

    }