<?php

namespace App\Entity;

use App\Repository\UsersRepository;
use Doctrine\ORM\Mapping as ORM;													   
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;

#[ORM\Entity(repositoryClass: UsersRepository::class)]
																							
class Users implements UserInterface, PasswordAuthenticatedUserInterface
{
        

    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 180, unique: true)]
    private $username;

    #[ORM\Column(type: 'json')]
    private $roles = [];

    #[ORM\Column(type: 'string')]
    private $password;

    #[ORM\Column(type: 'string', length: 255)]
    private $email;				

    #[ORM\Column(type: 'boolean')]
    private $aktywny;

    #[ORM\Column(type: 'date')]
				  					  
    private $rejestracja;
								  			
    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @deprecated since Symfony 5.3, use getUserIdentifier instead
     */
    public function getUsername(): string
    {
        return (string) $this->username;
    }

    public function setUsername(string $username): self
    {
        $this->username = $username;

        return $this;
    }

    /**
     * A visual identifier that represents this user.
     *
     * @see UserInterface
     */
    public function getUserIdentifier(): string
    {
        return (string) $this->username;
    }

    /**
	
     * @see UserInterface
     */
    public function getRoles(): array
    {
        $roles = $this->roles;
        // guarantee every user at least has ROLE_USER
        //$roles[] = 'ROLE_USER';

        return array_unique($roles);
    }

    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }

    /**
     * @see PasswordAuthenticatedUserInterface
     */
    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    /**
     * Returning a salt is only needed, if you are not using a modern
     * hashing algorithm (e.g. bcrypt or sodium) in your security.yaml.
     *
     * @see UserInterface
     */
    public function getSalt(): ?string
    {
        return null;
    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainPassword = null;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getAktywny(): ?bool
    {
        return $this->aktywny;
    }

    public function setAktywny(bool $aktywny): self
    {
        $this->aktywny = $aktywny;

        return $this;
    }

    public function getRejestracja(): ?\DateTimeInterface
    {
        return $this->rejestracja;
    }

    public function setRejestracja(\DateTimeInterface $rejestracja): self
    {
        $this->rejestracja = $rejestracja;

        return $this;
    }
    
     public function __toString(): string
        {
        return $this->username;
        }

     /**
     * @var string clear password for backend
     */
    private $clearpassword;

    #[ORM\Column(type: 'string', length: 255)]
    private $imie;

    #[ORM\Column(type: 'string', length: 255)]
    private $nazwisko;

    #[ORM\Column(type: 'string', length: 255)]
    private $stanowisko;

    #[ORM\Column(type: 'string', length: 255)]
    private $dzial;

    /**
     * @return string
     */
    public function getClearpassword(): string
    {
        if( $this->clearpassword == null ) return "";
        return $this->clearpassword;
    }

    /**
     * @param string $clearpassword
     */
    public function setClearpassword(string $clearpassword): void
    {
        $this->clearpassword = $clearpassword;
    }

    public function getImie(): ?string
    {
        return $this->imie;
    }

    public function setImie(string $imie): self
    {
        $this->imie = $imie;

        return $this;
    }

    public function getNazwisko(): ?string
    {
        return $this->nazwisko;
    }

    public function setNazwisko(string $nazwisko): self
    {
        $this->nazwisko = $nazwisko;

        return $this;
    }

    public function getStanowisko(): ?string
    {
        return $this->stanowisko;
    }

    public function setStanowisko(string $stanowisko): self
    {
        $this->stanowisko = $stanowisko;

        return $this;
    }

    public function getDzial(): ?string
    {
        return $this->dzial;
    }

    public function setDzial(string $dzial): self
    {
        $this->dzial = $dzial;

        return $this;
    }
					
		
}
