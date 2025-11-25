/* 1. feladat:  */

	CREATE TABLE bolygohold (holkering varchar(20), 
						 elnevezes varchar(20) NOT NULL PRIMARY KEY,
						 tavolsag int,
						 direktirany boolean,
						 atmero int,
						 felfedezo varchar(50),
						 felfedezeseve int);

/* 2. feladat:  */

	INSERT INTO bolygohold (holkering, elnevezes, tavolsag, direktirany, atmero, felfedezo, felfedezeseve)
	VALUES ('Föld', 'Hold', 384400, 1, 3474, NULL, NULL);

/* 3. feladat:  */

	SELECT `elnevezes` FROM `bolygohold`
	WHERE `holkering` =  'Neptunusz' OR 'Szaturnusz'
	AND `felfedezeseve` > 1945;

/* 4. feladat:  */

	SELECT `tavolsag` FROM `bolygohold`
	WHERE `holkering` LIKE 'Jupiter'
	LIMIT 2;

/* 5. feladat:  */

	SELECT holkering AS bolygo, COUNT(*) AS holdak_szama
	FROM bolygohold
	WHERE holkering <> 'Nap'
	GROUP BY holkering
	ORDER BY holdak_szama DESC;

/* 6. feladat:  */

	CREATE TABLE bolygo AS
	SELECT elnevezes AS nev,
		   atmero,
		   tavolsag,
		   felfedezeseve
	FROM bolygohold
	WHERE holkering = 'Nap';

/* 7. feladat:  */

	SELECT holkering AS kozponti_egitest,
		   elnevezes,
		   atmero,
		   felfedezo,
		   felfedezeseve
	FROM bolygohold
	ORDER BY kozponti_egitest, elnevezes;