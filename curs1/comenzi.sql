CREATE TABLE `mydb2023`.`produse` ( 
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `nume_produs` VARCHAR(100) NOT NULL ,
    `descriere` TEXT NULL ,
    `pret` DECIMAL(7,2) NOT NULL ,
    `stoc` INT NOT NULL DEFAULT '0' ,
    `producator` VARCHAR(250) NOT NULL ,
    `user_at` INT NOT NULL ,
    `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    PRIMARY KEY (`id`)) ENGINE = InnoDB;

    INSERT INTO `produse` (`id`, `nume_produs`, `descriere`, `pret`, `stoc`, `producator`, `user_at`, `data_adaugare`) VALUES (NULL, 'pix', 'pix albastru de grosime 0.7', '22.5', '10', 'big', '1', CURRENT_TIMESTAMP);
    SELECT * FROM `produse` 
    --comentariu

    CREATE USER 'mydb2023'@'localhost'
    IDENTIFIED VIA mysql_native_password USING '***';GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'mydb2023'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;


    SELECT COUNT(id_curs) AS nr_cursuri, an FROM cursuri GROUP BY an HAVING nr_cursuri <=5;

SELECT NOW();
SELECT VERSION();
SELECT nume, prenume FROM student;
SELECT titlu_curs FROM cursuri;
SELECT COUNT(id) AS nr, an FROM student GROUP BY an ;
SELECT SUM(bursa) FROM student WHERE  an =1 AND bursa IS NOT NULL GROUP  BY an;
UPDATE student SET status ='bursier' WHERE bursa IS NOT NULL;