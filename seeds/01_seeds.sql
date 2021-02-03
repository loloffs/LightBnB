-- users table
INSERT INTO users (name, email, password)
VALUES ('Luke Oloffs', 'lukeoloffs@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO users (name, email, password)
VALUES ('James Bond', 'shakennotstirred007@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO users (name, email, password)
VALUES ('Tom Brady', 'tb12@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


-- properties table
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, postal_code)
VALUES (1, 'Downtown Penthouse', 'Beautiful penthouse located steps away from Coal Harbour.', 'pictureofpenthouse.ca', 'coverphotopenthouse.ca', 300, 2, 3, 4, 'Canada', 'Thurlow Street', 'Vancouver', 'BC', 'V3J3F8');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, postal_code)
VALUES (2, 'Cottage in the woods', 'Cosy, private cottage in the forrest.', 'pictureofcottage.ca', 'coverphotocottage.ca', 180, 5, 2, 4, 'England', 'Country Road', 'Keswick', 'Lake District', '9823387');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, postal_code)
VALUES (3, 'Beachfront Villa', 'Mansion located right next to the beach and just minutes from the city.', 'pictureofbeachhouse.ca', 'coverphotobeachhouse.ca', 600, 5, 5, 8, 'USA', 'Affluent Ave.', 'Tampa', 'Florida', '9864257');


-- reservations table
INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2020-06-12', '2020-06-28', 1, 3);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-03-1', '2021-03-11', 3, 2);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2021-08-15', '2020-08-30', 2, 1);


-- property reviews table
INSERT INTO property_reviews (guest_id, property_id, reservations_id, rating, message)
VALUES (3, 1, 1, 10, 'LETS GO!');

INSERT INTO property_reviews (guest_id, property_id, reservations_id, rating, message)
VALUES (2, 3, 2, 5, 'It was ok.');

INSERT INTO property_reviews (guest_id, property_id, reservations_id, rating, message)
VALUES (1, 2, 3, 8, 'Nice place but a little cold!');



-- could've inserted date more easily like this: 

-- INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
-- VALUES (1, 1, '2018-09-11', '2018-09-26'),
-- (2, 2, '2019-01-04', '2019-02-01'),
-- (3, 3, '2021-10-01', '2021-10-14');