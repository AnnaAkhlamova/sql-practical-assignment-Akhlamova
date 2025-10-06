DROP DATABASE IF EXISTS hw1;
CREATE DATABASE hw1;
USE hw1;

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(50),
    duration DECIMAL(3,2), 
    rated VARCHAR(10)
);
CREATE TABLE cinema_hall (
    hall_id INT PRIMARY KEY,
    hall_name VARCHAR(50),
    seats INT
);

CREATE TABLE workers (
    worker_id INT PRIMARY KEY,
    hall_id INT,
    name VARCHAR(30),
    role VARCHAR(30),
    FOREIGN KEY (hall_id) REFERENCES cinema_hall(hall_id)
);

CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(30),
    email VARCHAR(50)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    client_id INT,
    movie_id INT,
    hall_id INT,
    price_dollars DECIMAL(5,2),
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (hall_id) REFERENCES cinema_hall(hall_id)
);
