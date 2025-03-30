CREATE DATABASE IF NOT EXISTS my_database;
USE my_database;

CREATE TABLE IF NOT EXISTS players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    matches INT NOT NULL,
    goals INT NOT NULL,
    assists INT NOT NULL
);

INSERT INTO players (name, matches, goals, assists) VALUES
('Mohamed Salah', 30, 20, 10),
('Virgil van Dijk', 28, 3, 2),
('Trent Alexander-Arnold', 27, 2, 12),
('Alisson Becker', 30, 0, 1),
('Darwin Núñez', 25, 15, 5),
('Luis Díaz', 26, 10, 7),
('Jordan Henderson', 20, 1, 8),
('Fabinho', 24, 2, 4),
('Diogo Jota', 22, 12, 6),
('Andrew Robertson', 28, 1, 10);