INSERT INTO movies VALUES
(1, "Now You See Me: Now You Don't", 2.0, "PG-13"),
(2, "Kakhovka facility", 1.39, "NC-17"),
(3, 'Avatar: The Way of Water', 3.17, "PG-13"),
(4, "Pets on a train", 1.26, "G");

INSERT INTO cinema_hall VALUES
(1, "Dragon", 44),
(2, "Feofania", 20),
(3, "Golf", 80),
(4, "KSE", 100);

INSERT INTO workers VALUES
(1, 1, "Amanda", "manager"),
(2, 3, "Allister", "ticket seller"),
(3, 2, "Allen", "snack seller"),
(4, 4, "Mariann", "assistant");

INSERT INTO clients VALUES
(1, 'Nietzsche', 'nietzsche@email.com'),
(2, 'Platon', 'platon@gmail.com'),
(3, 'Schopenhauer', 'schopenhauer@gmail.com'),
(4, 'Aristotel', 'aristotel@gmail.com'),
(5, 'Bacon', 'bacon@gmail.com');

INSERT INTO tickets VALUES
(1,2,4,3, 3.15),
(2,1,3,2, 4.3),
(3,3,1,1, 5.0),
(4,4,3,2, 4.3),
(5,5,1,1, 5.0);


SELECT * FROM clients;
SELECT * FROM movies;
