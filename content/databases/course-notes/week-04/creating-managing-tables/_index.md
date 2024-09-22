---
title: 2. Creating and Managing Tables
---

Tables are critical to the structure of a relational database. As mentioned earlier, a table is how a relational database stores it's data and how a table is structured determines what data you can store. To help walk us through the process of working with tables, we'll look at an example scenario and build the table for it.

## Scenario: Storing user data
Imagine you’re building a user management system for a website and need to create a table to store user data. Each user has a: unique ID, first name, last name, email, and age.

## 1. Creating a Table

- The `CREATE` command is used to create a new table in a database
- Like previously discussed, when creating a table you need to think about the types of data you'll need to store and create a structure that matches your data requirements
- Then you create the table using SQL, specifying the columns the table will have when you create it

### Syntax of the `CREATE` command
```sql
CREATE TABLE table_name (
   column1 datatype,
   column2 datatype,
   ...
);
```
- `table_name`: Is the name of the table you want to create.
- `column1`, `column2`: Are the names of columns in the table, you can have as many columns as you want, just separate each column declaration with a comma
- `datatype`: Is the type of data the column will hold (e.g., `VARCHAR`, `INTEGER`, `DATE`).
- Note: it is convention to use all caps for the commands in SQL


#### Scenario - Creating the Users Table
- As we described above, we have to create a table for our users in our system
- To do that we should outline the data we'll need to store, and what that table should look like. Then we can look at how we'll create that table using SQL
- **Data Requirements**
  - User ID - integer - primary key(?)
  - First name - string
  - Last name - string
  - Email - string
  - Age - integer

- So it looks like a table with five columns, and the datatypes for each are outlined above. Our SQL to create the table could look something like this:

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) NOT NULL,
    age INTEGER
);
```

- **`id SERIAL PRIMARY KEY`**: Automatically generates a unique ID for each book and sets it as the primary key.
  - In this command, `SERIAL` is the datatype and `PRIMARY KEY` specifies that this column is going to be the `PRIMARY KEY` for the able
  - `SERIAL` is a special `PostgreSQL` datatype that represens a unique, sequential integer value for a primary key
    - So the id column will increment itself whenever new data is added and it will always be an integer value
- **`first_name`**: `VARCHAR(50)` allows up to 50 characters for the user's first name
- **`last_name`**: `VARCHAR(50)` allows up to 50 characters for the user's last name
- **`email`**: `VARCHAR(100)` allows up to 100 characters for the user's email
  - The `NOT NULL` qualifier says that `NULL` values are not permitted for this column, meaning that some form of valid input must be provided
- **`age`**: `INTEGER` stores the age of the user

### Visualizing the Table
| id  | first_name    | last_name   | email | age |
| --- | ------------- | ----------- | ----- | --- |
|     |               |             |       |     |

- This structure defines the `users` table, which is now ready to hold book data.


## 2. Altering a Table
- Sometimes, even though you were careful when creating the table, requirements change and you may need to modify the structure of an existing table later on. This can be done using the `ALTER TABLE` statement.
- `ALTER TABLE` lets you do things such as: adding a new column, remove an existing column or rename a column

### Syntax of `ALTER TABLE`
```sql
ALTER TABLE table_name
ADD COLUMN column_name datatype [constraints];

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;

ALTER TABLE table_name
RENAME TO new_table_name
```

- `ADD COLUMN`: Adds a new column to the table.
- `DROP COLUMN`: Removes a column from the table.
- `RENAME COLUMN`: Renames an existing column.
- `RENAME`: Renames an entire table


### Example: Altering our `users` table
1. **Adding a `country` column**
- Our data for our users is growing and we need to start storing their country as well

```sql
ALTER TABLE users
ADD COLUMN country VARCHAR(50);
```
- This **adds** a new column to the **users** table
  - The column added is named `country` and it's `datatype is VARCHAR(50)`

2. **Remove the `age` column**
- It turns out our users didn't like providing their age and it wasn't serving us much purpose to have it anyways, we're going to remove it.

```sql
ALTER TABLE users
DROP COLUMN age;
```
- This **removes** the `age` column from the `users` table

3. **Rename the `email` column** to `email_address`.
- _Apparently_ email is too ambiguous and could lead to confusion, so we need to rename that column to the much clearer `email_address`

```sql
ALTER TABLE users
RENAME COLUMN email TO email_address;
```
- This tells SQL to **rename** the column `email` in the `users` table to `email_address`

4. **Rename the users table**
- `user_records` is a much more professional sounding name, so we might be well advised to use that instead of `users`

```sql
ALTER TABLE users RENAME TO user_records
```

- This tells SQL to **rename** the entire `users` table to be `user_records**

### Visualizing the Altered Table
- After all of those changes have been made, our `user_records` table now looks something like this:

**user_records**
| id  | first_name    | last_name   | email_address | country |
| --- | ------------- | ----------- | ------------- | ------- |
|     |               |             |               |         |

- As you can see:
  - The `age` column has been removed
  - The `country` column has been added
  - The `email` column has been changed to be now named `email_address`
  - The table itself is now titled `user_records`

## 3. Dropping a Table
- If a table is no longer needed, you can remove it from the database using the `DROP TABLE` statement.
- Note: `DROP TABLE` is permanent and doesn't ask for confirmation, dropping a table will delete all that table's data

### Syntax of `DROP TABLE`
```sql
DROP TABLE table_name;
```

- `table_name`: The name of the table you want to drop.

### Example: Dropping the `users` Table
```sql
DROP TABLE books;
```

- This command removes the `users` table from the database entirely.
- To re-add the table we would have to recreate it from scratch
