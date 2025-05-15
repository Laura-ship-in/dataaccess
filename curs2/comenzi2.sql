CREATE TABLE `magazin`.`produse` (`idprodus` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
 `nume` INT NOT NULL , `cantitate` INT NOT NULL DEFAULT '0' ,
  `idfirma` INT NOT NULL ,
   `firma` VARCHAR(50) NOT NULL ,
    `adresafirma` INT(100) NULL ,
     `modelprodus` VARCHAR(50 ) NOT NULL ,
      `stocprodus` INT NOT NULL DEFAULT '0' ,
       `pret` DECIMAL(10,4) NOT NULL , `categoriep` VARCHAR(100) NOT NULL ,
        `descrierep` TEXT NOT NULL ,
        `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
         PRIMARY KEY (`idprodus`)) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;


UPDATE student SET status ='bursier' WHERE bursa IS NOT NULL;
SELECT nume,prenume FROM `profesor`;
SELECT nume AS "Nume Profesor", prenume FROM `student`;
SELECT an AS An , COUNT(id) AS Nr_studenti FROM `student` ORDER BY `an` ASC;
SELECT an AS An , COUNT(id) AS Nr_studenti FROM `student` GROUP BY an ORDER BY `an` ASC;

SELECT * FROM `profesor` WHERE grad_didactic = 'I' OR grad_didactic ='II';
-- sau 
SELECT * FROM `profesor` WHERE grad_didactic IN('I','II');

SELECT * FROM `student` WHERE prenume LIKE 'Ion%';

SELECT * FROM `student` ORDER BY `student`.`nume`, prenume DESC;
SELECT * FROM `student` ORDER BY `nume` ASC LIMIT 5 OFFSET 10;
SELECT an, COUNT(id) as nr_student from `student` GROUP BY an;
SELECT an, COUNT(id) as nr_student from `student` GROUP BY an HAVING nr_student =9;