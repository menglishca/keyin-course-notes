---
title: 2. HTTP Methods and CRUD Operations
---

## Overview of HTTP Methods
- HTTP (Hypertext Transfer Protocol) methods are used to define the action the server should take on a resource.
- Common HTTP methods and their purposes:
  - GET: Retrieve data from the server.
  - POST: Send new data to the server.
  - PUT: Update existing data on the server.
  - DELETE: Remove data from the server.

## Mapping HTTP Methods to SQL Queries
- Given that each of the four HTTP methods outlined above represents a different operation, they also require a differnt SQL query
- **GET**
  - Uses a `SELECT` query to retrieve data from a SQL database
  - Example: Fetching a list of users or getting specific user data by ID.
  - **Code Example**:
    ```javascript
    app.get('/users/:id', async (req, res) => {
      const { id } = req.params;
      const result = await pool.query('SELECT * FROM users WHERE id = $1', [id]);
      res.json(result.rows[0]);
    });
    ```

- **POST**
  - Uses an `INSERT` query to add new data to the database.
  - Example: Adding a new user to the database.
  - **Code Example**:
    ```javascript
    app.post('/users', async (req, res) => {
      const { name, email } = req.body;
      const result = await pool.query('INSERT INTO users (name, email) VALUES ($1, $2) RETURNING *', [name, email]);
      res.json(result.rows[0]);
    });
    ```

- **PUT**
  - Uses an `UPDATE` query to modify existing data in the database.
  - Example: Updating a user’s information.
  - **Code Example**:
    ```javascript
    app.put('/users/:id', async (req, res) => {
      const { id } = req.params;
      const { name, email } = req.body;
      const result = await pool.query('UPDATE users SET name = $1, email = $2 WHERE id = $3 RETURNING *', [name, email, id]);
      res.json(result.rows[0]);
    });
    ```

- **DELETE**
  - Uses a `DELETE` query to remove data from the database.
  - Example: Deleting a user by ID.
  - **Code Example**:
    ```javascript
    app.delete('/users/:id', async (req, res) => {
      const { id } = req.params;
      await pool.query('DELETE FROM users WHERE id = $1', [id]);
      res.sendStatus(204); // No content
    });
    ```