---
title: 4. Databases and software
---

## Why and how are databases used in software?
- **Persistent Data Storage**
  - Databases provide us a way to store any kind of data relative to our application, and keep that data in between sessions
  - This means unlike just keeping something in memory, the data isn't going to be lost when the application restarts
- **Data integrity**
  - Databases provide us with confidence when it comes to storing or retrieving data
  - When requesting data from a database, or placing data, we know that if the database tells us everything went smoothly we can trust those results
  - We can also be confident that the data we store will remain in-tact over time, as long as the database is kept

## Example use cases for databases
- An online store with many products for sale, customers signing up and placing orders
  - A database could be used to track stock of the products, the customer account details and the details of past and present orders
- An online blog
  - A database could track the blog posts, comments made on the posts, and the authors of each post