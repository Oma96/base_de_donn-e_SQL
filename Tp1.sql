--creer le tab telephones

CREATE TABLE IF NOT EXISTS telephones(
  id SERIAL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL,
  manufacturer VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  units_sold INT NOT NULL
);

--inserer les donnees

/*INSERT INTO telephones(name,manufacturer,price,units_sold)
  VALUES ('N1280','Nokia',199,1925),
       ('Iphone 4','Apple',399,9436),
       ('Galaxy S 5','Samsung',299,2359),
	   ('S5620 Monte','Samsung',250,2385),
	    ('N8','Nokia',150,7543),
		('Droid','Motorola',150,8395),
		('Iphone 13 Pro Max','Apple',1300,12849),
		('Galaxy Note 20','Samsung',1100,10353);*/
		
--lister tous les modeles		
		
--SELECT * FROM telephones;

--Ecrire une requête pour lister tous les telephone(name, manufacturer)
--de tous les téléphone dont le prix est supérieur à 200€


--SELECT name,manufacturer FROM telephones
--WHERE price >200;

-- Ecrire une requête pour lister tous les telephone(name, manufacturer) de tous les téléphone 
--dont le prix est varie entre 150 et 200€


--SELECT name,manufacturer FROM telephones
--WHERE price >=150 AND price <=200;



--Lister tous les téléphones de marque samsung et Apple

--SELECT * FROM telephones 
--WHERE manufacturer='Samsung' OR manufacturer= 'Apple';

-- Afficher le revenu total pour les téléphones vendues.Pour chaque téléphone,
--vous avez le prix et la quantité vendu

--SELECT name, CONCAT (price * units_sold) AS  revenu_total  FROM telephones

-- Afficher le nombre des téléphones Apple

--SELECT COUNT (manufacturer) FROM telephones
--WHERE manufacturer= 'Apple';


-- Afficher toutes les données de la table téléphone en renommant les champs de la manière suivante : name=>modèle, manufacturer => fabricant, price => prix, 
--units_sold => quantité vendue

--ALTER TABLE telephones RENAME COLUMN name TO modeles;
--ALTER TABLE telephones RENAME COLUMN manufacturer TO fabricant;
--ALTER TABLE telephones RENAME COLUMN price TO prix;
--ALTER TABLE telephones RENAME COLUMN units_sold TO quantite_vendue;

--Afficher tous les téléphones dont le prix total des ventes est supérieur à 1300000€

SELECT *, CONCAT (prix * quantite_vendue) AS  revenu_total  FROM telephones
WHERE(prix * quantite_vendue)>1300000;
