---
title: 1. Introduction to Mongoose and MongoDB
---

## What is MongoDB?  
MongoDB is a **NoSQL database** designed for flexibility and scalability. Unlike SQL databases (like PostgreSQL), MongoDB stores data in **documents**, which are JSON-like objects called BSON. These documents allow dynamic schemas, meaning you don’t need to define strict tables or columns upfront.  

- Example MongoDB document for a student:  
  ```json
  {
    "firstName": "Alice",
    "lastName": "Johnson",
    "email": "alice.johnson@example.com",
    "enrollmentDate": "2024-09-15"
  }
  ```

This flexibility is one of MongoDB's strengths, but without tools like Mongoose, you need to manage all validation and relationships in your code manually.

## What is Mongoose?  
Mongoose is an **Object Data Modeling (ODM) library** for MongoDB, much like how `pg` is a library for interacting with PostgreSQL.  

- **With `pg`:** You write SQL queries to interact with the database directly.  
- **With Mongoose:** You define **schemas** and use models that provide built-in methods for working with MongoDB collections.  

In essence, Mongoose acts as a bridge between the flexible, document-based nature of MongoDB and the structured approach often desired in backend development.
