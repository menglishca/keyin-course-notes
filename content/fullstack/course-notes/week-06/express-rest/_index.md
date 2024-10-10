---
title: 4. Creating a REST API in Express
---

## 1. Setting Up an Express Application
- Install **Express**:
  ```bash
  npm init -y
  npm install express
  ```
- Create a `index.js` file, which will be the main entry point of your app.
```javascript
const express = require('express');
const app = express();
const port = 3000;

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
```

- This is the same as any other express app we've created so far

## 2. Defining Routes (Endpoints)
- **Routes** (or endpoints) define the actions you can perform on a resource using a specific HTTP method.
- Express makes it easy to define these routes.
- **Example**: Defining a route for getting all books in the library.
  ```javascript
  app.get('/books', (req, res) => {
    res.json(books); // Sends the list of books
  });
  ```
  - The `app.get` indicates that the route we're defining will respond to `GET` requests
    - There is also `app.delete` for `DELETE` requests, `app.post` for `POST` requests and `app.put` for `PUT` requests
  - The `/books` parameter indicates that this is for any `GET` requests directed to `/books`
  - Then we're sending back a list of books as a JSON object
  - If we wanted to handle a `POST` request, we'd declare a new route with `app.post`

## 3. Handling Incoming Data in HTTP Requests
- As mentioned earlier, in a REST API each request often has some form of data associated with it and we need to make sure we can access it
### Query Parameters
- As discussed previously, query parameters are used to send data when using a `GET` request
    - `GET` requests don't have a body, so we can't put the data there
- Query parameters are added to the end of a `URL` after a `?` and are used to filter data that the server might otherwise send back
- In Express, we can access the query parameters via the `query` object on the `request`
- **Example**: Suppose a user wants to search for books by their publish year, they want to send a request like `GET /books?publishYear=2024`
  ```javascript
  app.get('/books', (req, res) => {
    const publishYear = req.query.publishYear; // Extract the 'publishYear' query parameter
    let filteredBooks = books;

    if (publishYear) { //If the publish year is valid, filter the books
      filteredBooks = books.filter((book) => book.publishYear === publishYear);
    }

    res.json(filteredBooks); // Send the filtered list of books
  });
  ```
  - First, we extract the `publishYear` query parameter via `req.query.publishYear`
  - Second, if the `publishYear` is valid, we filter the books based on the year the book was published

### URL Parameters
- URL parameters are part of the **URL path** and used to reference specific resources.
  - These are different from query parameters because they are embedded within the **URL path** itself rather than being added at the end.
  - They are often used in routes like `GET /books/:id` where `:id` is a placeholder for the actual book ID.
- In Express, URL parameters are accessed via the `params` object on the `request`.
- **Sending Data Back**: We typically send the response back in **JSON format** using `res.json()` to send structured data back to the client.
- **When to Use URL Parameters vs. Query Parameters**:
  - **URL parameters** are used when the data is necessary to identify or target a specific resource.
    - Example: To retrieve or update a specific book by its ID (`GET /books/:id` or `PUT /books/:id`).
  - **Query parameters** are used when filtering or searching through a list of resources.
    - Example: To search for books published in a particular year (`GET /books?publishYear=2024`).
  - **Key Difference**: URL parameters are mandatory to specify a particular resource, whereas query parameters are optional and used to modify a broader result set.
  
- **Example**: Suppose a user wants to get details of a specific book with the ID of 3, they send a request like `GET /books/3`
  ```javascript
  app.get('/books/:id', (req, res) => {
    const bookId = parseInt(req.params.id); // Extract the 'id' parameter from the URL
    const book = books.find((book) => book.id === bookId); // Find the book by its ID

    if (!book) {
      return res.status(404).json({ message: 'Book not found' }); // If no book is found, send a 404 error
    }

    res.json(book); // Send the found book in JSON format
  });
  ```
  - First, we extract the `id` parameter via `req.params.id`.
  - Second, we find the corresponding book by its ID and return the book details with `res.json(book)`, or a 404 error if the book is not found.

### Request Body
- The **request body** is used in **POST** and **PUT** requests, where the client sends data to create or update resources.
  - For example, when adding a new book to the library, the data for the new book is sent in the **body** of the request.
  - The body typically contains JSON data, and in Express, we access it via `req.body`.
  - Note: You need to use the `express.json()` middleware to parse JSON bodies.
- **Middleware for Parsing JSON**:
  - Express does not automatically parse the body of a request. We need to use the express.json() middleware to enable the server to read and parse JSON data in incoming requests.
  - The middleware converts the raw request body into a JavaScript object, allowing us to easily access the data via req.body.
  - Without this middleware, `req.body` would be undefined, and the server wouldn't be able to access the incoming data.
- **Example**: Suppose a user wants to add a new book to the library, they send a request like `POST /books` with the book data in the body:
  ```javascript
  app.use(express.json()); // Add some Express Middleware to parse JSON request bodies

  app.post('/books', (req, res) => {
    const { title, author, publishYear } = req.body; // Extract the data from the request body

    const newBook = {
      id: books.length + 1, // Generate a new ID
      title,
      author,
      publishYear
    };

    books.push(newBook); // Add the new book to the list of books
    res.status(201).json(newBook); // Return the newly created book with a 201 status
  });
  ```
  - First, we extract the data (`title`, `author`, and `publishYear`) from the request body using `req.body`.
  - Second, we create a new book object and add it to the `books` array, then return the new book with a `201 Created` status.
