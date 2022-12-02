/*
clients
  first_name
  last_name
  email
  phone_number
*/
-- creation de table client
--CREATE TABLE IF NOT EXISTS clients(
  -- id SERIAL PRIMARY KEY,  /* c'est un cle primaire qui doit etre stable il ne peut pas etre modifier plustard */
   --first_name VARCHAR(50),
   --last_name  VARCHAR (50),
   --email VARCHAR (100),
   --phone_number VARCHAR(10) 
--);

--insertion des donnees
  --INSERT INTO clients(first_name, last_name, email, phone_number)
  -- VALUES('Oumaima','Jarraya', 'oumaimajarraya10@gmail.com','0613162093');
  
--lister les clients
  --SELECT * FROM clients;
  
  --INSERT INTO clients (first_name, last_name, email, phone_number)
   --VALUES ('Jackie','Chan','jackiechan@gmail.com','0124596357');
   
    --INSERT INTO clients (first_name, last_name, email, phone_number)
   --VALUES ('Oprah','Winfrey','oprawinfrey@gmail.com','0965874526');
   
   
    --SELECT * FROM clients;
	--DELETE FROM clients 
	--WHERE ID=5;
	
-- Limiter les colonnes à afficher
--SELECT first_name,last_name,email FROM clients;

--full_name              --email
--lisangola christiona   --christianlisangola@gmail.com

 --SELECT CONCAT(last_name,' ',first_name) AS full_name, email FROM clients;
--SELECT CONCAT('+33',phone_number) AS numero_telephone FROM clients;
--SELECT first_name AS prenom, last_name AS nom FROM clients;

--on peut ne pas inserer le nom et le prenom

--INSERT INTO clients ( email, phone_number)
  --VALUES ('zozor@gmail.com','0564864526');
  --INSERT INTO clients ( email, first_name)
  --VALUES ('zizou@yahoo.fr','Ronaldo de lima');
  
--ALTER TABLE clients ADD UNIQUE (email);  --contrainte d'unicite 
  --INSERT INTO clients ( email)
  --VALUES ('zizou@yahoo.fr');==> erreur
--ALTER TABLE clients ALTER COLUMN first_name SET NOT NULL; 


--supprimer une table
--DROP TABLE clients;

-- creation de table client en appliquant les contraintes
--CREATE TABLE IF NOT EXISTS clients(
  -- id SERIAL PRIMARY KEY,  /* c'est un cle primaire qui doit etre stable il ne peut pas etre modifier plustard */
   --first_name VARCHAR(50) NOT NULL,
   --last_name  VARCHAR (50) NOT NULL,
   --email VARCHAR (100)NOT NULL UNIQUE,
   --phone_number VARCHAR(10) UNIQUE 
--);

--INSERT INTO clients (email, phone_number,first_name,last_name)
   --VALUES('oumaimajarraya@gmail.com','0613162093','oumaima','jarraya');
   
   
--ajouter un champs postnom
--ALTER TABLE clients ADD postnom VARCHAR(50);


---renommer une colonne
--ALTER TABLE clients RENAME COLUMN postnom TO middle_name;

--ajouter une colonne age
--ALTER TABLE clients ADD age INT;
--INSERT INTO 
    --clients(last_name,first_name, email,phone_number,age)
    --values('Lisangola','Christian','christian@gmail.com','06767676',35),
    --('Christophe','Guéroult','christophe.gueroult@coderbase.io','07373737',50),
    --('Alexandre','Le Grand','alexandre.legrand@homtail.fr','08484849',55),
    --('Zinedine','Zidane','zizou@yahoo.fr','07283849',29),
    --('Thierry','Henry','titi@yahoo.com','03637372',33),
    --('Muhamed','Ali','muhamed.ko@yahoo.fr','09378738',17),
    --('Mike','Tyson','mike.knockout@hotmail.fr','048397338',20),
    --('Luiz Nazario De Lima','Ronaldo','nazario.ronaldo@gmail.com','09039873',89),
    --('Ricardo','Kaka','ricardo.kaka@gmail.com','02873877',26),
    --('Francesco','Totti','francesco.totti@yahoo.it','07466747',18),
    --('Juan Pablo','Aimar','pablo.aimar@gmail.com','0738747',15),
    --('Vierri','Christian','christian.vierri@yahoo.fr','04888848',25);

-- les operateus de comparaison: pareil que java, sauf le cas d'egalite
--ou sql utilise =
--lister tous les clients dont l'age>=25 en ordonnant le resultat dans l'ordre croissant de l'age
 --SELECT * FROM clients WHERE age >=25 ORDER BY age;
 
 --age entre 25 et 55
 
 --OR pour ou
 --AND pour ET
 --SELECT * FROM clients WHERE age >=25 AND age<=55 ORDER BY age;
 
 
 
   
   
   
   
   
   
   
   
   
   
   
   
   
	