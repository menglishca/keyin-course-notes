---
title: 3. How do React apps work?
---

## How Do React Apps Work?

- React apps are **single-page applications (SPAs)**.
- Instead of loading a new HTML page from the server every time a user navigates, a React app loads a **single `index.html` file** and dynamically updates the view using JavaScript.
- Navigation happens entirely on the **client side**, thanks to client-side routing.

## Why Do Development and Production Differ?

The process for running a React app in development is **intentionally different** from production to optimize for **speed while building** and **performance when deployed**.

### 🛠 Development: Optimized for Speed & Feedback

- In development, React apps are run using a **development server**—usually Vite or Create React App.
- This server provides tools to speed up the coding process:
  - **Hot reloading / fast refresh**: Automatically updates the browser when you save files.
  - **Source maps**: Help you debug by pointing errors to the original line of code.
  - **Proxy setup**: Lets you forward API requests to a backend like Express to avoid CORS issues.
  - **Loose optimization**: Code is easier to read and debug because it isn't minified or bundled tightly.

> 🔧 Development is like working in a kitchen with everything spread out—it’s messy, but efficient for the chef.

### 🚀 Production: Optimized for Performance & Delivery

- When you're ready to deploy the app, you create a **production build** by running a command like `npm run build`.
- This build process:
  - Compiles your JSX and JavaScript into plain, browser-compatible code.
  - **Minifies and bundles** all your code into a small number of efficient files.
  - Outputs static files (`index.html`, `main.js`, `style.css`, etc.) in a `dist/` or `build/` folder.
  - These static assets can then be served by a server like Express, or by platforms like Netlify or Vercel.

> 🍽 Production is like the final plated meal—clean, finished, and ready to serve to the user.

### Summary: Dev Server vs Production Build

| Feature                    | Development Server                  | Production Build                   |
|----------------------------|--------------------------------------|------------------------------------|
| Purpose                    | For coding, testing, debugging       | For deployment and user access     |
| Output                     | Temporary files served from memory   | Static assets in `dist/` or `build/` |
| Code Format                | Readable, unminified                 | Minified and bundled               |
| Source Maps                | Included for debugging               | Usually disabled                   |
| File Size                  | Larger, not optimized                | Smaller and optimized              |
| Served By                  | Vite or CRA local server             | Express, CDN, or static host       |

## What is Client-Side Routing?
- Normally in web development, visiting a new page (like `/about`) causes a **new HTTP request** and loads a completely different HTML file from the server.
- In a React app, **React Router** intercepts the navigation and dynamically updates the content **without refreshing the page**.

## How Does It Work?
- You define routes using `<Route>` components inside a `<BrowserRouter>`.
- When the URL changes, React Router renders the appropriate component.
- **The browser doesn’t request a new page**—React just swaps out the content on the screen.

## Basic Example using React Router
```jsx
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';

function Home() {
  return <h2>Home Page</h2>;
}

function About() {
  return <h2>About Us</h2>;
}

function App() {
  return (
    <BrowserRouter>
      <nav>
        <Link to="/">Home</Link> | <Link to="/about">About</Link>
      </nav>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/about" element={<About />} />
      </Routes>
    </BrowserRouter>
  );
}
```

## What Happens Here?
- The browser loads `/index.html` and mounts your React app.
- Clicking a `<Link>` updates the browser’s URL **without triggering a full page refresh**.
- React Router intercepts the URL change and renders the corresponding component (`<Home />` or `<About />`).

## Summary

- The development server provides live-reloading, easier debugging, and proxying API requests to Express.
- The production build is optimized and bundled into static files that can be deployed anywhere.
- React uses **client-side routing** to manage navigation without full-page reloads, making the app feel fast and smooth.
