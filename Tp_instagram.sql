
-- correction 


CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	username VARCHAR(30) NOT NULL,
	bio VARCHAR(400),
	avatar VARCHAR(200),
	phone VARCHAR(25),
	email VARCHAR(40),
	password VARCHAR(50),
	status VARCHAR(15),
	CHECK(COALESCE(phone, email) IS NOT NULL)
);

CREATE TABLE IF NOT EXISTS posts (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	url VARCHAR(200) NOT NULL,
	caption VARCHAR(240),
	lat REAL CHECK(lat IS NULL OR (lat >= -90 AND lat <= 90)), 
	lng REAL CHECK(lng IS NULL OR (lng >= -180 AND lng <= 180)),
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS comments (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	contents VARCHAR(240) NOT NULL,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS likes (
	id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER REFERENCES posts(id) ON DELETE CASCADE,
	comment_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
	CHECK(
		COALESCE((post_id)::BOOLEAN::INTEGER, 0)
		+
		COALESCE((comment_id)::BOOLEAN::INTEGER, 0)
		= 1
	),
	UNIQUE(user_id, post_id, comment_id)
);
16 h 53

-- 4. Pour tous les commentaires, montrer le contenu 
--     et le username de l'auteur

SELECT username,contents FROM users 
    JOIN comments ON users.id=comments.user_id;

-- 5. Pour chaque commentaire, afficher son contenu 
--   et l'url de la photo à laquel le commentaire a été ajouté

SELECT contents,url 
    FROM posts JOIN comments
        ON posts.id=comments.post_id;

-- 6. Afficher l'url de chaque photo et le nom d'utilisateur de l'auteur
SELECT url, username
    FROM users JOIN posts
        ON users.id=posts.user_id;


-- 7.Trouver tous les commentaires pour la photo d'id 3, 
--     avec le username de l'utilisateur qui a commenté
-- Ici vous pouvez tester d'autres id
SELECT contents,posts.id,username
    FROM users 
        JOIN comments
            ON users.id=comments.user_id
        JOIN posts ON posts.id=comments.post_id
    WHERE posts.id=3;
     

-- 8.Trouver tous les url des photos ainsi que tous les commentaire qui ont 
--       été posté par l'auteur de la photo

SELECT url,contents
    FROM users 
        JOIN comments
            ON users.id=comments.user_id
        JOIN posts ON posts.id=comments.post_id
    WHERE comments.user_id=posts.user_id;

-- 9. A l'exercice précedent afficher aussi le nom de l'utilisateur 
--  qui a commenté ses propres photos

SELECT url,contents, username
    FROM users 
        JOIN comments
            ON users.id=comments.user_id
        JOIN posts ON posts.id=comments.post_id
    WHERE comments.user_id=posts.user_id;
     

-- 10. Nombre des likes pour la photo d'id 4
-- Vous pouvez tester avec d'autres id
SELECT COUNT(*)FROM likes
    WHERE post_id=8;
	
	
	
--travail individuel	
	
CREATE TABLE IF NOT EXISTS users(
id SERIAL PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
username VARCHAR(50)NOT NULL UNIQUE,
email VARCHAR(100)  UNIQUE,
telephone VARCHAR(50),
mot_de_passe VARCHAR(50) NOT NULL,
avatar VARCHAR(300),
bio VARCHAR(200),
date_creation  DATE default CURRENT_TIMESTAMP,
date_modif	
	
CHECK (COALESCE(email,telephone) IS NOT NULL)
);

CREATE TABLE IF NOT EXISTS photo(
    id SERIAL PRIMARY KEY,
   url VARCHAR(300),
   legende VARCHAR(100),
   latitude DECIMAL CHECK(latitude IS NULL OR (latitude >=90 AND latitude<=90),
   longitude DECIMAL CHECK(longitude IS NULL OR (longitude >=90 AND longitude<=90),
   users_id INT NOT NULL REFERENCES users(id)ON DELETE CASCADE
   date_creation  DATE default CURRENT_TIMESTAMP
);



CREATE TABLE IF NOT EXISTS commentaire(
    id SERIAL PRIMARY KEY,
    contenu VARCHAR(200) NOT NULL,
    photo_id INT NOT NULL REFERENCES photo(id)ON DELETE CASCADE,
    users_id INT NOT NULL REFERENCES users(id)ON DELETE CASCADE
	date_creation  DATE default CURRENT_TIMESTAMP
);
-- --SELECT * FROM commentaire;

CREATE TABLE IF NOT EXISTS likes(

    users_id INT NOT NULL REFERENCES users(id)ON DELETE CASCADE,
    photo_id INT  REFERENCES photo(id)ON DELETE CASCADE,
    comment_id INT REFERENCES commentaire(id) ON DELETE CASCADE,
	date_creation  DATE default CURRENT_TIMESTAMP
	

);

CREATE TABLE IF NOT EXISTS follows(
      users_id INT NOT NULL REFERENCES users(id)ON DELETE CASCADE UNIQUE
)






ALTER TABLE users DROP date_modif;


INSERT INTO users (nom,prenom,username,email,mot_de_passe)
VALUES('oumaima','jarraya','oumaj','oumaimajarraya10@gmail.com','123456');



SELECT * FROM users;





-- INSERT INTO photo(url,legende,latitude,users_id)
-- VALUES('www.123.com','new pic',(DECIMAL(10,5)),2);


SELECT * FROM photo;
