---
title: 1. Webservers and Express.js
---

## What is a Web Server?
- A piece of software that listens on a specific port for HTTP requests from clients
    - Typically port `80` for HTTP requests and `443` for HTTPS requests
- When a request is made, the web server sends back the client a response (such as a HTML or JSON file)
- Common responsibilities include:
  - Serving static files (HTML, CSS, JS)
  - Handling form submissions
  - Executing server-side code
  - Managing APIs
  - Logging requests and errors
  - Managing sessions, authentication, and more
- Some common web servers are:
  - **Apache HTTP Server**: One of the oldest and most widely used web servers.
  - **Nginx**: Known for its high performance and ability to handle a large number of concurrent connections. It's often used as a load balancer
  - **Caddy**: A modern web server written in Go that automatically handles HTTPS by default, known for it's easy setup and ability to handle lots of connections

## What is Express.js?
- Express.js is a Node.js _framework_ that simplifies the process of creating a web application
  - Express provides tooling to build the back end of a web application in Javascript using Node.js as the web server
- Express.js aims to be a rather minimal framework by default, allowing users to bring in extra functionality through the use of plugins
  - i.e. You could find a plugin to handle user authentication in an Express.js server, so you don't have to write all that code yourself

## Why Express.js?
- Express.js allows you to easily write your backend web server in the same language as your front end
- Makes it easy to add custom **middleware** to handle incoming requests
  - **Middleware**: Functions that go between the incoming requests and the logic used to process a specific request
    - Example: File upload server
      - User clicks the button to upload a new file, but user's must be authenticated before uploading
      - Middleware would live between the incoming upload request and the actual upload code and would check if the user is authenticated
      - That way, the file upload doesn't need to check authentication itself, and we only have to write those authentication checks once
    - Middleware can be used for lots of things, like handling user cookies, parsing incoming data, logging requests, etc.
- Express.js has a huge ecosystem around it
    - That means it's plugin support can be truly realized, as there are plugins for _almost_ everything
- It scales really well, due to Node.js non-blocking I/O and event-driven nature
    - Meaning it can handle large volumes of requests and is not just for small apps

## Summary:
Express.js acts as a thin layer on top of Node.js, simplifying the process of handling HTTP requests, routing, and generating responses. It's a powerful yet simple framework for building modern web servers.
