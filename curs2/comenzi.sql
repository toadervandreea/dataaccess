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


-- CURS 3
SELECT * FROM `student`WHERE data_nastere >='1996-01-01'
SELECT * FROM `student`WHERE year(data_nastere) >='1996'
SELECT * FROM `student`WHERE year(data_nastere) >='1993'AND year(data_nastere) <='1995';
SELECT * FROM `student`WHERE year(data_nastere) BETWEEN '1993' AND '1995'

SELECT * FROM `profesor` WHERE grad_didactic='I' OR grad_didactic='II';
SELECT * FROM `profesor` WHERE grad_didactic IN ('I','II')
SELECT * FROM `cursuri` WHERE an=2 AND semestru=2;
SELECT * FROM `student`WHERE prenume LIKE 'ion%';
SELECT * FROM `student` WHERE DATE_FORMAT(data_nastere, '%m-%d')='09-21'
SELECT * FROM `student` ORDER BY nume ASC;
SELECT * FROM `student` ORDER BY nume ASC, prenume DESC;
SELECT * FROM `student` ORDER BY rand();
SELECT * FROM `student` ORDER BY rand() LIMIT 1;
SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 5;
SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 5, 5;
SELECT profesor.nume, profesor.prenume, cursuri.titlu_curs, note.valoare  FROM `profesor` LEFT JOIN didactic ON profesor.id=didactic.id_prof INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs LEFT JOIN note ON cursuri.id_curs=note.id_curs WHERE profesor.id=6 AND note.valoare IS NOT NULL
SELECT s.nume, s.prenume FROM `note`AS n INNER JOIN student AS s on n.id_student=s.id GROUP BY id_student;
SELECT s.nume, s.prenume, n.valoare, AVG(n.valoare)  FROM `student` AS s LEFT JOIN note AS n ON s.id =n.id_student WHERE s.id=111 GROUP BY s.id;