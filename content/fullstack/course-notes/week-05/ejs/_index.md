---
title: 4. EJS as a Templating Engine
---

## What is a Templating Engine?
- A templating engine is a tool that enables developers to create dynamic HTML pages by embedding data within templates.
- It allows for the separation of HTML structure and application logic, making code more maintainable.

## Why Use Templating Engines?
- **Dynamic Content**: Easily generate content based on user input or database queries.
- **Code Reusability**: Create reusable components to reduce code duplication.
- **Separation of Concerns**: Keeps business logic separate from presentation logic, promoting cleaner code.
- Examples of templating engines:
  - **Pug (formerly Jade)**: A high-performance templating engine that uses a clean syntax and indentation instead of closing tags.
  - **Handlebars**: A popular templating engine that allows for more complex data structures and uses Mustache syntax for rendering.
  - **Mustache**: A logic-less templating engine that focuses on separating logic from templates, making it easy to read and maintain.
  - **Nunjucks**: A powerful templating engine created by Mozilla, featuring asynchronous rendering and template inheritance.

## Key Features of EJS
- **Simple Syntax**: EJS uses plain HTML with embedded JavaScript, making it easy to learn and integrate.
- **Variable Interpolation**: Embed variables within templates using the `<%= variable %>` syntax.
- **Control Structures**: Supports JavaScript control flow structures (e.g., loops and conditionals) for more complex logic.

## Example of an EJS Template
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    <ul>
        <% users.forEach(function(user) { %>
            <li><%= user.name %> - <%= user.email %></li>
        <% }); %>
    </ul>
</body>
</html>
```

## Rendering Dynamic Content with EJS
- To render the above EJS template from your Express server, you would write a route that looks like this:
    ```
    app.get('/users', (req, res) => {
        const users = [
            { name: 'Alice', email: 'alice@example.com' },
            { name: 'Bob', email: 'bob@example.com' },
            { name: 'Charlie', email: 'charlie@example.com' }
        ];
        res.render('userList', { users: users });
    });
    ```
- In this example:
  - The EJS template (userList.ejs) dynamically generates a list of users based on the data passed from the server.
  - The res.render function is used to send the rendered HTML to the client, with the users array provided as data.