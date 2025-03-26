---
title: 6. Examples
---

Awesome! Here's the final section: **Examples**

---

### Examples

Let’s look at how these ideas come together in practice. Below are two typical examples of how to connect a React frontend to an Express backend—one using a **split server setup** (ideal for development) and one using a **monolithic setup** (ideal for production or small projects).

---

## 🔌 Example 1: Split Server Setup (Recommended for Dev)

### Folder Structure (two separate folders)
```
/project-root
  /client       ← React app (Vite)
  /server       ← Express app
```

### Development Flow
1. `cd client && npm run dev` → runs React on port 5173
2. `cd server && node index.js` → runs Express on port 3000
3. React is configured to **proxy API requests** to Express.

### Proxy Config (`client/vite.config.js`)
```js
export default {
  server: {
    proxy: {
      '/api': 'http://localhost:3000',
    },
  },
};
```

### React Fetch Example
```js
fetch('/api/books')
  .then(res => res.json())
  .then(data => setBooks(data));
```

### Express Route Example
```js
app.get('/api/books', (req, res) => {
  res.json([
    { id: 1, title: '1984' },
    { id: 2, title: 'Dune' }
  ]);
});
```

---

## 🧱 Example 2: Monolithic Setup (Recommended for Prod)

### Folder Structure (React build lives inside Express)
```
/project-root
  /client       ← React app
  /server       ← Express app (also serves React build)
```

### Deployment Flow
1. Build the React app: `cd client && npm run build`
2. Copy or serve the build folder from Express: `app.use(express.static('client/dist'))`
3. Express handles both **static files** and **API requests**

### Serve Static Files in Express
```js
const path = require('path');

app.use(express.static(path.join(__dirname, '../client/dist')));

app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, '../client/dist/index.html'));
});
```

---

## When to Use Which?

| Use Case                             | Recommended Setup         |
|-------------------------------------|---------------------------|
| Local development                   | Split server (React proxy)|
| Quick deployment (e.g., Heroku)     | Monolithic                |
| Hosting frontend separately (e.g., Netlify + Render) | Split or hybrid       |
| Want full control over everything   | Monolithic                |

---

## Summary

- You can structure your app using either a **split** or **monolithic** setup.
- In development, **split** is faster and easier to work with.
- In production, **monolithic** can simplify deployment.
- React handles the **view** and Express handles the **data**.
- Together, they form the backbone of most fullstack JavaScript apps.

---

Let me know if you want a project scaffold to go along with this—or a walkthrough exercise you can build with your students!