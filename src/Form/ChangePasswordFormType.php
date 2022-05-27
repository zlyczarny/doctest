<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;

class ChangePasswordFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('plainPassword', RepeatedType::class,  [
                'type' => PasswordType::class,
                'first_options' => [
                    'constraints' => [
                        new NotBlank([
                            'message' => 'Wprowadź hasło',
                        ]),
                        new Length([
                            'min' => 6,
                            'minMessage' => 'Hasło powinno składać się z min. {{ limit }} znaków',
                            // max length allowed by Symfony for security reasons
                            'max' => 4096,
                        ]),
                    ],
                    'attr' => ['placeholder'=> 'Nowe hasło', 'class' => 'form-control', 'autocomplete' => 'new-password'],
                    'label' => ' ',
                ],
                'second_options' => [
                    'attr' => ['class' => 'form-control', 'autocomplete' => 'new-password','placeholder'=> 'Powtórz hasło', 'class' => 'form-control'  ],
                    'label' => ' ',
                ],
                'invalid_message' => 'Hasła muszą się zgadzać.',
                // Instead of being set onto the object directly,
                // this is read and encoded in the controller
                'mapped' => false,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([]);
    }
}
