---
title: 5. Mock SSO example
---

## Simple SSO Example

This example demonstrates the basic flow of Single Sign-On (SSO) using Express. It includes:

- **Identity Provider (IdP)**: Responsible for authenticating users and issuing tokens.
- **Service Providers (SP1 and SP2)**: Mock applications (like a dashboard or HR system) that rely on the IdP for user authentication.

## How the Example Works

1. **Login at the IdP**:
   - Users log in by sending their credentials to the IdP.
   - If the credentials are valid, the IdP issues a token (simulated as `valid-jwt` in this example) and redirects the user back to the requesting SP with the token in the query parameters.

2. **Accessing a Service Provider (SP)**:
   - Each SP checks for the presence of a token in the request.
   - If the token is valid, the user is granted access.
   - If no token or an invalid token is provided, the SP redirects the user to the IdP to log in.

3. **Shared Authentication**:
   - Once the user logs in at the IdP and obtains a valid token, they can use the same token to access multiple SPs without logging in again.

## Code

```javascript
const express = require('express');
const app = express();
const bodyParser = require('body-parser');

// Middleware to simulate parsing JSON and form data
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Simulated user database for authentication
const users = [{ id: 1, username: 'alice', password: 'password123' }];
const jwt = 'valid-jwt'; // Simulated token issued by IdP

// Mock Identity Provider (IdP)
const idp = express();
idp.use(bodyParser.urlencoded({ extended: true }));

// IdP login route
idp.post('/login', (request, response) => {
  const { username, password } = request.body;
  const user = users.find(u => u.username === username && u.password === password);

  if (user) {
    response.redirect(`/callback?token=${jwt}`);
  } else {
    response.status(401).send('Invalid username or password');
  }
});

// Mock Service Provider (SP1)
const sp1 = express();

sp1.get('/dashboard', (request, response) => {
  const token = request.query.token;

  if (token === jwt) {
    response.send('Welcome to the Employee Dashboard!');
  } else {
    response.redirect('http://localhost:3001/login');
  }
});

// Mock Service Provider (SP2)
const sp2 = express();

sp2.get('/hr', (request, response) => {
  const token = request.query.token;

  if (token === jwt) {
    response.send('Welcome to the HR System!');
  } else {
    response.redirect('http://localhost:3001/login');
  }
});

// Start servers
idp.listen(3001, () => console.log('IdP running at http://localhost:3001'));
sp1.listen(3002, () => console.log('SP1 running at http://localhost:3002'));
sp2.listen(3003, () => console.log('SP2 running at http://localhost:3003'));
```

## How It Works

- **IdP**: The identity provider has a `/login` endpoint where users authenticate. If successful, it redirects them back to the SP with a token.
- **SP1 and SP2**: The service providers validate the token. If the token is invalid, they redirect users to the IdP for login. If valid, the user gains access to the service.
