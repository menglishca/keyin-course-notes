---
title: 3. Designing a RESTful API
---

## 5. Designing a RESTful API

When designing a RESTful API, we need to think carefully about how to model our resources and how clients will interact with them. In this section, we’ll design a RESTful API for a library system step-by-step.

---

### 1. Identify the Resources
- The first step in designing a RESTful API is to identify the **resources** in your system.
  - As you'll recall, a REST API is always centered around the resources
  - A resource is any object or entity that can be identified and managed.
- In a library system, the main resources might be:
  - **Books** (`/books`)
  - **Authors** (`/authors`)
  - **Users** (`/users`)
  
- Think about your resources as nouns, or anything the system manages or tracks.


### 2. Design Resource URLs
- REST APIs treat resources as entities that can be accessed via **URLs**. Each resource should have a unique, intuitive, and hierarchical URL.

- For our library, we may have URLs like:
  - For a collection of books:
    - **URL**: `/books`
    - This URL represents all the books in the library system.
  - For an individual book:
    - **URL**: `/books/1`
    - This URL represents the book with an ID of 1. The ID is a unique identifier for each book.
  - For an author:
    - **URL**: `/authors/1`
    - This represents a specific author with ID 1.
  - For users:
    - **URL**: `/users/1`
    - This represents a user with ID 1 in the library system.
  - For managing relationships between resources:
    - **Example**: A user borrows a book.
      - **URL**: `/users/1/books/2`
      - This might represent the action where **user 1** borrows **book 2**.

### 3. Use HTTP Methods Properly
- In RESTful APIs, the HTTP method used in the request should represent the type of operation to be performed on a resource.
- REST APIs center around four main methods: `GET`, `POST`, `PUT` and `DELETE` (although there are [more](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods))
- **GET**: Retrieve a resource or collection of resources.
  - **Example**:
    - `GET /books`: Retrieves the entire collection of books.
    - `GET /books/1`: Retrieves details about the specific book with ID 1.
  
- **POST**: Create a new resource.
  - **Example**:
    - `POST /books`: Creates a new book in the library. The client sends the book's details (like title, author, etc.) in the request body, typically formatted in **JSON**.
    ```json
    {
      "title": "The Catcher in the Rye",
      "author": "J.D. Salinger"
    }
    ```
    The server processes this request and creates a new book entry.
  
- **PUT**: Update an existing resource.
  - **Example**:
    - `PUT /books/1`: Updates the details of the book with ID 1. The client sends the new data in the **request body**.
    ```json
    {
      "title": "The Catcher in the Rye (Updated)",
      "author": "J.D. Salinger"
    }
    ```
    The server processes this request and updates the book's information.
  
- **DELETE**: Remove a resource.
  - **Example**:
    - `DELETE /books/1`: Deletes the book with ID 1 from the library system.

### 4. Send Data in Requests
- When interacting with resources, any data the request needs to complete it's task should be contained in the request itself
- **POST/PUT**:
  - **Request Body**: These methods typically send data in the **request body**, formatted as **JSON**.
  - Example of adding a new book using `POST /books`:
    ```json
    {
      "title": "1984",
      "author": "George Orwell",
      "publishedYear": 1949
    }
    ```
- **GET**:
  - **Query Parameters**: Data can also be passed via **query parameters** in the URL to filter or search.
  - Example of retrieving books by an author using a **GET** request:
    ```
    GET /books?author=Orwell
    ```
    This URL filters the list of books and returns only those written by **George Orwell**.

### 5. Return Proper Status Codes
- A well-designed API must return proper **HTTP status codes** to indicate the success or failure of requests
- That way a client can easily tell what happened with a request they've sent
- Common status codes include:
  - **200 OK**: The request was successful.
    - Example: A successful `GET /books/1` would return **200 OK** and the book data in the response.
  - **201 Created**: A new resource was created successfully.
    - Example: After creating a new book via `POST /books`, the server responds with **201 Created** and returns the newly created book’s details.
  - **400 Bad Request**: The client’s request was malformed or invalid.
    - Example: If the client sends a request with missing or incorrect data (e.g., missing the author field in a `POST /books` request), the server would return **400 Bad Request**.
  - **401 Unauthorized**: The client doesn't have proper authorization to perform an action
    - Example: If only valid library users are able to lookup books, a user who has yet to login would get a **401 Unauthorized** if they attempted to lookup a book
  - **404 Not Found**: The requested resource doesn’t exist.
    - Example: Trying to `GET /books/999` for a book that doesn’t exist would return **404 Not Found**.
  - **418 I'm a teapot**: The server refuses to brew coffee, as it's a teapot.
    - This is a genuine, documented response code, but really only exists as an April Fools joke
  - **500 Internal Server Error**: The server encountered an error while processing the request.
    - Example: If the server fails to create a new book due to a database error, it would return **500 Internal Server Error**.
- A full list of status codes can be found [here](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)
- Note: When designing any kind of web application, it's up to you to determine what status codes to send. By rights, you never really need to return anything but 200 if you don't want to. However, it's best practice to always return a proper status code to ensure your client has a meaningful response

### 6. Handle Relationships Between Resources
- Often, resources are related, and RESTful APIs should represent these relationships in the API design.
- **Example**: Suppose we have a user who wants to borrow a book
  - **Relationship**: Each user can borrow many books, and each book can be borrowed by many users.
  - Design URL to represent this relationship:
    - To list all books borrowed by **user 1**:
      - `GET /users/1/books`: Returns a list of books currently borrowed by user 1.
    - To let **user 1** borrow **book 2**:
      - `POST /users/1/books/2`: Adds book 2 to the list of books borrowed by user 1.
- These **nested routes** help model relationships between different resources, keeping the API intuitive and resource-oriented.
- The idea is that the routes should nest and be built in a way that makes some logical sense

## Summary of the RESTful API Design Process for the Library System

1. **Identify the resources**: Books, authors, users, borrowed books.
2. **Design the URLs**: `/books`, `/books/1`, `/authors/1`, `/users/1/books`.
3. **Use HTTP methods properly**:
   - `GET /books`: Get all books.
   - `POST /books`: Add a new book.
   - `PUT /books/1`: Update an existing book.
   - `DELETE /books/1`: Remove a book.
4. **Send and receive data**:
   - Use **JSON** in the request body for `POST` and `PUT` methods.
   - Use **query parameters** in `GET` requests to filter results.
5. **Return appropriate status codes**: 200 for success, 404 for not found, etc.
6. **Handle relationships**: Design routes to manage user-book relationships, such as borrowing books (`/users/1/books/2`).
