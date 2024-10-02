---
title: 1. Postgre SQL basics
---

# Basics of PostgreSQL

PostgreSQL is a powerful, open-source relational database management system (RDBMS) known for its standards compliance and advanced features. It's commonly used to store structured data and provides extensive functionality for data manipulation, querying, and database administration.

## 1. Installing PostgreSQL

PostgreSQL is available on multiple platforms (Linux, macOS, Windows). You can install it by following these steps:

- **Linux**: Use the package manager for your distribution (e.g., `apt`, `yum`).
```bash
# Example on Ubuntu
sudo apt update
sudo apt install postgresql postgresql-contrib
```

- **macOS**: Use Homebrew.
```bash
brew install postgresql
```

- **Windows**: Download the installer from [PostgreSQL's official website](https://www.postgresql.org/download/windows/).

---

## 2. PostgreSQL Command Line Interface (psql)

The primary tool for interacting with PostgreSQL is the **psql** command-line interface. You can use it to run SQL commands, manage databases, and view table structures.

### Starting psql
To open psql, run:
```bash
psql -U postgres
```
This connects you to the PostgreSQL server as the default `postgres` user.

### Common psql Commands
- **\l**: List all databases.
- **\c dbname**: Connect to a database.
- **\dt**: List all tables in the connected database.
- **\d tablename**: Describe the structure of a table.
- **\q**: Quit the psql interface.


## 4. Basic PostgreSQL Operations

### Creating a Database
Use the `CREATE DATABASE` command to create a new database.
```sql
CREATE DATABASE my_database;
```

### Connecting to a Database
In psql, use the `\c` command to connect to a database:
```bash
\c my_database
```

### Creating a User
To create a new user with a password:
```sql
CREATE USER my_user WITH PASSWORD 'password';
```

You can then grant the user privileges on a specific database:
```sql
GRANT ALL PRIVILEGES ON DATABASE my_database TO my_user;
```


## 3. PostgreSQL Data Types

PostgreSQL supports a wide range of data types. Some of the most common include:

- **Text Data Types**: 
  - `CHAR(n)` or `VARCHAR(n)`: Fixed or variable-length character data.
  - `TEXT`: Variable-length string with no size limit.
  
- **Numeric Data Types**:
  - `INTEGER`: Whole numbers.
  - `SERIAL`: Auto-incrementing integer (commonly used for IDs).
  - `FLOAT` or `NUMERIC`: For storing decimal numbers.

- **Date/Time Data Types**:
  - `DATE`: Stores dates.
  - `TIMESTAMP`: Stores date and time.
  
- **Boolean Data Type**:
  - `BOOLEAN`: Stores `TRUE`, `FALSE`, or `NULL`.
