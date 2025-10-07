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

## Theoretical Questions

### What is the difference between JOIN and UNION?
- **JOIN** combines columns from two or more tables **horizontally** (side by side) based on related keys.  
- **UNION** combines results from two queries **vertically** (one below another) with the same columns.


### Explain the difference between SUBQUERY and CTE.
- A **SUBQUERY** is a query inside another query.  
- A **CTE** (Common Table Expression) is a named temporary result set defined with `WITH`.

###  What is CROSS JOIN?
- A **CROSS JOIN** returns  every row from the first table combined with every row from the second.
<img width="229" height="115" alt="image" src="https://github.com/user-attachments/assets/69685cf5-823d-4586-87bc-77bd5b703765" />

### Explain the purpose of the GROUP BY clause.
- **GROUP BY** groups rows with the same values in one or more columns.

### What is the difference between HAVING and WHERE?
- **WHERE** filters rows **before** grouping.  
- **HAVING** filters groups **after** aggregation.

### What does a CTE (Common Table Expression) do?
- A **CTE** defines a temporary, named result set using `WITH` that can be referenced multiple times in the main query for clarity and reuse.

### What is the difference between INNER JOIN, LEFT JOIN, and RIGHT JOIN?
- **INNER JOIN** → returns only matching rows from both tables.  
- **LEFT JOIN** → returns all rows from the left table, plus matches from the right.  
- **RIGHT JOIN** → returns all rows from the right table, plus matches from the left.

### When should you use ORDER BY and what happens without it?
- Use **ORDER BY** to sort query results.  
- Without it, the order of rows is **not guaranteed**.

### How does LIMIT help improve query performance?
- **LIMIT** restricts the number of returned rows, reducing the amount of data processed and transferred — useful for large datasets.

### What is the difference between UNION ALL and UNION?
- **UNION** removes duplicate rows.  
- **UNION ALL** keeps all rows, including duplicates.


