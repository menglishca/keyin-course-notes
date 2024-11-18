---
title: 1. Introduction to NoSQL
---

## What is NoSQL?
- NoSQL stands for **"Not Only SQL"**, representing databases that provide flexible, non-tabular data storage.
- Unlike traditional relational databases (SQL), NoSQL databases can store structured, semi-structured, or unstructured data.  
  **Example**:  
  - **Structured Data**: A database of user profiles where every user has a name, email, and age.
  - **Semi-structured Data**: Log files where each entry has variable attributes (e.g., error messages with different parameters).
  - **Unstructured Data**: Storing images, videos, or text documents as data blobs in a database.

## Characteristics of NoSQL Databases:

- **Schema-less**: Data can be stored without a predefined structure.
- **Horizontally Scalable**: Handle increasing amounts of data by adding more servers.
- **High Performance**:  
  - Optimized for fast reads/writes, often at the expense of complex querying.  
  - **Explanation**:  
    - NoSQL databases prioritize speed and efficiency by storing data in a way that's easy to retrieve but may not support intricate relationships or multi-step joins found in SQL. For example:  
      - A social media feed retrieves user posts quickly without needing to calculate relationships in real-time.  
      - However, performing a query like “find all users who commented on posts liked by another user” might be slower or more complex.
  
- **Flexible Data Models**: Instead of just storing data in strict tables, multiple data models (such as key-value, document, column-family, or graph models) are all supported

## Comparing NoSQL to SQL

| Feature                 | SQL (Relational Databases)        | NoSQL (Non-Relational Databases)        |
|-------------------------|-----------------------------------|-----------------------------------------|
| **Structure**           | Fixed schema (tables, rows)       | Flexible schema (JSON, key-value, etc.) |
| **Data Relationships**  | Strongly enforced relationships   | Loosely related or no relationships     |
| **Scaling**             | Vertical scaling (bigger servers) | Horizontal scaling (more servers)       |
| **Query Language**      | SQL (Structured Query Language)   | Varies by database (e.g., JSON, APIs)   |
| **Transaction Support** | Strong ACID compliance            | Eventual consistency or BASE model      |
| **Use Case**            | Complex queries, analytics        | Real-time data, unstructured data       |
| **Examples**            | MySQL, PostgreSQL, Oracle         | MongoDB, Redis, Cassandra               |