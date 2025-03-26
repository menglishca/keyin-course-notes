---
title: 4. Express and React
---

## Express and React

- React is responsible for the **frontend**—what the user sees and interacts with.
- Express is responsible for the **backend**—handling requests, sending data, managing authentication, and connecting to databases.
- To build a fullstack app, we need to **connect them** so they can communicate.

## Why Combine Express and React?

- React provides a fast, responsive UI in the browser.
- Express handles the logic, storage, and APIs behind the scenes.
- When combined, React can fetch data from Express and display it to the user.
- This is the foundation of most modern fullstack JavaScript apps.

## How Do They Work Together?

- React sends **HTTP requests** (usually `GET`, `POST`, `PUT`, `DELETE`) to the Express server.
- Express listens for those requests on specific **routes** (e.g., `/api/users`, `/api/posts`).
- Express responds with **JSON data**, which React then uses to update the UI.

### Example Flow

> A React app that shows a list of books:

1. React component mounts.
2. React sends a `GET` request to `http://localhost:3000/api/books`.
3. Express receives the request at `/api/books` and queries the database.
4. Express sends back an array of books as JSON.
5. React updates the page to display the list of books.

### Example Code Snippets

#### Express Route
```js
// In Express
app.get('/api/books', (request, response) => {
  response.json([
    { id: 1, title: '1984' },
    { id: 2, title: 'Brave New World' },
  ]);
});
```

#### React Fetch Call
```jsx
useEffect(() => {
  fetch('http://localhost:3000/api/books')
    .then((res) => res.json())
    .then((data) => setBooks(data));
}, []);
```

## Where Does Express Run?

- Express typically runs on **port 3000** or **port 5000** during development.
- React (using Vite or CRA) usually runs on **port 5173** or **port 3000**.
- Since they’re on different ports, we have to deal with **CORS** (Cross-Origin Resource Sharing) or use a **proxy** to forward requests.

## Two Common Setups

We’ll cover these in more detail in the next section:
- **Monolithic**: React is built and served by Express (everything on one server).
- **Split**: React and Express run separately in development; connected by proxy.
