CREATE TABLE IF NOT EXISTS clients(
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address TEXT NOT NULL,
    zip_code VARCHAR(30) NOT NULL,
    country VARCHAR(100) NOT NULL,
    state INTEGER CHECK(state>=0 AND state<=1) --(0, 1) (ACTIVE, INACTIVE)
);


--ALTER SEQUENCE clients_id_seq RESTART WITH 1;
--INSERT INTO clients(company_name,first_name,last_name,email,address,zip_code,country,state)
--    VALUES
--        ('Sopra','Chris','Lis','chris@sopra.com','Paris','abc','France',1),
--        ('Atos','Sarah','Conor','s.conor@atos.fr','Lille','xyz','France',1);

--SELECT * FROM clients;
--CREATE TABLE IF NOT EXISTS orders(
--    id SERIAL PRIMARY KEY,
--    type_presta VARCHAR(100) NOT NULL,
--    designation VARCHAR(100) NOT NULL,
--    client_id INTEGER REFERENCES clients(id) ON DELETE SET NULL,
--    nb_days INTEGER NOT NULL CHECK(nb_days>0),
--    unit_price NUMERIC NOT NULL CHECK(unit_price>0),
--    total_exclude_taxe NUMERIC NOT NULL,
--    total_with_taxe NUMERIC NOT NULL,
--    state INTEGER CHECK(state>=0 AND state<=2)--  (0,1,2) (CANCELED, OPTION, CONFIRMED)
--);
--INSERT INTO orders(type_presta,designation,client_id,nb_days,unit_price,total_exclude_taxe,total_with_taxe,state)
--    VALUES
--        ('Formation','Formation React',1,4,250,1000,1200,1),
--        ('Coaching','Coaching Techlead Java',2,15,250,3750,4500,1);
--SELECT * FROM orders;		