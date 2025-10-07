# Practical assignment 1

## Database Schema

This database models a cinema ticketing system. It consists of five main tables:

1. **movies**
   - `movie_id`: Unique identifier for each movie.
   - `movie_name`: Name of the movie.
   - `duration`: Movie duration in hours.
   - `rated`: Movie rating like G, PG-13, NC-17.

2. **cinema_hall**
   - `hall_id`: Unique identifier for each cinema hall.
   - `hall_name`: Name of the hall.
   - `seats`: Number of seats in the hall.

3. **workers**
   - `worker_id`: Unique identifier for each worker.
   - `hall_id`: Hall where the worker is assigned.
   - `name`: Worker's name.
   - `role`: Worker's role.

4. **clients**
   - `client_id`: Unique identifier for each client.
   - `name`: Client's name.
   - `email`: Client's email address.

5. **tickets**
   - `ticket_id`: Unique identifier for each ticket.
   - `client_id`: Client who purchased the ticket.
   - `movie_id` : Movie for which the ticket is issued.
   - `hall_id`: Cinema hall where the movie is shown.
   - `price_dollars`: Price paid for the ticket.

## Query Logic

The main query performs the following steps:

1. **CTE (`movies_sales`)**  
   - Computes **total revenue**  and **total tickets sold**  for each movie.

2. **Main SELECT (Part 1)**  
   - Joins **5 tables**: movies, movies_sales, tickets, clients, cinema_hall, workers.
   - Filters movies with more than 1 ticket sold.
   - Groups results by `movie_name`, `hall_name`, `worker_name`, `client_email`.
   - Selects movies with significant revenue.
   - Orders results by revenue descending and limits to 5 rows.

3. **UNION ALL**  
   - Selects clients who **have not purchased any tickets**.
   - Fills movie/hall/worker/revenue columns with `NULL` to match the main query structure.
   - Uses a **subquery**


This query satisfies the homework requirements and also includes the **bonus points** for using `UNION ALL` and passing to github.

