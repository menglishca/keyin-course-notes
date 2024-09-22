---
title: 3. Working with data in SQL
---

To help get a better idea of how to use SQL to manage data we'll take a look at a real world example and explain how we'd cover that example using SQL.

## Scenario: User Management System
In a previous example, we looked at how we'd create a `user_records` table to store the data for our user management sytem. Now that we have the table, we need to populate it with our user's data. We only have three users to start, so lets try to get one added:
  - Alice Smith, alice@asmith.com, Canada
  - John Doe, john_doe@gmail.com, United States

## CRUD Operations in SQL
- As was metioned a while ago, CRUD operations define the core ways in which we interact with data
- In SQL, ech CRUD operation corresponds to specific command that allows you to perform operations on your data

- **Create**: In SQL this is the  `INSERT` command and lets you add new records to a table.
- **Read**: In SQL this is the  `SELECT` command and lets you add retrieve rows from the database.
- **Update**: In SQL this is the `UPDATE` command and lets you modify existing records in a table.
- **Delete**: In SQL this is the  `DELETE` command and lets you remove records from a table.

- These four operations are the critical operations you'll need when working with a database, as they encompass the core operations a database does

## 2. `INSERT` – Inserting Data

### Intro to the `INSERT` Command
- The `INSERT` command is used to add new rows of data into a table
- Each `INSERT` statement adds one or more rows to the table.
  - The command specifies what table the data should be added to and what columns we're providing data for
  - If a column has a `NOT NULL` constraint or is a primary key, it must have data provided or the `INSERT` will be rejected
### Syntax of `INSERT INTO`
```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```
- `table_name`: The table where the data will be inserted.
- `(column1, column2, ...)`: Specifies which columns you’re inserting data into.
- `(value1, value2, ...)`: The actual data you’re adding.

### Scenario: Adding initial users
We’ll insert a new user into the `users` table.

```sql
INSERT INTO users (first_name, last_name, email_address, country)
VALUES
  ('Alice', 'Smith', 'alice@example.com', 'Canada'),
  ('John', 'Doe', 'john_doe@gmail.com', 'United State');
```

- **Columns**: `first_name`, `last_name`, `email`, and `age` are the fields we’re populating.
- **Values**: We are adding 'Alice Smith', 'alice@asmith.com', and '25' as data for this user.
- Note: We didn't have to supply an `id` value for Alice even those it is the primary key. This is because `id` is set to be a `SERIAL` value, so it auto-increments itself. Therefore, we don't set the `id` we just let PostgreSQL take care of it for us
- As well, the only other column that requires a value is `email_address`. If that column had not been specified then the `INSERT` would've been rejected, as if the column wasn't specified it would default to a `NULL` value and that would violate the `NOT NULL` constraint

### Visualizing the Table After Insertion
| id  | first_name | last_name | email_address        | country       |
| --- | ---------- | --------- | -------------------- | ------------- |
| 1   | Alice      | Smith     | alice@asmith.com     | Canada        |
| 2   | John       | Doe       | john_doe@gmail.com   | United States |

- Two new rows have been inserted with an auto-generated `id` of `1` and `2`

## 3. `SELECT` – Retrieving Data

### Intro to the `SELECT` Command
- The `SELECT` command is used to retrieve data from a table.
- You can specify: which colums you wish to get data from (or all columns by using a `*`), which table you want to get data from and if any sort of filtering should be applied to the results

### Syntax of `SELECT`
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
- `column1, column2, ...`: The columns you want to retrieve.
- `table_name`: The table to query.
- `WHERE`: Optional condition to filter the results.

### Scenario: Retrieving User Data
We’ll retrieve all users from the `users` table.

```sql
SELECT email_address, first_name, last_name
FROM users
WHERE country = 'Canada'
```

- This query will return the email address, first name and last name of all users from `Canada` in the `user_records` table

### Visualizing the Query Result
| email_address    | first_name | last_name |
| ---------------- | ---------- | --------- |
| alice@asmith.com | Alice      | Smith     |

- The `SELECT` statement retrieves the data for Alice as she si the only user from canada

## 4. `UPDATE` – Modifying Data

### Intro to the `UPDATE` Command
- The `UPDATE` command allows you to modify existing data in the table.
- You can update one or more columns for any row that matches the given condition.

### Syntax of `UPDATE`
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```
- `SET column1 = value1`: Specifies the column to update and its new value.
- `WHERE`: Defines which rows to update (based on the condition).

### Scenario: Updating existing users
Alice let the domain she was using for her email expire, so she's switching back to gmail instead. Let's update her email accordingly

```sql
UPDATE users
SET email_address = 'alice_smith@gmail.com'
WHERE id = '1';
```

- This updates the `email_address` to be `alice_smith@gmail.com` for any user who's `id` is 1 (which we know to be Alice)
  - Note: We used `id` to filter users here, but we didn't have to. We can use any attribute of the data as our filter if we wish to

### Visualizing the Table After Update
| id  | first_name | last_name | email_address         | country        |
| --- | ---------- | --------- | --------------------- | -------------- |
| 1   | Alice      | Smith     | alice_smtih@gmail.com | Canada         |
| 2   | John       | Doe       | john_doe@gmail.com    | United States  |

- Alice’s `email_address` is now updated to `alice_smith@gmail.com` while the rest of Alice and John's data remain unaffected.

## 5. `DELETE` – Removing Data

### Intro to the `DELETE` Command
- The `DELETE` command removes rows from the table.
- Be careful when using `DELETE` because, like the `DROP TABLE` command, it permanently removes the data without a confirmation
- Like `SELECT` and `UPDATE` the `WHERE` clause specifies a filter to determine who should be removed

### Syntax of `DELETE`
```sql
DELETE FROM table_name
WHERE condition;
```
- `table_name`: The table to delete data from.
- `WHERE`: Specifies which rows to delete (if not specified, all rows in the table are deleted).

### Scenario: Deleting a user
Let’s delete Alice from the `users` table.

```sql
DELETE FROM users
WHERE email = 'alice_smith@gmail.com';
```

- This removes any users who's email is 'alice_smith@gmail.com'.

### Visualizing the Table After Deletion
| id  | first_name | last_name | email_address      | country        |
| --- | ---------- | --------- | ------------------ | -------------- |
| 2   | John       | Doe       | john_doe@gmail.com | United States  |

- The table is now empty after deleting Alice’s record.
