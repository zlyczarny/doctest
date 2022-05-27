<?php

namespace App\Controller\Admin;

use App\Entity\InnKat1;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;

//Wnioski


class InnKat1CrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return InnKat1::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('nazwa'),
            TextEditorField::new('opis'),
            TextField::new('autor'),
            DateField::new('data','Data dodania'),
            BooleanField::new('aktualny')
            ->renderAsSwitch(false),
            IntegerField::new('werja','Wersja'),
            ImageField::new('image_name','Dokument')
            ->setTemplatePath('podglad.html.twig')
            ->setBasePath('dokumenty/inne')
            ->setUploadDir('public/dokumenty/inne')
            ->setUploadedFileNamePattern('[randomhash].[extension]')
            ->setRequired(false)
        ];
    }    
    


    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            // the labels used to refer to this entity in titles, buttons, etc.
            ->setEntityLabelInSingular('Dokument')
            ->setEntityLabelInPlural('Dokumenty')
            ->setPageTitle('index', 'Lista Wniosków')
            ->setPageTitle('detail', fn (InnKat1 $nazwa) => (string) $nazwa)
            // in addition to a string, the argument of the singular and plural label methods
            // can be a closure that defines two nullable arguments: entityInstance (which will
            // be null in 'index' and 'new' pages) and the current page name

            //pokazuje akcje w lini
            ->showEntityActionsInlined()
        ;
    }


    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('nazwa')
            ->add('autor')
            ->add('data')
            ->add('aktualny')
            ->add('werja')
        ;
    }

    public function configureActions(Actions $actions): Actions
{
    return $actions
        // ...
        ->add(Crud::PAGE_INDEX, Action::DETAIL)
        ->setPermission(Action::NEW, 'ROLE_INNEDIT')
        ->setPermission(Action::EDIT, 'ROLE_INNEDIT')
        ->setPermission(Action::DELETE, 'ROLE_INNEDIT')
        //->remove(Crud::PAGE_INDEX, Action::EDIT)
    ;
}


}

