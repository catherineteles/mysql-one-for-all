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

INSERT INTO SpotifyClone.plans (plan_id, plan_name, )
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');

INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');