---
title: 4. Examples
---

Base repos for all the following examples can be found [here](https://github.com/menglishca/express-postgres-examples)

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example: User Management System</h2></summary>

  You are tasked with building a **User Management System** that connects to a **PostgreSQL** database and allows users to manage user data. Your app should be able to:

  1. **List all users** stored in the database.
  2. **Add a new user** with a name and email address.
  3. **Update user information** by user ID.
  4. **Retrieve user information** by user ID.

  ### Functional Requirements:

  - The database should have a table called `users` with the following columns:
    - `id` (serial primary key): The unique identifier for each user.
    - `name` (varchar): The name of the user.
    - `email` (varchar): The email address of the user.
  
  - The Express app should support the following endpoints:
    1. `GET /users`: Returns a list of all users.
    2. `POST /users`: Adds a new user with the provided name and email.
    3. `PUT /users/:id`: Updates the user information for the specified ID.
    4. `GET /users/:id`: Retrieves user information for the specified ID.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the database connection**:
   - Use the `pg` npm package to connect to your PostgreSQL database.
   - Create a `pool.js` file to handle database connections with the appropriate connection details (username, password, database name, etc.).

2. **Creating the `users` table**:
   - Ensure the `users` table exists in your PostgreSQL database with the defined schema.
   - Use the SQL statement `CREATE TABLE IF NOT EXISTS` to create the table if it doesn't already exist.

3. **Listing all users**:
   - Implement the `GET /users` endpoint that queries the `users` table and returns all user records in JSON format.

4. **Adding a new user**:
   - Implement the `POST /users` endpoint that takes user information from the request body and inserts it into the `users` table.

5. **Updating user information**:
   - Implement the `PUT /users/:id` endpoint that updates the user information (name and email) based on the provided user ID.

6. **Retrieving user information**:
   - Implement the `GET /users/:id` endpoint that retrieves and returns the user information for a specific user ID.
  </details>
</details>
<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example: Product Inventory System</h2></summary>

  You are tasked with building a **Product Inventory System** that connects to a **PostgreSQL** database and allows users to manage product data. Your app should be able to:

  1. **List all products** stored in the database.
  2. **Add a new product** with a name, price, and stock quantity.
  3. **Update product information** by product ID.
  4. **Delete a product** by product ID.

  ### Functional Requirements:

  - The database should have a table called `products` with the following columns:
    - `id` (serial primary key): The unique identifier for each product.
    - `name` (varchar): The name of the product.
    - `price` (numeric): The price of the product.
    - `stock_quantity` (integer): The quantity of the product in stock.
  
  - The Express app should support the following endpoints:
    1. `GET /products`: Returns a list of all products.
    2. `POST /products`: Adds a new product with the provided name, price, and stock quantity.
    3. `PUT /products/:id`: Updates the product information for the specified ID.
    4. `DELETE /products/:id`: Deletes the product with the specified ID.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the database connection**:
   - Use the `pg` npm package to connect to your PostgreSQL database.
   - Create a `pool.js` file to handle database connections with the appropriate connection details (username, password, database name, etc.).

2. **Creating the `products` table**:
   - Ensure the `products` table exists in your PostgreSQL database with the defined schema.
   - Use the SQL statement `CREATE TABLE IF NOT EXISTS` to create the table if it doesn't already exist.

3. **Listing all products**:
   - Implement the `GET /products` endpoint that queries the `products` table and returns all product records in JSON format.

4. **Adding a new product**:
   - Implement the `POST /products` endpoint that takes product information from the request body and inserts it into the `products` table.

5. **Updating product information**:
   - Implement the `PUT /products/:id` endpoint that updates the product information (name, price, and stock quantity) based on the provided product ID.

6. **Deleting a product**:
   - Implement the `DELETE /products/:id` endpoint that removes the product with the specified ID from the `products` table.
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example: Library Book Management System</h2></summary>

  You are tasked with building a **Library Book Management System** that connects to a **PostgreSQL** database and allows users to manage book data. Your app should be able to:

  1. **List all books** in the library.
  2. **Add a new book** with a title, author, and publication year.
  3. **Update book details** by book ID.
  4. **Retrieve book details** by book ID.

  ### Functional Requirements:

  - The database should have a table called `books` with the following columns:
    - `id` (serial primary key): The unique identifier for each book.
    - `title` (varchar): The title of the book.
    - `author` (varchar): The author of the book.
    - `publication_year` (integer): The year the book was published.
  
  - The Express app should support the following endpoints:
    1. `GET /books`: Returns a list of all books.
    2. `POST /books`: Adds a new book with the provided title, author, and publication year.
    3. `PUT /books/:id`: Updates the book details for the specified ID.
    4. `GET /books/:id`: Retrieves book details for the specified ID.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the database connection**:
   - Use the `pg` npm package to connect to your PostgreSQL database.
   - Create a `pool.js` file to handle database connections with the appropriate connection details (username, password, database name, etc.).

2. **Creating the `books` table**:
   - Ensure the `books` table exists in your PostgreSQL database with the defined schema.
   - Use the SQL statement `CREATE TABLE IF NOT EXISTS` to create the table if it doesn't already exist.

3. **Listing all books**:
   - Implement the `GET /books` endpoint that queries the `books` table and returns all book records in JSON format.

4. **Adding a new book**:
   - Implement the `POST /books` endpoint that takes book information from the request body and inserts it into the `books` table.

5. **Updating book details**:
   - Implement the `PUT /books/:id` endpoint that updates the book details (title, author, and publication year) based on the provided book ID.

6. **Retrieving book details**:
   - Implement the `GET /books/:id` endpoint that retrieves and returns the book details for a specific book ID.
  </details>
</details>