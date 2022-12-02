--CREATE TABLE IF NOT EXISTS eleve(
-- id SERIAL PRIMARY KEY,
-- first_name VARCHAR(50) NOT NULL,
-- last_name VARCHAR(50) NOT NULL,
-- date_of_birth DATE NOT NULL   
--);


--INSERT INTO eleve(first_name,last_name,date_of_birth)
--    VALUES
--        ('Christophe','Gueroult','1980-06-20'),
--        ('Thomas','Rust','1990-10-05'),
--        ('Marie','Bocage','1995-11-23'),
--        ('Jean','De La Fontaine','2000-08-17')
--SELECT * FROM eleve;

--SELECT ('23 April 1992'::Date)
--YYYY-MM--DD
--DD-MM-YYYY
--SELECT date_part('years',age('1992-04-23'::date))::int

--SELECT  
      -- SELECT CONCAT(first_name,' ',last_name) AS full_name,
	 -- date_part('years',age(date_of_birth::date))::int AS age
	 -- FROM eleve;
	  
	  
	  
/* 1.Trouver le grand age des eleves
   2.Trouver les 3 eleves les plus jeunes
   3.Trouver les eleves dont l'age se situe entre 20 et 35 ans
*/

--1
--SELECT 
     --CONCAT(first_name,' ',last_name) AS full_name,
	  --(date_part('years',age(date_of_birth::date))::int) AS age
	  --FROM eleve
	  --ORDER BY age DESC LIMIT 1;
	  


--2
--SELECT 
--      first_name , date_part('years',age(date_of_birth::date))::int 
--	  FROM eleve
	--  ORDER BY (date_part('years',age(date_of_birth::date))::int) ASC LIMIT 3
   
--3	

--SELECT 
  --    first_name , date_part('years',age(date_of_birth::date))::int 
    --FROM eleve
	 --WHERE (date_part('years',age(date_of_birth::date))::int) BETWEEN 20 AND 35 
	  --
--les sous-requetes

--SELECT full_name, age FROM 
  --    ( SELECT CONCAT(first_name,' ',last_name) AS full_name,
	--  date_part('years',age(date_of_birth::date))::int AS age
	  --FROM eleve) AS age_eleves
	  --WHERE age BETWEEN 20 AND 35;
-- ==> resultat temporaire	  
	  

/* 1.Trouver le grand age des eleves
   2.Trouver les 3 eleves les plus jeunes
   3.Trouver les eleves dont l'age se situe entre 20 et 35 ans
*/

--creer une vue

--CREATE VIEW ages_eleves AS 
  -- SELECT CONCAT(first_name,' ',last_name) AS full_name,
	--  date_part('years',age(date_of_birth::date))::int AS age
	  --FROM eleve;

--SELECT * FROM ages_eleves;

--SELECT * FROM age_eleves WHERE age BETWEEN 20 AND 35;


--LECT (COALESCE(null,1) IS NOT NULL)


 --CREATE TABLE IF NOT EXISTS users(
 --id SERIAL PRIMARY KEY,
 --name VARCHAR(50) NOT NULL,
 --email VARCHAR(50),
 --telephone VARCHAR(50),
 --CHECK(COALESCE(email,telephone) IS NOT NULL)
--)

-- INSERT INTO users(name,telephone)
 --VALUES('Christophe Gueroult','+33657474747');


