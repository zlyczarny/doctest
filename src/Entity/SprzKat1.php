<?php

namespace App\Entity;

use App\Repository\SprzKat1Repository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

#[ORM\Entity(repositoryClass: SprzKat1Repository::class)]
class SprzKat1
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

   //uploader start
   #[Vich\UploadableField(mapping: 'sprzedaz', fileNameProperty: 'imageName', size: 'imageSize')]
   private ?File $imageFile = null;

   #[ORM\Column(type: 'string')]
   private ?string $imageName = null;

   #[ORM\Column(type: 'integer')]
   private ?int $imageSize = null;

   //#[ORM\Column(type: 'datetime')]
   //private ?\DateTimeInterface $updatedAt = null;
   //uploader koniec

    #[ORM\Column(type: 'string', length: 255)]
    private $nazwa;

    #[ORM\Column(type: 'text')]
    private $opis;

    #[ORM\Column(type: 'string', length: 255)]
    private $autor;

    #[ORM\Column(type: 'date')]
    private $data;

    #[ORM\Column(type: 'boolean')]
    private $aktualny;

    #[ORM\Column(type: 'integer')]
    private $wersja;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNazwa(): ?string
    {
        return $this->nazwa;
    }

    public function setNazwa(string $nazwa): self
    {
        $this->nazwa = $nazwa;

        return $this;
    }

    public function getOpis(): ?string
    {
        return $this->opis;
    }

    public function setOpis(string $opis): self
    {
        $this->opis = $opis;

        return $this;
    }

    public function getAutor(): ?string
    {
        return $this->autor;
    }

    public function setAutor(string $autor): self
    {
        $this->autor = $autor;

        return $this;
    }

    public function getData(): ?\DateTimeInterface
    {
        return $this->data;
    }

    public function setData(\DateTimeInterface $data): self
    {
        $this->data = $data;

        return $this;
    }

    public function getAktualny(): ?bool
    {
        return $this->aktualny;
    }

    public function setAktualny(bool $aktualny): self
    {
        $this->aktualny = $aktualny;

        return $this;
    }

    public function getWersja(): ?int
    {
        return $this->wersja;
    }

    public function setWersja(int $wersja): self
    {
        $this->wersja = $wersja;

        return $this;
    }

    public function __toString()
    {
        return $this->nazwa;
    }

    //uploader cd

    public function setImageFile(?File $imageFile = null): void
    {
        $this->imageFile = $imageFile;

        if (null !== $imageFile) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            $this->updatedAt = new \DateTimeImmutable();
        }
    }

    public function getImageFile(): ?File
    {
        return $this->imageFile;
    }

    public function setImageName(?string $imageName): void
    {
        $this->imageName = $imageName;
    }

    public function getImageName(): ?string
    {
        return $this->imageName;
    }
    
    public function setImageSize(?int $imageSize): void
    {
        $this->imageSize = $imageSize;
    }

    public function getImageSize(): ?int
    {
        return $this->imageSize;
    }
    //uploader cd koniec
}
