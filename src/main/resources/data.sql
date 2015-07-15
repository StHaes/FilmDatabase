INSERT INTO film_character (name) VALUES ('Legolas');
INSERT INTO film_character (name) VALUES ('Gandalf');
INSERT INTO film_character (name) VALUES ('The Joker');

INSERT INTO film (director,genre, length, title, summary, trailer) VALUES ('Peter Jackson','FANTASY', '174', 'The Fellowship of the Ring','A few dudes are looking to get rid of a ring, the thing keeps following them.', 'https://www.youtube.com/embed/Pki6jbSbXIY');
INSERT INTO film (director,genre, length, title, summary, trailer) VALUES ('David Ayer','ACTION', '201', 'Suicide Squad','Bad guys from DC universe work together to save the world', 'https://www.youtube.com/embed/WI3hecGO_04');

INSERT INTO actor (first_name, gender, last_name,film_character_id,film_id) VALUES ('Orlando', 'M', 'Bloom','1','1');
INSERT INTO actor (first_name, gender, last_name,film_character_id,film_id) VALUES ('Ian', 'M', 'Mckellen','2','1');
INSERT INTO actor (first_name, gender, last_name,film_character_id,film_id) VALUES ('Jared', 'M', 'Leto','3','2');




