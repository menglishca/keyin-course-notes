---
title: 3. Connecting a backend and a database
---

## Connectng to a database
- Once we've decided upon on our database, how do we actually use it from our backend?
- _Fundametally_ we connect to the database the same way we did when we were using `pgAdmin`
    - We give an IP address and a port of the database we want to connect to
    - If the database is live, we'll need login credentials to validate that we should have access
- Now we'll do that same process, but from our code instead of from a GUI
- Thankfully, `npm` has some packages that can help make our lives a little easier

## `pg` for `PostgreSQL`
### What is `pg`?
- `pg` is a popular npm package which provides a client that can be used to interact with PostgreSQL databases through node.js
- Allows you to:
    - Connect to a PostgreSQL database
    - Run SQL queries
    - Manage resules
- All from a node.js app
- Note: There are likely other clients out there that can handle interacting with a PostgreSQL database from a node.js app. We'll just be focusing on `pg` for this course

### Core features of `pg`
- Supports both single, and **pooled** connections to handle multiple queries efficiently
    - What are **pooled connections**?
        - A backend used in production for a large website is likely to have a lot of requests coming in it at once
        - Those requests might all require fetching some data from a database
        - Traditionally, we would open a new connection to the database every time we get a new request
        - **Pooled connections** will keep `x` amount of connections around and then reuse those connections as more requests come in
        - This avoids the unnecessary overhead of creating new connections to the database each time a request comes in
- Allows you to execute raw SQL queries against your database
    - This gives you full access to the database to functionally do whatever you want
- Allows results from a database query to be streamed back to the backend
  - The idea here, is that some queries are going to return a lot of results
  - Instead of trying to load all of that data at one time, we can use streaming to load it in pieces
  - This reduces the overall load on the server as we only load the specific piece of data we send to the client, once that's sent we can load new data
- Has support for executing database operations as a **transaction**
  - A **transaction** is a way of combining a sequence of database operations into one single unit
  - The idea behind a transaction is that, sometimes, to do one thing we need to complete multiple database operations and if any of those operations fail the entire transaction fails
  - It's a way of grouping transactions together to basically say, do all of these as long as they're all successful, otherwise don't do any of them

### Example of using `pg` to connect to a database:
```javascript
const { Pool } = require('pg');

const connectionPool = new Pool({
  user: 'your_db_user',
  host: 'localhost',
  database: 'your_db_name',
  password: 'your_db_password',
  port: 5432, // Default PostgreSQL port
});

connectionPool.query('SELECT * FROM users', (error, results) => {
  if (error) {
    console.error('Error executing query', error.stack);
  }
  else {
    console.log('Query results:', results.rows);
  }
  connectionPool.end(); // Shutdown the entire connection pool as our program is finished with the database
});
```