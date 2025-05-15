CREATE DATABASE demo;
USE demo;
CREATE TABLE `demo`.`studenti` (`id` INT UNSIGNED NOT NULL AUTO_INCREMENT , `nume` VARCHAR(100) NOT NULL , `prenume` VARCHAR(100) NOT NULL , `telefon` CHAR(10) NOT NULL , `mail` VARCHAR(200) NOT NULL , `data-adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`)) ENGINE = InnoDB CHARSET=utf8 COLLATE;
ALTER TABLE `studenti` CHANGE `mail` `mail` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `demo`.`studenti` ADD UNIQUE `email_unic` (`email`);
INSERT INTO `studenti` (`id`, `nume`, `prenume`, `telefon`, `email`, `data-adaugare`) VALUES (NULL, 'Popescu ', 'Dan ', '0786062738', 'popescu@yahoo.com', current_timestamp());