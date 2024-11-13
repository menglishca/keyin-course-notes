---
title: 3. Request Data in Database Queries
---

## Accessing Request Data in Express
Express provides several ways to access incoming data:
  
- **URL Parameters**: Retrieved using `req.params`, commonly used for defining specific resources (e.g., `/user/:id` where `id` can be accessed via `req.params.id`).

- **Query Parameters**: Retrieved using `req.query`, typically used for filtering or optional data (e.g., `/users?role=admin` where `role` is accessed via `req.query.role`).

- **Request Body**: Retrieved using `req.body`, often used for POST or PUT requests to create or update resources. This requires body-parsing middleware like `express.json()` to parse JSON data.

- **Examples of Accessing Request Data**
  ```javascript
  app.get('/users/:id', (req, res) => {
    const userId = req.params.id;      // URL parameter
    const role = req.query.role;       // Query parameter
    res.send(`User ID: ${userId}, Role: ${role}`);
  });

  app.post('/users', (req, res) => {
    const { name, email } = req.body;  // Body data
    res.send(`Name: ${name}, Email: ${email}`);
  });
  ```

## Validating Input
- **Importance of Input Validation**: Always validate user input to ensure it is in the expected format and falls within safe limits. This is especially important for query and URL paramete
  
- **Example of Basic Validation**
  ```javascript
  app.post('/users', (req, res) => {
    const { name, email } = req.body;
    if (!name || !email) {
      return res.status(400).send('Name and email are required');
    }
    // Proceed with query if valid
  });
  ```

## Using Parameterized Queries for Security
- **Parameterized Queries**: A method of passing values into a query that separates SQL logic from input data, making queries safer and helping prevent SQL injection.
- **Example with pg Library**:
  ```javascript
  const result = await pool.query('SELECT * FROM users WHERE id = $1', [userId]);
  ```
  - Here, `$1` acts as a placeholder for the `userId` parameter, which is securely bound to it.

## Constructing Queries with Request Data
Common use cases where request data is used in a query:
  - **Filtering Data**: Using query parameters to filter records, such as by user role, category, or search term.
  - **Inserting New Records**: Adding user-provided data to the database.
  - **Updating Records**: Modifying records based on data provided in the request body.
  
- **Example of Using Request Data in a Query**
  ```javascript
  app.post('/users', async (req, res) => {
    const { name, email } = req.body;
    try {
      const result = await pool.query(
        'INSERT INTO users (name, email) VALUES ($1, $2) RETURNING *',
        [name, email]
      );
      res.json(result.rows[0]);
    } catch (err) {
      res.status(500).send('Error inserting user');
    }
  });
  ```

## Best Practices for Using Request Data in Queries
- **Always Use Parameterized Queries**: Protects against SQL injection by treating input as data rather than SQL code.
- **Validate User Input**: Ensure it’s of the right type, length, and format before using it in a query.
- **Handle Errors Gracefully**: Use `try-catch` blocks to handle errors and provide meaningful feedback to the client.
