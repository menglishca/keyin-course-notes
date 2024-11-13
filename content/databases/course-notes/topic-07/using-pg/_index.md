---
title: 1. Using pg
---

## What is `pg`?
- `pg` is a popular npm package which provides a client that can be used to interact with PostgreSQL databases through node.js
- Allows you to:
    - Connect to a PostgreSQL database
    - Run SQL queries
    - Manage results

## Example of using `pg` to connect to a database:
- Connecting to a database with `pg` is really simple
- Import the `pg` library, then use it to create a `Client` or connection `Pool`
- Pass the `Client` or `Pool` and object containing the required details to connect to your database and you're done!

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

## Client vs Connection Pool
- As previously mentioned, `pg` offers two main ways to connect to a database either via a `Client` or a `Pool`
- Both of these mechanisms allow you to connect to and interact with a database. However, their internals are different
- **Client**
  - Creates a single connection that is used throughout the entire app
  - Allows one query to run at a time
  - Each query uses the same connection
- **Pool**
  - Creates a set of resuable connections and distributes the incoming queries amongst the connections
  - Allows for multiple queries to be handled simultaneously
  - Avoids the overhead of trying to start and stop multiple connections to handle multiple requests
- For a web backend, you might be dealing with many, many requests at once. Making the `Pool` the ideal solution
