/* 1. feladat:  */

	CREATE DATABASE statisztika
	

/* 2. feladat:  */

	CREATE TABLE telepules (telepaz int NOT NULL PRIMARY KEY,
							megnevezes varchar(50),
							rang varchar(20),
							kisterseg varchar(20),
							terulet int,
							nepesseg int,
							lakas int);

/* 3. feladat:  */

	SELECT * FROM `telepules`;

/* 4. feladat:  */

	SELECT * FROM `telepules` 
	WHERE `rang` = 'közseg' AND `nepesseg` < 1000 
	ORDER BY `nepesseg` ASC;

/* 5. feladat:  */

	SELECT `megnevezes` FROM `telepules` 
	WHERE `kisterseg` = 'Makói' or `kisterseg` = 'Csongradi'
	ORDER BY `terulet` ASC LIMIT 1;

/* 6. feladat:  */

	SELECT `megnevezes`, `nepesseg` AS Népsűrűség
	FROM `telepules`
	WHERE `nepesseg` > 1
	ORDER BY `nepesseg` DESC;

/* 7. feladat:  */

	SELECT `kisterseg`, COUNT(`telepaz`) AS `Települések száma`, SUM(`nepesseg`) AS `Össznépesség`
	FROM `telepules`
	GROUP BY `kisterseg`;

/* 8. feladat:  */

	CREATE TABLE telepules2 (telepaz int NOT NULL PRIMARY KEY,
							megnevezes varchar(50),
							rang varchar(20),
							kisterseg varchar(20),
							terulet int,
							nepesseg int,
							lakas int);

/* 9. feladat:  */
