insert into brand(id, name) values(1, 'Audi');
insert into brand(id, name) values(2, 'BMW');
insert into brand(id, name) values(3, 'Opel');

insert into model(id, name, brand_id) values(1, 'A1', 1);
insert into model(id, name, brand_id) values(2, 'A3', 1);
insert into model(id, name, brand_id) values(3, '118d', 2);
insert into model(id, name, brand_id) values(4, '320d', 2);
insert into model(id, name, brand_id) values(5, 'X5', 2);
insert into model(id, name, brand_id) values(6, 'Corsa', 3);
insert into model(id, name, brand_id) values(7, 'Astra', 3);
insert into model(id, name, brand_id) values(8, 'Vectra', 3);

insert into car(license_plate, model_id) values('1-AGI-764', 1);
insert into car(license_plate, model_id) values('ALD-124', 8);
insert into car(license_plate, model_id) values('1-LIFE', 5);