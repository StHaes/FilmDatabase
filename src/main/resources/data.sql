INSERT INTO film_character (name) VALUES ('Legolas');
INSERT INTO film_character (name) VALUES ('Gandalf');
INSERT INTO film_character (name) VALUES ('The Joker');
INSERT INTO film_character (name) VALUES ('Harley Quinn');

INSERT INTO film (director,genre, length, title, summary, trailer) VALUES ('Peter Jackson','FANTASY', '174', 'The Fellowship of the Ring','A few dudes are looking to get rid of a ring, the thing keeps following them.', 'https://www.youtube.com/embed/Pki6jbSbXIY');
INSERT INTO film (director,genre, length, title, summary, trailer) VALUES ('David Ayer','ACTION', '201', 'Suicide Squad','Bad guys from DC universe work together to save the world', 'https://www.youtube.com/embed/WI3hecGO_04');

INSERT INTO actor (first_name, gender, last_name,film_character_id,film_id,img,bio) VALUES ('Orlando', 'M', 'Bloom','1','1','http://ia.media-imdb.com/images/M/MV5BMjE1MDkxMjQ3NV5BMl5BanBnXkFtZTcwMzQ3Mjc4MQ@@._V1_UY317_CR8,0,214,317_AL_.jpg','Famous for his role in lord of the rings and pirates of the carribean.');
INSERT INTO actor (first_name, gender, last_name,film_character_id,film_id,img,bio) VALUES ('Ian', 'M', 'Mckellen','2','1','http://ia.media-imdb.com/images/M/MV5BMTQ2MjgyNjk3MV5BMl5BanBnXkFtZTcwNTA3NTY5Mg@@._V1_UY317_CR10,0,214,317_AL_.jpg','You shall not pass!');
INSERT INTO actor (first_name, gender, last_name,film_character_id,film_id,img,bio) VALUES ('Jared', 'M', 'Leto','3','2','http://ia.media-imdb.com/images/M/MV5BMTczMjUwNDUzMF5BMl5BanBnXkFtZTgwNDA4OTAzMTE@._V1_UX214_CR0,0,214,317_AL_.jpg','Looks a bit like Jesus no?');
INSERT INTO actor (first_name, gender, last_name,film_character_id,film_id,img,bio) VALUES ('Margot', 'F', 'Robbie','4','2','http://ia.media-imdb.com/images/M/MV5BMTgxNDcwMzU2Nl5BMl5BanBnXkFtZTcwNDc4NzkzOQ@@._V1_UY317_CR12,0,214,317_AL_.jpg','Used to star in Neighbours, now in Suicide Squad');




