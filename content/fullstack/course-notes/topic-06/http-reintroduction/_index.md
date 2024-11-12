---
title: 1. Re-Introduction to HTTP
---

## A Quick Aside, Our Example
- I think it's a little easier to learn things when we have something concrete to tie it to
- Throughout this topic, consider the following example:
  - Suppose we want to create a REST API for a **library system** 
  - Our system needs to manage both **books** and **users**
  - We must be able to get a list of all books/users, add new books/users, update existing books/users and remove books/users
- As we discuss new pieces of REST APIs we'll be relating them back to how they might apply to our library

## What is HTTP?
- **HTTP** (or Hypertext Transfer Protocol)  is the protocol that the web, as we know it, is built upon
- It's a protocol used to transfer information between clients (such as web browsers) and servers (like the one's we've written with Express)
  - Traditionally HTTP was designed to transfer "hypertext" such as HTML, but it is now used as a general data transfer protocol for the internet

## How does HTTP work?
- HTTP operates on a **request-response model**
- This means:
    - The client (often a web browser) sends a **request** to the server (such as asking the server for a specific web page)
    - The server recieves this request, processes it, and sends back a **response** (such as sending back the actual requested web page)
- Each request is standardized and includes the following components:
  - A **HTTP Method** which tells the server what action the client is trying to perform
  - A **URL** which tells the server the location of the resource the client is trying to interact with
  - A collection of **Headers** which contain extra data about the request (such as what type of data the client is sending, or any cookies the client might have)
  - Some requests also have a **body**. This is used when attempting to send data to the server, any data being sent would be placed in the body

## HTTP Methods
- As mentioned earlier, HTTP methods are used by the client to tell the server what action they are trying to perform on a server
- Each HTTP request must have a method

### GET
- **Purpose**: Retrieve, or get, data from a server
- **Example**: Sending a `GET` request to `https://google.com/` asks Google servers for the Google homepage
- **Query Parameters**
  - With a `GET` request, you're only meant to retrieve data from a server and not provide it to the server
  - But sometimes you do have specifics you need to provide about the data you want
  - To work around this, we can use **query parameters** in the URL of our `GET` request to specify what data we want
  - **Example**:
    - Sending a `GET` request to `https://library.com/books` might get you the entire list of books that library has
    - However, if we just wanted the information for books published in 2024 we might send a `GET` request to: `https://library.com/books?publishYear=2024`
    - The piece after `books` (`?publishYear=2024`) are the **query parameters**
    - In this case we just have the one parameter, `publishYear`, which has a value of `2024`
  - To send multiple parameters, we would separate each one with an `&` symbol
  - **Example**:
    - If we just wanted the information for horror books published in 2024 we might send a `GET` request to: `https://library.com/books?publishYear=2024&genre=horror`
    - Now we have two parameters. `publishYear` with a value of `2024` and `genre` with a value of `horror`

### POST
- **Purpose**: Create new data on the server
- How is that new data provided?
  - The data is sent in the **body** of the request, typically in a `JSON` format
  - `JSON` (or Javascript Object Notation) is a lightweight format used to send and receive structured data
- **Example**: To add a new book to our library, a client might send a `POST` request to `/books` with the book details in the body
  ```JSON
  {
    "title": "1984",
    "author": "George Orwell"
  }
  ```
  - When the server recieves the request it knows the client wants to create a new book
  - Then it can read the data from the body of the request and create the corresponding book

### PUT
- **Purpose**: Replace existing data on the server
- How is the data provided?
  - Similar to a `POST` request, data is sent in the body (also frequently as `JSON`).
- **Example**: To update the details of a book, the client sends a `PUT` request to `/books/1` with new book data in the body
  ```json
  {
    "title": "Animal Farm",
    "author": "George Orwell"
  }
  ```

### DELETE
- **Purpose**: Remove data from the server.
- **Example**: A `DELETE` request sent to  `/books/1` asks to remove the book with ID 1 from the library.