---
title: 5. Monolithic vs Split Server Architecture
---
## Monolithic vs Split Server Architecture

When building a fullstack app with React and Express, you have two main ways to structure your project:

### 🧱 Monolithic Architecture

In a monolithic setup, both the **frontend and backend are served from the same Express server**.

#### How It Works
- You run Express on a single port (e.g., `localhost:3000`).
- Express serves:
  - Your **API routes** (e.g., `/api/users`)
  - Your **React build** (e.g., `index.html`, `main.js`, etc.)

#### Typical Flow
1. React is built into static files (`npm run build`).
2. Express serves those files from the `/dist` or `/build` folder.
3. Express also handles API requests like `/api/books`.

#### Benefits
- Easy deployment: one server handles everything.
- No CORS issues since frontend and backend share the same origin.
- Simpler hosting: upload to services like Heroku, Render, or Fly.io.

#### Downsides
- Slightly more setup in Express to serve static files.
- Slower development feedback loop if you're constantly rebuilding React.

#### Example Express Config (Monolithic)

```js
// Serve React static files
app.use(express.static(path.join(__dirname, 'dist')));

// Catch-all route to serve React's index.html
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});
```

### 🧩 Split Server Architecture (Two Server Setup)

In a split architecture, you run **React and Express as separate servers during development**.

#### How It Works
- React runs on one port (e.g., `localhost:5173` using Vite).
- Express runs on another port (e.g., `localhost:3000`).
- React sends API requests to Express using a **proxy**.

#### Typical Flow
1. You run `npm run dev` in the React project.
2. You run `node server.js` (or `npm run dev`) in the Express project.
3. React is configured to proxy requests (e.g., `/api/books`) to Express.

#### Benefits
- Fast React dev experience (hot reloading, no rebuilds).
- Frontend and backend can be developed independently.
- Easier to debug and test each part in isolation.

#### Downsides
- Need to set up a proxy (or deal with CORS).
- Need to deploy frontend and backend separately in production (or combine them later).

#### Example Proxy Setup (Vite)

```js
// vite.config.js
export default {
  server: {
    proxy: {
      '/api': 'http://localhost:3000',
    },
  },
};
```

### Summary

| Feature               | Monolithic                      | Split (Two Servers)             |
|-----------------------|----------------------------------|---------------------------------|
| Servers               | One (Express serves both)       | Two (React and Express separate)|
| Development Speed     | Slower (requires builds)        | Faster (hot reload + proxy)     |
| CORS Issues           | None                            | Must use proxy or handle CORS   |
| Deployment Simplicity | Easier                          | Slightly more complex           |
| Ideal For             | Small to medium apps            | Larger projects, better DX      |
