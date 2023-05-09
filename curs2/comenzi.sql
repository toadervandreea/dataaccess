CREATE SCHEMA `universitate2023` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `universitate2023`.`utilizatori` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(145) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE SCHEMA `magazin` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `magazin`.`produse` (
  `idproduse` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `numep` VARCHAR(45) NOT NULL,
  `cantitate` VARCHAR(45) NOT NULL,
  `idfirma` VARCHAR(45) NOT NULL,
  `firma` VARCHAR(45) NOT NULL,
  `adresafirma` VARCHAR(45) NOT NULL,
  `modelp` VARCHAR(45) NOT NULL,
  `stocp` VARCHAR(45) NOT NULL,
  `pret` DECIMAL(7,2) NOT NULL,
  `categoriep` VARCHAR(45) NOT NULL,
  `descrierep` TINYINT(50) NOT NULL,
  `data_addp` DATE NOT NULL,
  PRIMARY KEY (`idproduse`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `magazin`.`produse` (`idproduse`, `numep`, `cantitate`, `idfirma`, `firma`, `adresafirma`, `modelp`, `stocp`, `pret`, `categoriep`, `descrierep`, `data_addp`) VALUES ('1', 'paine', '40', '454646', 'arcada', 'str zidarilor', 'galmopan', '56', '2', 'fainoase', 'paine proaspata', '2023.05.9');
INSERT INTO `magazin`.`produse` (`idproduse`, `numep`, `cantitate`, `idfirma`, `firma`, `adresafirma`, `modelp`, `stocp`, `pret`, `categoriep`, `descrierep`) VALUES ('2', 'covrigi', '60', '4646', 'milka', 'str eroilor', 'dulce', '67', '10', 'dulciuri', 'covrigi crocanti');

CREATE TABLE `studenti` (
  `idstudenti` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) NOT NULL,
  `prenume` varchar(45) NOT NULL,
  `grupa` set('1','2','3','4') NOT NULL,
  `email` varchar(145) NOT NULL,
  `data_add` varchar(45) NOT NULL,
  `status` enum('admis','respins','neevaluat') DEFAULT 'neevaluat',
  PRIMARY KEY (`idstudenti`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nume_unic` (`nume`,`prenume`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;