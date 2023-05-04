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