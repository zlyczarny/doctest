<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220504095222 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE kadr_kat1 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE kadr_kat2 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE kadr_kat3 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE kadr_kat4 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE ksie_kat1 CHANGE image_size image_size INT NOT NULL, CHANGE updated_at updated_at DATETIME NOT NULL');
        $this->addSql('ALTER TABLE ksie_kat3 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE mar_kat1 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE mar_kat2 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE mar_kat3 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE sprz_kat1 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE sprz_kat2 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE sprz_kat3 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE sprz_kat4 CHANGE image_size image_size INT NOT NULL');
        $this->addSql('ALTER TABLE users ADD dzial VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE kadr_kat1 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE kadr_kat2 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE kadr_kat3 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE kadr_kat4 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE ksie_kat1 CHANGE image_size image_size INT DEFAULT NULL, CHANGE updated_at updated_at DATETIME DEFAULT NULL');
        $this->addSql('ALTER TABLE ksie_kat3 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE mar_kat1 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE mar_kat2 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE mar_kat3 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE sprz_kat1 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE sprz_kat2 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE sprz_kat3 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE sprz_kat4 CHANGE image_size image_size INT DEFAULT NULL');
        $this->addSql('ALTER TABLE users DROP dzial');
    }
}
