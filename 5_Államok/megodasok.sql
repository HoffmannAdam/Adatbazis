/* 2. Feladat */

	INSERT INTO orszagok (allam, allamforma, terulet, nepesseg, foldresz)
	VALUES ('Belize', 'köztársaság', 22965, 189, 'Közép-Amerika');

/* 3. Feladat */

	SELECT DISTINCT *
	FROM orszagok
	WHERE allam LIKE '%szigetek%';

/* 4. Feladat */

	SELECT allam, foldresz, terulet
	FROM orszagok
	WHERE (foldresz LIKE 'Afrika' OR foldresz LIKE 'Dél-Amerika')
	AND terulet > 500000
	ORDER BY terulet DESC;

/* 5. Feladat */

	SELECT allam, nepesseg, terulet
	FROM orszagok
	ORDER BY terulet ASC
	LIMIT 3;

/* 6. Feladat */

	SELECT COUNT(*) AS afrikai_orszagok_szama,
		   SUM(terulet) AS osszterulet,
		   SUM(nepesseg) AS ossznepesseg
	FROM orszagok
	WHERE foldresz LIKE 'Afrika';

/* 7. Feladat */

	SELECT foldresz, allamforma, allam, terulet
	FROM orszagok
	ORDER BY foldresz, allamforma, allam ASC;
	
/* 8. Feladat */

	ALTER TABLE orszagok
	ADD COLUMN Nepsuruseg DECIMAL(10,2);
	UPDATE orszagok SET Nepsuruseg = nepesseg*1000/terulet;