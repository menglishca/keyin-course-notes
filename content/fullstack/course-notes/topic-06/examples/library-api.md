---
title: 5.1. Library API
---
## Creating the Library API
- For practice, lets take a look at how we might actually create the REST API for our library
- A base repository can be found [here](https://github.com/Keyin-SD14-S3/rest-api-examples)

### Identify Resources in the Library System

1. **Books** (`/books`)
   - Each book in the library, identified by a unique ID.
   - Attributes:
     - `id`
     - `title`
     - `author`
     - `yearPublished`
     - `availableCopies`

2. **Users** (`/users`)
   - Library members, identified by a unique ID.
   - Attributes:
     - `id`
     - `name`
     - `email`
     - `borrowedBooks` (list of books borrowed by the user)

### Operations on Resources
1. **Books Resource (`/books`)**
   - `GET /books`: Retrieve all books in the library.
     - Response: List of all books with details like title, author, availability, etc.
   - `GET /books/:id`: Retrieve details about a specific book by ID.
   - `POST /books`: Add a new book to the library.
     - Request Body: JSON with book details (e.g., title, author, yearPublished, etc.).
   - `PUT /books/:id`: Update details about a specific book.
     - Request Body: JSON with updated book details.
   - `DELETE /books/:id`: Remove a book from the library by ID.

2. **Users Resource (`/users`)**
   - `GET /users`: Retrieve all users registered in the library.
   - `GET /users/:id`: Retrieve details of a specific user by ID.
   - `POST /users`: Add a new user to the library system.
     - Request Body: JSON with user details (name, email).
   - `PUT /users/:id`: Update a user’s information.
   - `DELETE /users/:id`: Remove a user from the system by ID.

4. **Borrowing a Book (`/users/:id/books/:bookId`)**
   - `POST /users/:id/books/:bookId`: Let a user borrow a book from the library.
     - Response: Updates the book's availability and adds it to the user's borrowedBooks list.
   - `DELETE /users/:id/books/:bookId`: Let a user return a book.
     - Response: Updates the book's availability and removes it from the user's borrowedBooks list.

### Example Endpoints
1. **`GET /books`**:
   - Retrieves the entire collection of books available in the library.
   - Sample Response:
     ```json
     [
       { "id": 1, "title": "1984", "author": "George Orwell", "availableCopies": 3 },
       { "id": 2, "title": "Brave New World", "author": "Aldous Huxley", "availableCopies": 5 }
     ]
     ```

2. **`POST /books`**:
   - Adds a new book to the library.
   - Request:
     ```json
     { "title": "Fahrenheit 451", "author": "Ray Bradbury", "yearPublished": 1953, "availableCopies": 2 }
     ```

3. **`POST /users/:id/books/:bookId`**:
   - A user borrows a book from the library.
   - Example: `POST /users/1/books/2` (user with ID 1 borrows the book with ID 2).

4. **`DELETE /users/:id/books/:bookId`**:
   - A user returns a borrowed book to the library.