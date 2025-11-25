/* 1. feladat:  */

	CREATE DATABASE focivb

/* 2. feladat:  */

	CREATE TABLE csapat(resztvevoaz int NOT NULL PRIMARY KEY,
                    csapat varchar(20),
                    helyezes int,
                    ev int,
                    helyszin varchar(20));

/* 3. feladat:  */

	SELECT * FROM `csapat`;

/* 4. feladat:  */

	SELECT * FROM `csapat`
	WHERE `csapat` = 'Magyarország'
	ORDER BY `ev` ASC;

/* 5. feladat:  */

	SELECT `csapat`, `ev` FROM `csapat`
	WHERE `helyezes` = '1' 
	AND `ev` > 1953 AND `ev` < 1987;

/* 6. feladat:  */

	SELECT `csapat`, COUNT(`resztvevoaz`) AS 'Részvételek száma'
	FROM `csapat`
	GROUP BY `csapat`
	HAVING COUNT(`resztvevoaz`) > 1;

/* 7. feladat:  */

	CREATE TABLE helyszin AS
	SELECT DISTINCT ev, helyszin
	FROM csapat
	ORDER BY ev;	

/* 8. feladat:  */

	SELECT c2.csapat AS orszag, c2.ev
	FROM csapat c1
	JOIN csapat c2 ON c1.ev = c2.ev
	WHERE c1.csapat = 'Brazília' AND c1.helyezes = 1
	AND c2.helyezes = 2
	ORDER BY c2.ev;
	
/* 9. feladat:  */

	SELECT ev, csapat, helyezes
	FROM csapat
	ORDER BY ev, helyezes;
