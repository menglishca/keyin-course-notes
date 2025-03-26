---
title: 4. Monolithic vs Split Server Architecture
---

## Monolithic vs Split Server Architecture
- When it comes to building a fullstack web app, how we break it down can be confusing
- Nowadays, we commonly split it into two pieces, the frontend and the backend but that doesn't always translate well to real life
  - As an example, when we work with server side rendering (like `ejs`), there isn't really a frontend, at least not a separate frontend as the "frontend" is just integrated directly into the backend
- In addition, there's also the question of how we split up the backend
- Technically speaking, given the way things work, we can split up the backend in any number of ways
  - All the data is sent over HTTP requests, so it doesn't matter where those requests really go, as long as they send back the right data
- However, for the purposes of this, we're going to focus on two ways of splitting up the backend: a monolith and a split server architecture
  - These aren't really industry standard terms, but I thought they illustrated the point well
- **Note**: When using client-side rendering (like React) the primary purpose of your backend is to serve static files and handle API requests. There's no rendering happening on the server, like we've been doing so far with our server side rendering with `ejs`.

### Monolithic Architecture
- In a monolithic setup, both the backend handles serving the static files required for the frontend and it handles the API requests

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

### Split Server Architecture
- In a split architecture the React static files (or really any frontend files) are sent from one server and the API is handled by another

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
