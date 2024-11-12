---
title: 2. Understanding Express.js
---

## Installing Express.js
- Install Express like you would any other package, using NPM:
    ```bash
    npm install express
    ```
- To ensure the install was successful, double check that `express` is now listed as a dependency in your `package.json`

## Basic Express Server Setup
- Setting up a basic Express server doesn't require very much code
    ```javascript
    const express = require('express');
    const app = express();

    app.listen(3000, () => {
        console.log('Server is running on port 3000');
    });
    ```
- This will create a new `express` server and tell it to listen on port `3000`
- This server doesn't do very much, as we haven't defined any routes yet, but it does get the barebones up and running
- What is a route?
  - A `route` is a defined way your `express` server will respond to a specific client request
  - Defining a route requires a HTTP method (i.e. GET, POST, PUT, DELETE, etc.) and a URL path for the route (i.e. `/` or `/search`)
  - It also requires a `handler` which is the function to execute when a request is sent to that particular route
  - Using our example above, adding a route for the `/` path could look like:
    ```javascript
    app.get('/', (request, response) => {
        response.send("Hello world!");
    });
    ```
  - This would display a simple page saying "Hello World" when the user attempted to navigate to `/`

## High-Level Architecture of an Express.js App
- Express.js works around a request and response flow:
  - The client sends a request, usually from a browser
    - This request will contain the required parts of the route (the HTTP method and the URL) that express will need
  - If Express has any middleware specified, that will run against the request to perform any required middleware operations
  - Then, if Express knows the route the request is passed from the middleware to the request handler
  - Finally, the response is sent from the handler to the client
- An express app can really be broken down into three main components:
  - Routes: Define the path and HTTP method (e.g., /users, GET).
  - Middleware: Functions that modify the request/response or control the flow.
  - Controller Logic: Functions tied to routes that perform application logic.

## Express Core Concepts
### Routing
  - Express supports RESTful routing for handling different HTTP methods.
  - Example:
    ```javascript
    app.get('/products', (req, res) => {
        res.send('List of products');
    });
    ```
### Middleware
- Middleware functions can manipulate request and response objects before sending the final response.
- Example:
    ```javascript
    app.use((req, res, next) => {
        console.log('Request received:', req.method, req.url);
        next();
    });
    ```

- **Example: Error Handling Middleware**
  - Error-handling middleware captures any errors and sends a response.
    ```javascript
    app.use((err, req, res, next) => {
        console.error(err.stack);
        res.status(500).send('Something went wrong!');
    });
    ```
