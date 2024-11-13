---
title: 4. Security in Databases
---

- We've all heard horror stories about databases being leaked online through one method or another, as we work to get our databases integrated with our backend, what can we do to try and make things a little more secure?

## SQL Injection
- One of the most common security issues you might face when connecting a database to your backend is that of SQL injection
- **SQL Injection**: An attack on a database where an attacker finds a way to manipulate the SQL queries sent to a database and is able to "inject" their own SQL code into an existing query
    - SQL Injection _usually_ happens when user input is embedded directly into an SQL query without any validatio or escaping
    - Then the attacked can use this to read out the entire database contents, add malicious records to a database, or really do anything they want

### Example
- Suppose you have a user search function on your website where users can enter a username to find any users with that name
- Your backend code might look something like:
```javascript
const query = `SELECT * FROM users WHERE username = '${userInput}'`;
```

- If a user enters a malicious search into the search box, say: `'; DROP TABLE users;`, then the query becomes:
```javascript
cost query = `SELECT * FROM users WHERE username = ''; DROP TABLE users;`
```

- Our simply search query is now going to delete the entire users table because we weren't careful.

### Prevention with `pg`
1. Parameterized Queries (Prepared Statements):
    - Parameterized queries are the most effective way to prevent SQL injection. They separate user input from the SQL logic, treating the input strictly as data, not as executable SQL code.
    - Example Using pg:
        ```javascript
        const username = 'someUser';
        const password = 'somePassword';

        const query = {
            text: 'SELECT * FROM users WHERE username = $1 AND password = $2',
            values: [username, password], // Using placeholders to insert values safely
        };

        pool.query(query, (err, res) => {
            if (err) {
                console.error('Error executing query', err.stack);
            } else {
                console.log(res.rows);
            }
        });
        ```

    - In this example, `$1` and `$2` act as placeholders for the username and password values, ensuring that they are treated strictly as inputs rather than executable code.

2. Escaping User Input:
    - If for some reason you are unable to use parameterized queries, you must sanitize and escape all user input to prevent malicious code from being injected.
    - However, escaping is considered less reliable compared to parameterized queries because improperly escaped input can still introduce vulnerabilities.

3. Least Privilege Principle:
    - Limit the database permissions for the application user account. Ensure that the account your application uses to connect to the database has only the necessary privileges (e.g., read and write to specific tables).
    - Avoid using the superuser or admin accounts for regular application queries.
    - Example:
      - If your application only needs to read data from a users table, ensure the database user the application is using has read-only permissions.

### Logging
- Enable PostgreSQL’s logging features to monitor for suspicious activities or unauthorized access attempts.
- PostgreSQL has a built-in logging system that can track connections, disconnections, and executed queries.

### Handling Sensitive Data
- Avoid Storing Sensitive Data in Plaintext:
  - Never store sensitive data such as passwords in plaintext.
  - Use bcrypt or another strong hashing algorithm to store hashed passwords.
- Example:
    ```javascript
    const bcrypt = require('bcrypt');
    const password = 'userPassword';
    const hashedPassword = await bcrypt.hash(password, 10); // Hashing the password before storing it

    const query = {
        text: 'INSERT INTO users(username, password) VALUES($1, $2)',
        values: ['someUser', hashedPassword],
    };

    pool.query(query);
    ```

- Masking and Encrypting Sensitive Fields:
  - For highly sensitive fields (e.g., credit card information), consider encrypting the data at the application level before storing it in the database.