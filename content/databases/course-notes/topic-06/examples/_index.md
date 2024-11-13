---
title: 5. Examples
---

A base repository for use with these examples (contains some simple code to help get started) can be found [here](https://github.com/menglishca/postgres-backend-examples)

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 1: CLI-Based Item Manager</h2></summary>

  You are tasked with building a **Command Line Interface (CLI)** application that connects to a **PostgreSQL** database and allows the user to manage a simple list of items. Your app should be able to:

  1. **Create a table** in the database for storing item information if it doesn't already exist.
  2. **Insert a new item** into the table by passing the item name as a command-line argument.
  3. **Display all items** stored in the table.

  ### Functional Requirements:

  - The database should have a table called `items` with two columns:
    - `id` (integer): The primary key, which auto-increments.
    - `name` (text): The name of the item.
  
  - The CLI should support two commands:
    1. `insert <item_name>`: Inserts an item with the provided name into the database.
    2. `show`: Displays all the items currently stored in the table.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the database connection**:
    - Use the `pg` npm package to connect to your PostgreSQL database.
    - The connection details (username, password, etc.) should be set up in the script.
    
2. **Creating the `items` table**:
    - Before any data can be inserted, the script should ensure the table exists.
    - Use the SQL statement `CREATE TABLE IF NOT EXISTS` to create the table if it doesn't already exist.
    
3. **Inserting data**:
    - When the user runs the command `insert <item_name>`, the script should take the item name from the command-line argument and insert it into the `items` table.
    - Use parameterized queries to avoid SQL injection.
    
4. **Displaying all data**:
    - When the user runs the command `show`, the script should query the `items` table and display all the rows (showing the `id` and `name` of each item).

  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Input/Output Examples</h3></summary>

- **Inserting an item**:
  - Command:
    ```bash
    node index.js insert "Apple"
    ```
  - Output:
    ```
    Inserted item: Apple
    ```

- **Displaying all items**:
  - Command:
    ```bash
    node index.js show
    ```
  - Output:
    ```
    Items in the table:
    1: Apple
    2: Orange
    ```

  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Additional Instructions</h3></summary>

  - Ensure that the database connection is properly closed after each command to avoid hanging processes.
  - Handle any errors that might occur during the database connection or query execution and provide meaningful error messages to the user.
  - Use parameterized queries when inserting data to prevent SQL injection attacks.

  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Hint</h3></summary>

  - For PostgreSQL interaction, the `pg` library will be used. Make sure to install it using:
    ```bash
    npm install pg
    ```
  - You'll need to pass arguments from the command line, which can be accessed via `process.argv` in Node.js.
  - Make sure to test both commands (`insert` and `show`) to verify that your application works correctly.

  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Bonus Task</h3></summary>

  - Add a command to **delete** all items from the `items` table, giving users a way to clear the list.
  - Command: `node index.js clear`

  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 2: CLI-Based To-Do List Manager</h2></summary>

  You are tasked with building a **Command Line Interface (CLI)** application that connects to a **PostgreSQL** database and allows users to manage a to-do list. Your app should be able to:

  1. **Create a table** in the database for storing to-do items if it doesn't already exist.
  2. **Insert a new to-do item** into the table via command-line arguments.
  3. **Display all to-do items** stored in the table.
  4. **Mark a to-do item as completed** by its ID.
  5. **Delete a to-do item** by its ID.

  ### Functional Requirements:

  - The database should have a table called `todos` with the following columns:
    - `id` (serial primary key): The unique identifier for each to-do item.
    - `task` (text): The description of the to-do item.
    - `completed` (boolean): Indicates whether the item has been completed (default is `false`).
  
  - The CLI should support the following commands:
    1. `add <task>`: Adds a new to-do item with the provided task description.
    2. `show`: Displays all to-do items along with their IDs and completion status.
    3. `complete <id>`: Marks the to-do item with the given ID as completed.
    4. `delete <id>`: Deletes the to-do item with the specified ID.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the database connection**:
    - Use the `pg` npm package to connect to your PostgreSQL database.
    - Set up the connection details (username, password, etc.) in the script.

2. **Creating the `todos` table**:
    - Ensure the `todos` table exists before any data manipulation occurs.
    - Use the SQL statement `CREATE TABLE IF NOT EXISTS` to create the table.

3. **Inserting a to-do item**:
    - When the user runs the command `add <task>`, the script should take the task description from the command-line argument and insert it into the `todos` table.

4. **Displaying all to-do items**:
   - When the user runs the command `show`, the script should query the `todos` table and display all rows (showing the `id`, `task`, and `completed` status).

5. **Completing a to-do item**:
    - When the user runs the command `complete <id>`, the script should update the `completed` status of the to-do item with the given ID to `true`.

6. **Deleting a to-do item**:
    - When the user runs the command `delete <id>`, the script should remove the to-do item with the specified ID from the `todos` table.
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Input/Output Examples</h3></summary>

1. **Adding a to-do item**:
    - Command:
      ```bash
      node index.js add "Finish homework"
      ```
    - Output:
      ```
      Added to-do item: Finish homework
      ```

2. **Displaying all to-do items**:
    - Command:
      ```bash
      node index.js show
      ```
    - Output:
      ```
      To-Do List:
      1: Finish homework [Not completed]
      2: Buy groceries [Not completed]
      ```

3. **Completing a to-do item**:
    - Command:
      ```bash
      node index.js complete 1
      ```
    - Output:
      ```
      Marked item 1 as completed.
      ```

4. **Deleting a to-do item**:
    - Command:
      ```bash
      node index.js delete 2
      ```
    - Output:
      ```
      Deleted item 2 from the list.
      ```
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Additional Instructions</h3></summary>

  - Ensure that the database connection is properly closed after each command to avoid hanging processes.
  - Handle any errors that might occur during database connection or query execution, providing meaningful error messages.
  - Use parameterized queries to prevent SQL injection attacks when inserting or updating data.
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Hint</h3></summary>

  - For PostgreSQL interaction, the `pg` library will be used. Make sure to install it using:
    ```bash
    npm install pg
    ```
  - Access command-line arguments through `process.argv` in Node.js.
  - Test all commands to verify the application works correctly.
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Bonus Task</h3></summary>

  - Implement a command to **clear all completed to-do items** from the `todos` table.
  - Command: `node index.js clear`

  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 3: CLI-Based Library Book Manager</h2></summary>

  You are tasked with building a **Command Line Interface (CLI)** application that interacts with a **PostgreSQL** database and allows users to manage a library’s book collection. Your app should be able to:

  1. **Create a table** in the database for storing book information if it doesn't already exist.
  2. **Insert a new book record** into the table via command-line arguments.
  3. **Display all books** stored in the table.
  4. **Update book information** (like title or author) by the book's ID.
  5. **Mark a book as checked out** by its ID.
  6. **Delete a book** by its ID.
  7. **List all available books** (i.e., books that haven't been checked out).

  ### Functional Requirements:

  - The database should have a table called `books` with the following columns:
    - `id` (serial primary key): The unique identifier for each book.
    - `title` (text): The title of the book.
    - `author` (text): The author of the book.
    - `checked_out` (boolean): Indicates whether the book has been checked out (default is `false`).

  - The CLI should support the following commands:
    1. `add <title> <author>`: Adds a new book with the given title and author to the collection.
    2. `show`: Displays all books along with their IDs, titles, authors, and check-out status.
    3. `update <id> <field> <new_value>`: Updates the specified field (`title` or `author`) of the book with the given ID.
    4. `checkout <id>`: Marks the book with the given ID as checked out.
    5. `delete <id>`: Deletes the book with the specified ID.
    6. `available`: Displays all books that have not been checked out.

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Detailed Breakdown</h3></summary>

1. **Setting up the database connection**:
    - Use the `pg` npm package to connect to your PostgreSQL database.
    - Set up the connection details (username, password, etc.) in the script.

2. **Creating the `books` table**:
    - Ensure the `books` table exists before any data manipulation occurs.
    - Use the SQL statement `CREATE TABLE IF NOT EXISTS` to create the table.

3. **Inserting a new book**:
    - When the user runs the command `add <title> <author>`, the script should take the title and author from the command-line arguments and insert them into the `books` table.

4. **Displaying all books**:
    - When the user runs the command `show`, the script should query the `books` table and display all rows (showing the `id`, `title`, `author`, and `checked_out` status).

5. **Updating book information**:
    - When the user runs the command `update <id> <field> <new_value>`, the script should update the specified field (either `title` or `author`) of the book with the given ID.

6. **Marking a book as checked out**:
    - When the user runs the command `checkout <id>`, the script should update the `checked_out` status of the book with the given ID to `true`.

7. **Deleting a book**:
    - When the user runs the command `delete <id>`, the script should remove the book with the specified ID from the `books` table.

8. **Listing available books**:
    - When the user runs the command `available`, the script should display all books where the `checked_out` status is `false`.
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Input/Output Examples</h3></summary>

1. **Adding a new book**:
    - Command:
      ```bash
      node index.js add "The Hobbit" "J.R.R. Tolkien"
      ```
    - Output:
      ```
      Added book: The Hobbit by J.R.R. Tolkien
      ```

2. **Displaying all books**:
    - Command:
      ```bash
      node index.js show
      ```
    - Output:
      ```
      Library Books:
      1: The Hobbit by J.R.R. Tolkien [Available]
      2: 1984 by George Orwell [Checked out]
      ```

3. **Updating book information**:
    - Command:
      ```bash
      node index.js update 1 title "The Hobbit: Revised Edition"
      ```
    - Output:
      ```
      Updated book 1: Title changed to "The Hobbit: Revised Edition"
      ```

4. **Marking a book as checked out**:
    - Command:
      ```bash
      node index.js checkout 1
      ```
    - Output:
      ```
      Marked book 1 as checked out.
      ```

5. **Deleting a book**:
    - Command:
      ```bash
      node index.js delete 2
      ```
    - Output:
      ```
      Deleted book 2 from the collection.
      ```

6. **Listing available books**:
    - Command:
      ```bash
      node index.js available
      ```
    - Output:
      ```
      Available Books:
      1: The Hobbit by J.R.R. Tolkien
      ```
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Additional Instructions</h3></summary>

  - Ensure that the database connection is properly closed after each command to avoid hanging processes.
  - Handle any errors that might occur during database connection or query execution, providing meaningful error messages.
  - Use parameterized queries to prevent SQL injection attacks when inserting, updating, or deleting data.
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Hint</h3></summary>

  - For PostgreSQL interaction, the `pg` library will be used. Make sure to install it using:
    ```bash
    npm install pg
    ```
  - Access command-line arguments through `process.argv` in Node.js.
  - Test all commands to verify the application works correctly.
  </details>

  <details>
    <summary><h3 style="display: inline-flex; margin-top: 10px;">Bonus Task</h3></summary>

  - Implement a command to **return a checked-out book** by updating its `checked_out` status to `false`.
  - Command: `node index.js return <id>`
  </details>
</details>