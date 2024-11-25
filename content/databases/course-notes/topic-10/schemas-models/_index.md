---
title: 3. Schemas and Models
---

## Schemas vs. Models  
- A **schema** in Mongoose defines the structure of a document within a collection. Think of it like defining the columns in a table in PostgreSQL but in your Node.js application instead of directly in the database.  
- A **model** is the JavaScript object you use to interact with the database based on a schema.  

## Key Note: Schemas Aren't in the Database  
Unlike PostgreSQL, where table definitions (schemas) are enforced by the database itself, Mongoose schemas exist only in your application code. MongoDB itself is schema-less, so it doesn't enforce these rules. Mongoose schemas act as a layer of validation before data is stored.  

- **In PostgreSQL:** You create tables with strict constraints:  
  ```sql
  CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    enrollment_date DATE
  );
  ```

- **In Mongoose:** You define schemas in code:  
  ```javascript
  const studentSchema = new mongoose.Schema({
    firstName: { type: String, required: true },
    lastName: { type: String, required: true },
    email: { type: String, required: true, unique: true },
    enrollmentDate: { type: Date, required: true },
  });

  const Student = mongoose.model('Student', studentSchema);
  ```

## Why Use Schemas in Mongoose?  
Schemas let you:  
- Define required fields, data types, and validation rules.  
- Add custom methods for processing data.  
- Establish relationships between documents.  