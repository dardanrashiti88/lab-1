Liverpool FC Database Project

Overview

This project sets up a MySQL database for Liverpool FC, containing player statistics and Champions League records. The database is initialized using SQL scripts and can be integrated with a backend API for querying data.

Database Schema

Tables

Players Table

Column

Type

Constraints

Description

id

INT

PRIMARY KEY, AUTO_INCREMENT

Unique player ID

name

VARCHAR(100)

NOT NULL

Player name

position

VARCHAR(50)

NOT NULL

Player position

matches

INT

DEFAULT 0

Total matches played

goals

INT

DEFAULT 0

Goals scored

assists

INT

DEFAULT 0

Assists provided

Champions League Table

Column

Type

Constraints

Description

id

INT

PRIMARY KEY, AUTO_INCREMENT

Unique record ID

season

YEAR

NOT NULL

Champions League season

winner

VARCHAR(100)

NOT NULL

Winning team

mvp

VARCHAR(100)

NOT NULL

Most valuable player

top_scorer

VARCHAR(100)

NOT NULL

Player with most goals

goals

INT

DEFAULT 0

Goals scored by top scorer

SQL Scripts

init.sql

CREATE DATABASE IF NOT EXISTS liverpool_fc;
USE liverpool_fc;

01-create-table.sql

CREATE TABLE IF NOT EXISTS players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    matches INT DEFAULT 0,
    goals INT DEFAULT 0,
    assists INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS champions_league (
    id INT AUTO_INCREMENT PRIMARY KEY,
    season YEAR NOT NULL,
    winner VARCHAR(100) NOT NULL,
    mvp VARCHAR(100) NOT NULL,
    top_scorer VARCHAR(100) NOT NULL,
    goals INT DEFAULT 0
);

02-seed-data.sql

INSERT INTO players (name, position, matches, goals, assists) VALUES
('Mohamed Salah', 'Forward', 30, 19, 8),
('Virgil van Dijk', 'Defender', 28, 3, 1),
('Trent Alexander-Arnold', 'Defender', 27, 2, 10),
('Alisson Becker', 'Goalkeeper', 29, 0, 0),
('Diogo Jota', 'Forward', 25, 10, 4),
('Darwin Núñez', 'Forward', 26, 12, 6),
('Dominik Szoboszlai', 'Midfielder', 23, 5, 7),
('Andrew Robertson', 'Defender', 22, 1, 5),
('Curtis Jones', 'Midfielder', 24, 4, 4),
('Luis Díaz', 'Forward', 27, 8, 3);

INSERT INTO champions_league (season, winner, mvp, top_scorer, goals) VALUES
(2018, 'Liverpool FC', 'Virgil van Dijk', 'Mohamed Salah', 5),
(2019, 'Bayern Munich', 'Robert Lewandowski', 'Robert Lewandowski', 15),
(2020, 'Chelsea FC', 'N''Golo Kanté', 'Erling Haaland', 10);

Usage

Start the MySQL container and load the database.

Use the backend API or connect directly to MySQL to query data.

Modify the seed data as needed to reflect current statistics.
