CREATE TABLE trucks (
  id SERIAL PRIMARY KEY,
  name TEXT,
  current_location GEOGRAPHY(Point, 4326),
  status TEXT DEFAULT 'idle',
  last_updated TIMESTAMP
);

CREATE TABLE jobs (
  id SERIAL PRIMARY KEY,
  district_id INT,
  lat FLOAT,
  lon FLOAT,
  workshop_id INT,
  scheduled_time TIMESTAMP,
  assigned BOOLEAN DEFAULT FALSE
);

CREATE TABLE driver_locations (
  id SERIAL PRIMARY KEY,
  driver_id TEXT NOT NULL,
  truck_id TEXT,
  lat FLOAT NOT NULL,
  lon FLOAT NOT NULL,
  timestamp TIMESTAMP DEFAULT NOW()
);