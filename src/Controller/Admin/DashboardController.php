<?php

namespace App\Controller\Admin;

use App\Entity\InnKat1;
use App\Entity\InnKat2;
use App\Entity\InnKat3;
use App\Entity\InnKat4;
use App\Entity\KadrKat1;
use App\Entity\KadrKat2;
use App\Entity\KadrKat3;
use App\Entity\KadrKat4;
use App\Entity\KsieKat1;
use App\Entity\KsieKat2;
use App\Entity\KsieKat3;
use App\Entity\MarKat1;
use App\Entity\MarKat2;
use App\Entity\MarKat3;
use App\Entity\SprzKat1;
use App\Entity\SprzKat2;
use App\Entity\SprzKat3;
use App\Entity\SprzKat4;
use App\Entity\Users;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    #[Route('admin', name: 'admin')]
    public function index(): Response
    {
        return $this->render('admin/index.html.twig');
        #return parent::index();

        // Option 1. You can make your dashboard redirect to some common page of your backend
        //
        // $adminUrlGenerator = $this->container->get(AdminUrlGenerator::class);
        // return $this->redirect($adminUrlGenerator->setController(OneOfYourCrudController::class)->generateUrl());

        // Option 2. You can make your dashboard redirect to different pages depending on the user
        //
        // if ('jane' === $this->getUser()->getUsername()) {
        //     return $this->redirect('...');
        // }

        // Option 3. You can render some custom template to display a proper dashboard with widgets, etc.
        // (tip: it's easier if your template extends from @EasyAdmin/page/content.html.twig)
        //
        // return $this->render('some/path/my-dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('<b>DocThor</b> <img src="thor.png">')
            ->setFaviconPath('favicon-32x32.png');
    }

   # public function configureMenuItems(): iterable
   # {
   #     yield MenuItem::linkToDashboard('Dashboard', 'fa fa-home');
   #     yield MenuItem::linkToCrud('The Label', 'fas fa-list', MarKat1::class);
   #  }

   public function configureMenuItems(): iterable
   {
       return [
           
           MenuItem::linkToDashboard('Pulpit', 'fa fa-home'),
           MenuItem::subMenu('Marketing', 'fa fa-area-chart')->setPermission("ROLE_MARK") ->setSubItems([
               MenuItem::linkToCrud('Umowy', 'fas fa-copy', MarKat1::class),
               MenuItem::linkToCrud('Oferty', 'fa fa-tags', MarKat2::class),
               MenuItem::linkToCrud('Procedury', 'fas fa-align-left', MarKat3::class),
               ]),
            MenuItem::subMenu('Sprzedaż', 'fa fa-money')->setPermission("ROLE_SPRZ") ->setSubItems([
                MenuItem::linkToCrud('Umowy', 'fas fa-copy', SprzKat1::class),
                MenuItem::linkToCrud('Oferty', 'fa fa-tags', SprzKat2::class),
                MenuItem::linkToCrud('Dokumentacja', 'fa fa-list-ol', SprzKat3::class),
                MenuItem::linkToCrud('Procedury', 'fas fa-align-left', SprzKat4::class),
                ]),
            MenuItem::subMenu('Księgowosć', 'fa fa-book')->setPermission("ROLE_KSIE")->setSubItems([
                MenuItem::linkToCrud('Oferty', 'fas fa-tags', KsieKat1::class),
                MenuItem::linkToCrud('Procedury', 'fa fa-align-left', KsieKat2::class),
                MenuItem::linkToCrud('Dokumentacja', 'fa fa-list-ol', KsieKat3::class),
                    ]),
            MenuItem::subMenu('Kadry', 'fa fa-address-card')->setPermission("ROLE_KADR") ->setSubItems([
                MenuItem::linkToCrud('Oferty', 'fas fa-tags', KadrKat1::class),
                MenuItem::linkToCrud('Procedury', 'fa fa-align-left', KadrKat2::class),
                MenuItem::linkToCrud('Umowy', 'fa fa-copy', KadrKat3::class),
                MenuItem::linkToCrud('Dokumentacja', 'fa fa-list-ol', KadrKat4::class),
                            ]),
            MenuItem::section('Inne', 'fa fa-asterisk'),
                MenuItem::linkToCrud('Wnioski', 'fas fa-paperclip', InnKat1::class),
                MenuItem::linkToCrud('Szablony', 'fa fa-envelope', InnKat2::class),
                MenuItem::linkToCrud('Instrukcje', 'fa fa-newspaper-o', InnKat3::class),
                MenuItem::linkToCrud('Certyfikaty', 'fa fa-paper-plane', InnKat4::class),
            MenuItem::section('Opcje', 'fa fa-lock'),
            MenuItem::linkToCrud('Użytkownicy', 'fa fa-users', Users::class) ->setPermission("ROLE_UZYT"),
            MenuItem::linkToRoute('Zmień hasło', 'fa fa-key', 'app_forgot_password_request'),
            MenuItem::linkToLogout('Wyloguj', 'fa fa-sign-out')

                                                              
    #   ikony dostępne na https://fontawesome.com/v4/icons/
    
       ];
   }

}
