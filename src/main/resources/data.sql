INSERT INTO films.film (director,genre, length, title, summary, trailer_link) VALUES ('Peter Jackson','FANTASY', '174', 'The Fellowship of the Ring','A few dudes are looking to get rid of a ring, the thing keeps following them.', 'https://www.youtube.com/watch?v=Pki6jbSbXIY');
INSERT INTO films.film (director,genre, length, title, summary, trailer_link) VALUES ('Peter Jackson','FANTASY', '179', 'The Two Towers','They still have the damn ring, now a war is about to break loose between 2 towers.', 'https://www.youtube.com/watch?v=f7VjBeSwur0');

INSERT INTO films.actor (first_name, gender, last_name) VALUES ('Orlando', 'M', 'Bloom');
INSERT INTO films.actor (first_name, gender, last_name) VALUES ('Ian', 'M', 'Mckellen');

INSERT INTO films.film_character (name, actor_id) VALUES ('Legolas', '1');
INSERT INTO films.film_character (name, actor_id) VALUES ('Gandalf', '2');


