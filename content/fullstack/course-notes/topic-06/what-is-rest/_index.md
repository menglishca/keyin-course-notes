---
title: 2. REST and RESTful APIs
---

## What is REST?
- **REST** (or Representational State Transfer) is a way of designing APIs in web applications
  - Essentially, **REST** defines a set of rules to help create scalable, flexible and maintainable web services
- **REST Rules**
  1. **Statelessness**
    - Each request from the client to the server must contain all necessary infomration
    - The server doesn't store any client context between requests
    - **Note**: Many real-world systems slightly _bend_ this rule when managing user sessions.
        - Often times, when a user logs into a site (assuming the login is successful) the server will send them back a session id (usually stored in a cookie)
        - On each subsequent request, the user will send along their session ID to indicate who they are
        - The server (usually) has a cache containing all active session IDs, then when the user makes a request they can lookup the provided session ID to see who it belongs to and if it should be active
        - _Technically_ storing that cache means the server isn't actually stateless
        - However, managing some state on the server (especially for user sessions) means we can avoid things like sending the user's password along with every request
    - The goal in REST should be to minimize the state stored on the server wherever possible
2. **Resource-Oriented**: Resources (like books, users, etc.) are represented by URLs. You interact with resources using HTTP methods.
3. **Uniform Interface**: Resources are accessed and manipulated in a standard way, typically using HTTP methods (GET, POST, etc.).
4. **Layered System**: Due to REST APIs being stateless, there can be multiple layers or even multiple servers running the same REST API and the client shouldn't have to know

## What Does it Mean to Have a RESTful API?
- A **RESTful API** is an API that follows the principles of REST.
  - It exposes resources (like books) via URLs.
  - It uses HTTP methods to perform actions on those resources.
  
- **Example (Library System)**:
  - **Resources**: Books in the library are treated as resources.
  - **URLs**: 
    - `/books`: Represents the entire collection of books.
    - `/books/1`: Represents a specific book.
  - **HTTP Methods**:
    - `GET /books`: Retrieves all books.
    - `POST /books`: Adds a new book (with data in the **request body** as JSON).
    - `PUT /books/1`: Updates book details.
    - `DELETE /books/1`: Deletes a book.