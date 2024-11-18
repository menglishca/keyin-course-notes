---
title: 5. CRUD Operations in MongoDB
---

CRUD stands for **Create, Read, Update, and Delete**—the fundamental operations for interacting with a database. MongoDB provides a simple and intuitive interface to perform these operations using its **JavaScript-like query language**. Below are the details of CRUD operations in MongoDB:

## 1. Create: Adding Data

### Command
- Use the `insertOne()` or `insertMany()` methods to add data to a collection.

### Example
```javascript
db.users.insertOne({
    name: "Alice",
    email: "alice@example.com",
    age: 25
});
```
- **Result:** A document with the provided fields is added to the `users` collection. MongoDB automatically generates a unique `_id` field for the document.

## 2. Read: Retrieving Data

### Command
- Use the `find()` method to retrieve documents. Optionally, use filters to narrow the results.

### Examples
- **Retrieve All Documents:**
  ```javascript
  db.users.find();
  ```
- **Retrieve Documents with a Filter:**
  ```javascript
  db.users.find({ age: { $gte: 25 } });
  ```
- **Retrieve Specific Fields:**
  ```javascript
  db.users.find({}, { name: 1, email: 1, _id: 0 });
  ```
- **Result:**  
  - The first query retrieves all users.  
  - The second retrieves users aged 25 or older.  
  - The third returns only the `name` and `email` fields, excluding `_id`.

## 3. Update: Modifying Data
### Commands
- Use `updateOne()`, `updateMany()`, or `replaceOne()` to modify documents.
### Examples
- **Update a Single Document:**
  ```javascript
  db.users.updateOne(
    { name: "Alice" },
    { $set: { email: "alice.new@example.com" } }
  );
  ```
- **Update Multiple Documents:**
  ```javascript
  db.users.updateMany(
    { age: { $lt: 30 } },
    { $set: { active: true } }
  );
  ```

- **Replace a Document:**
  ```javascript
  db.users.replaceOne(
    { name: "Alice" },
    { name: "Alice Smith", email: "alice.smith@example.com", age: 26 }
  );
  ```
- **Result:**  
  - The first query updates Alice’s email.  
  - The second sets an `active` flag for all users under 30.  
  - The third completely replaces Alice’s document with new fields.

## 4. Delete: Removing Data
### Commands
- Use `deleteOne()` or `deleteMany()` to remove documents.
### Examples
- **Delete a Single Document:**
  ```javascript
  db.users.deleteOne({ name: "Alice" });
  ```
- **Delete Multiple Documents:**
  ```javascript
  db.users.deleteMany({ age: { $gte: 30 } });
  ```
- **Result:**  
  - The first query removes Alice’s record.  
  - The second removes all users aged 30 or older.

## Additional Features
### Bulk Operations
- MongoDB supports batch operations, enabling the execution of multiple CRUD commands in a single request. This reduces latency and improves performance.
- **Example:**
  ```javascript
  db.users.insertMany([
    { name: "Bob", email: "bob@example.com", age: 22 },
    { name: "Carol", email: "carol@example.com", age: 30 }
  ]);
  ```

### Query Operators
- MongoDB provides rich query operators, such as `$eq`, `$gt`, `$lt`, `$in`, `$regex`, etc., allowing complex queries.
- **Example:**
  ```javascript
  db.users.find({ email: { $regex: /example\.com$/ } });
  ```

## Key Points to Remember
1. MongoDB operations are collection-based, not table-based like in SQL.
    - SQL uses tables with a fixed schema to store structured data.
    - MongoDB uses collections that are schema-less, allowing documents to have varying structures.
    - New fields can be added to MongoDB documents dynamically, without altering a predefined schema.
    - This flexibility is ideal for evolving application needs but requires careful design to maintain consistency.
2. The `update` commands modify only matching documents. To prevent unintended updates, always test filters.
3. Use indexes to optimize the performance of `find()` queries.