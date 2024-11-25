---
title: 2. Connecting to a database
---

## How to Connect
With `pg`, you use a connection pool or client to connect to a PostgreSQL database. Similarly, Mongoose uses a `connect` method with a connection string to establish communication with a MongoDB instance.

- **Example Connection (PostgreSQL with `pg`):**  
  ```javascript
  const { Pool } = require('pg');
  const pool = new Pool({
    user: 'username',
    host: 'localhost',
    database: 'schoolDB',
    password: 'password',
    port: 5432,
  });

  pool.connect()
    .then(() => console.log('Connected to PostgreSQL'))
    .catch(err => console.error('Connection error', err));
  ```

- **Example Connection (MongoDB with Mongoose):**  
  ```javascript
  const mongoose = require('mongoose');

  mongoose.connect('mongodb://localhost:27017/schoolDB', {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => console.log('Connected to MongoDB'))
  .catch(err => console.error('Connection error', err));
  ```

## Key Differences  
- **Connection String:** MongoDB uses a URI format (`mongodb://localhost:27017/databaseName`), while PostgreSQL uses credentials passed into a `pg` client or pool.  
- **Built-in Options:** Mongoose includes features like automatic retries and deprecation warnings when connecting, simplifying connection management.
