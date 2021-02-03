CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  thumbnail_photo_url VARCHAR(100) NOT NULL,
  cover_photo_url VARCHAR(100) NOT NULL,
  cost_per_night INTEGER NOT NULL,
  parking_spaces INTEGER NOT NULL,
  number_of_bathrooms INTEGER NOT NULL,
  number_of_bedrooms INTEGER NOT NULL,
  country VARCHAR(100) NOT NULL,
  street VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  province VARCHAR(100) NOT NULL,
  postal_code VARCHAR(100) NOT NULL,
  active BOOLEAN NOT NULL
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE property_reviews (
  id SERIAL,
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE,
  reservations_id INTEGER NOT NULL REFERENCES reservations(id) ON DELETE CASCADE,
  rating SMALLINT NOT NULL,
  message TEXT NOT NULL
);