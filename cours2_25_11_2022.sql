-- CREATE TABLE IF NOT EXISTS telephones(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(20) NOT NULL UNIQUE,
--     manufacturer VARCHAR(20) NOT NULL,
--     price INTEGER NOT NULL CHECK(price>0),
--     units_sold INTEGER NOT NULL CHECK(units_sold>=0)
-- );
-- -- Insertion des données :
-- INSERT INTO
--     telephones(name,manufacturer, price, units_sold)
--     values('N1280','Nokia',199,1925),
--     ('Iphone 4','Apple',399,9436),
--     ('Galaxy S 5','Samsung',299,2359),
--     ('S5620 Monte','Samsung',250,2385),
--     ('N8','Nokia',150,7543),
--     ('Droid','Motorola',150,8395),
--     ('Iphone 13 Pro Max','Apple',1300,12849),
--     ('Galaxy Note 20','Samsung',1100,10353)
-- SELECT * FROM telephones  WHERE LOWER(manufacturer) IN(LOWER('apple'),LOWER('samsung'));
-- SELECT * FROM telephones  WHERE LOWER(manufacturer)=LOWER('apple') OR LOWER(manufacturer)=LOWER('samsung');
-- -- Afficher le nombre d'appareils apple
-- SELECT COUNT(id) FROM telephones WHERE LOWER(manufacturer)=LOWER('APPLE');
-- -- ASC : Ordre croissant(Celle qui s'applique par défaut)
-- -- DESC : Ordre decroissant (De plus grand au plus petit)
-- SELECT name,(price*units_sold) AS ca FROM telephones ORDER BY (price*units_sold) DESC;
-- INSERT INTO telephones(name,manufacturer, price, units_sold)
--     values('N1280K','Nokia',324,1935),
--     ('Iphone XP','Apple',324,1935)
-- -- Lister les noms, fabricants de tous les téléphones dont le chiffre d'affaire est < 1000000;
-- Filtre premierement par ordre décroissant des ca
-- Ensuite par ordre croissant des noms
-- Enfin par ordre croissant des constructeurs
-- SELECT name,manufacturer, (price*units_sold) AS ca
-- 	FROM telephones
-- 	WHERE (price*units_sold)<1000000
-- 	ORDER BY (price*units_sold) DESC, name ASC, manufacturer ASC;
-- -- Mettre à jour une ligne(enregistrement/n-uplet)
-- UPDATE telephones SET name='Droid x', price=155 WHERE id=6;
-- SELECT * FROM telephones WHERE id=6;
-- -- Suppression d'une ligne
-- DELETE FROM telephones WHERE id=20;
-- SELECT * FROM telephones WHERE id=20;
-- -- Insertion des données
-- insert into telephones (name, manufacturer, price, units_sold) values ('Zoolab', 'Zozo', 261, 7585);
-- insert into telephones (name, manufacturer, price, units_sold) values ('Zoo', 'Zozo', 1549, 6746);
-- insert into telephones (name, manufacturer, price, units_sold) values ('Hatity', 'Toto', 957, 7754);
-- insert into telephones (name, manufacturer, price, units_sold) values ('Voltsillam', 'Toto', 869, 4173);
-- insert into telephones (name, manufacturer, price, units_sold) values ('Zathin', 'Zero', 419, 6608);
-- insert into telephones (name, manufacturer, price, units_sold) values ('Namfix', 'Zero', 877, 4758);
-- SELECT * FROM telephones;
-- Suppressions multiple
-- DELETE FROM telephones WHERE manufacturer='Zozo' OR manufacturer='Toto' OR manufacturer='Zero';
-- -- Limiter le résultat
-- SELECT * FROM telephones LIMIT 5;
-- -- page 1 : 1 - 5
-- -- page 2 : 6 - 10
-- -- OFFSET : Définir le nombres de lignes à sauter
-- SELECT * FROM telephones OFFSET 5 LIMIT 5;
--Lister les 3 telephones qui ont réalisé le meilleur chiffre d'affaire
--SELECT name,manufacturer, (price*units_sold) AS ca FROM telephones
	--ORDER BY (price*units_sold) DESC, name ASC, manufacturer ASC
	--LIMIT 3;
-- Somme des telephones vendus
--SELECT SUM(units_sold) AS total_ventes FROM telephones;

-- Moyenne des ventes
--SELECT AVG(units_sold) AS total_ventes FROM telephones;

-- Vente la plus elevée
--SELECT MAX(units_sold) AS total_ventes FROM telephones;

-- Vente la moins elevée
--SELECT MIN(units_sold) AS total_ventes FROM telephones;



-- Le total des ventes par marque
--SELECT fabricant, SUM(prix* quantite_vendue) AS ca
    --FROM telephones
	 --GROUP BY fabricant
	--HAVING SUM (prix* quantite_vendue)>20000000
    --ORDER BY ca DESC;
	
-- Création de 2 tables avec une association one to many
--CREATE TABLE IF NOT EXISTS users(
 --id SERIAL PRIMARY KEY,
   --username VARCHAR(30) NOT NULL UNIQUE,
   --email VARCHAR(50) NOT NULL UNIQUE
--);

--CREATE TABLE IF NOT EXISTS posts(
  --id SERIAL PRIMARY KEY,
    --title VARCHAR(100) NOT NULL,
    --content TEXT NOT NULL,
    --user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE
--);
-- Insertion des utilisateurs
--insert into users (username, email) values ('jtrewin0', 'cbillows0@chronoengine.com');
--insert into users (username, email) values ('chubber1', 'stoseland1@google.ru');
--insert into users (username, email) values ('bbenwell2', 'rgerardot2@archive.org');
--insert into users (username, email) values ('jworral3', 'bshelborne3@php.net');
--insert into users (username, email) values ('mwaterhouse4', 'kvahl4@nasa.gov');
	
--SELECT * FROM users;




-- insertion des posts
--insert into posts (title, content, user_id) values ('Free Money', 'Object-based context-sensitive synergy', 3);
--insert into posts (title, content, user_id) values ('Saddest Music in the World, The', 'Innovative disintermediate contingency', 1);
--insert into posts (title, content, user_id) values ('Rent-A-Cop', 'Synergistic logistical Graphical User Interface', 5);
--insert into posts (title, content, user_id) values ('Brutal Beauty: Tales of the Rose City Rollers', 'Synergized executive definition', 5);
--insert into posts (title, content, user_id) values ('Ilsa, She Wolf of the SS', 'Face to face national superstructure', 3);
--insert into posts (title, content, user_id) values ('Kiss Before Dying, A', 'Cross-group client-driven database', 4);
--insert into posts (title, content, user_id) values ('Rage at Dawn', 'Profound exuding capacity', 3);
--insert into posts (title, content, user_id) values ('Lodger: A Story of the London Fog, The', 'Pre-emptive bi-directional productivity', 1);
--insert into posts (title, content, user_id) values ('Unexpected', 'Automated grid-enabled middleware', 4);
--insert into posts (title, content, user_id) values ('Gen 13 (a.k.a. Gen13: The Animated Movie)', 'Fundamental background support', 4);
--insert into posts (title, content, user_id) values ('Danube Exodus, The', 'Intuitive bifurcated protocol', 3);
--insert into posts (title, content, user_id) values ('Better Things', 'Sharable coherent encoding', 5);
--insert into posts (title, content, user_id) values ('Draughtsman''s Contract, The', 'De-engineered real-time benchmark', 1);
--insert into posts (title, content, user_id) values ('Arthur Newman', 'Expanded even-keeled archive', 4);
--insert into posts (title, content, user_id) values ('Diggers', 'Diverse tertiary synergy', 3);
--insert into posts (title, content, user_id) values ('Jet Pilot', 'Multi-channelled contextually-based service-desk', 1);
--insert into posts (title, content, user_id) values ('Space', 'Ameliorated even-keeled system engine', 3);
--insert into posts (title, content, user_id) values ('City on Fire (Lung fu fong wan)', 'Digitized web-enabled hub', 3);
--insert into posts (title, content, user_id) values ('Jacknife', 'Secured exuding portal', 5);
--insert into posts (title, content, user_id) values ('Dark Passage', 'Distributed 4th generation alliance', 2);
--insert into posts (title, content, user_id) values ('Shrimp on the Barbie, The', 'Ergonomic well-modulated moderator', 1);
--insert into posts (title, content, user_id) values ('Alligator Eyes', 'Secured local capacity', 4);
--insert into posts (title, content, user_id) values ('Injury to One, An', 'Versatile optimal frame', 1);
--insert into posts (title, content, user_id) values ('Charlie Chan in Paris', 'Profound asymmetric analyzer', 5);
--insert into posts (title, content, user_id) values ('Game Change', 'Profound 24 hour artificial intelligence', 5);
--insert into posts (title, content, user_id) values ('Brainstorm', 'Integrated executive Graphic Interface', 3);
--insert into posts (title, content, user_id) values ('World of Suzie Wong, The', 'Optional cohesive matrices', 5);
--insert into posts (title, content, user_id) values ('Ganes', 'Stand-alone encompassing groupware', 3);
--insert into posts (title, content, user_id) values ('Escape from Dartmoor', 'Assimilated holistic leverage', 1);
--insert into posts (title, content, user_id) values ('Carry on Cabby', 'Decentralized even-keeled installation', 2);

-- Liste tous les posts de tous les utilisateur
SELECT username,title,content FROM users JOIN posts ON users.id=posts.user_id;

-- Liste tous les posts d'un seul utilisateur(id=1)
SELECT username,title,content FROM users JOIN posts ON users.id=posts.user_id WHERE users.id=1;
