DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(255) NOT NULL,
    plan_value DECIMAL(5,2) NOT NULL)
    ENGINE=InnoDB;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    plan_id INTEGER,
    date_started DATE,
    FOREIGN KEY (plan_id) REFERENCES plans (plan_id))
    ENGINE=InnoDB;

CREATE TABLE artists(
    artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL) 
    ENGINE=InnoDB;

CREATE TABLE following(
    user_id INTEGER,
    artist_id INTEGER,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
	  FOREIGN KEY (user_id) REFERENCES users (id),
	  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) ENGINE=InnoDB;

CREATE TABLE albums(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    artist_id INTEGER,
    album_year YEAR,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) ENGINE=InnoDB;

CREATE TABLE songs(
    song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(255) NOT NULL,
    album_id INTEGER,
    song_duration INTEGER,
    FOREIGN KEY (album_id) REFERENCES albums (album_id)
) ENGINE=InnoDB;

CREATE TABLE history(
    user_id INTEGER,
    song_id INTEGER,
    song_date DATE,
    CONSTRAINT PRIMARY KEY(user_id, song_id),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (song_id) REFERENCES songs (song_id)
) ENGINE=InnoDB;

INSERT INTO plans (plan_name, plan_value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99),
  ('pessoal', 6.99);
  
INSERT INTO users (name, age, plan_id, date_started)
VALUES
  ('Thati', 23, 1, '2019-10-20'),
  ('Cintia', 35, 2, '2017-12-30'),
  ('Bill', 20, 3, '2019-06-05'),
  ('Roger', 45, 4, '2020-05-13'),
  ('Norman', 58, 4, '2017-02-17'),
  ('Patrick', 33, 2, '2017-01-06'),
  ('Vivian', 26, 3, '2018-01-05'),
  ('Carol', 19, 3, '2018-02-14'),
  ('Angelina', 42, 2, '2018-04-29'),
  ('Paul', 46, 2, '2017-01-17')
  ;

INSERT INTO artists (artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog')
  ;