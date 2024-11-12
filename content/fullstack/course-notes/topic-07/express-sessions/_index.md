---
title: 4. Configuring Sessions in Express
---

While there are other options, to use sessions in Express, we’ll leverage the `express-session` library. It does a great job of simplifying session management by allowing you to store and retrieve session data securely.

## Setting up express-session

1. **Install `express-session`**:
   - Add the `express-session` package to your project:
     ```bash
     npm install express-session
     ```

2. **Import and Configure `express-session`**:
   - Import `express-session` into your Express app and configure it to manage sessions effectively.
   - Here’s a basic setup to add to your main server file (e.g., `app.js` or `server.js`):

     ```javascript
     const express = require('express');
     const session = require('express-session');

     const app = express();

     // Configure the session middleware
     app.use(session({
       secret: 'your-secret-key', // Secret used to sign the session ID cookie
       resave: false,              // Avoids resaving session data if it hasn't changed
       saveUninitialized: false,   // Only saves sessions when initialized with data
       cookie: { secure: false }   // Set secure to true in production with HTTPS
     }));
     ```

   - **Explanation of the Options**:
     - `secret`: A string used to sign the session ID cookie, making it tamper-proof.
       - You'll want to, in production, use a long random value here
       - The idea is that this is what prevents an attacker from creating their own session IDs or guessing someone elses
     - `resave`: A flag which indicates whether or not we should update the stored session even if nothing has actually changed in the session itself. Setting it to `false` is usually preferred as it improves performance
     - `saveUninitialized`: Controls whether an empty session is saved to the store. Setting it to `false` saves storage and only creates sessions if there is actual data added to the session
     - `cookie.secure`: Ensures that cookies are only sent over HTTPS. Set this to `true` in production, for security but likely false for development work

3. **Creating and Storing Session Data**:
    - After setting up sessions, you can store data in the session object for each user
      - Typically, the first piece of data is stored after login, that way we can use the session to identify the user
    - For example, after validating a user’s login, you might save their user ID in the session:

      ```javascript
       app.post('/login', (req, res) => {
         const { username, password } = req.body;
         // Assume a function `authenticateUser` validates credentials
         if (authenticateUser(username, password)) {
           req.session.userId = getUserId(username); // Storing user ID in session
           res.send('Login successful!');
         }
         else {
           res.status(401).send('Authentication failed');
         }
       });
      ```

4. **Accessing Session Data**:
    - After storing data, you can access session data on other routes by referencing `req.session`
    - This is especially useful to check if a user is logged in and retrieve user-related information.

      ```javascript
       app.get('/dashboard', (req, res) => {
         if (req.session.userId) {
           res.send(`Welcome to your dashboard, user ${req.session.userId}`);
         }
         else {
           res.status(401).send('Please log in to view this page.');
         }
       });
      ```

5. **Ending a Session (Logout)**:
    - To log a user out, you can destroy their session, which removes all of their session data
    - The `req.session.destroy()` method handles this
      ```javascript
        app.post('/logout', (req, res) => {
          req.session.destroy(err => {
            if (err) {
              return res.status(500).send('Failed to log out.');
            }
            res.send('Logged out successfully');
          });
        });
      ```

6. **Session Storage Options**:
    - By default, `express-session` stores session data in memory
   - This works really well for development, but for production you might need something more robust, such as:
     - **Redis**: In-memory database known for fast read/write operations, widely used for session storage.
     - **Database Stores**: A library to allow for session storage in a database like MongoDB, MySQL, or PostgreSQL.