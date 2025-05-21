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

SELECT * FROM student CROSS JOIN note;
SELECT s.id FROM student AS s CROSS JOIN note AS n CROSS JOIN cursuri AS c; 
SELECT s.nume, s. prenume, n.valoare FROM student AS s INNER JOIN note AS n ON s.id = n.id_student WHERE s.id = 101;
SELECT s.nume, s. prenume, n.valoare, c.titlu_curs FROM student AS s INNER JOIN note AS n ON s.id = n.id_student INNER JOIN cursuri AS c ON c.id_curs = n.id_curs WHERE s.id = 101;

-- legatura dintre doua tabele 
SELECT * FROM `cursuri` WHERE id_curs NOT IN (SELECT id_curs FROM didactic); 

(SELECT nume, prenume, (CASE WHEN id > 20 THEN 'student' END) AS type FROM student WHERE prenume like 'ion%') UNION (SELECT nume, prenume, (CASE WHEN id <= 20 then 'profesor' END) AS type FROM profesor WHERE prenume LIKE 'ion%');

-- aflam media
SELECT s.nume, s.prenume, FORMAT(avg(n.valoare),1) FROM student s LEFT JOIN note n ON s.id = n.id_student WHERE s.id =101;