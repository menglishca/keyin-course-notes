---
title: 3. How do React apps work?
---

## What is Client Side Rendering?
- Client Side Rendering is when a browser uses (primarily) something like Javascript to build the HTML to render content on the page
- This is contrasted against server side rendering where the server creates the full HTML and sends that baked HTML down to the client
  - `ejs` is a framework for server side rendering, whereas `React` is a framework for client side rendering

## How Do React Apps Work?
- As previously mentioned, primarily, React apps are **single-page applications (SPAs)**.
  - Technically, they don't have to be, but frequently that is how React is used
- When a React app loads in the browser, typically a single `.html` file is loaded (what I'd call a boostrap file)
- This `.html` file loads the site's javascript (including the React framework and all the site's React components). This starts the React render process and the page renders
- Navigation happens entirely on the **client side**, thanks to client-side routing.

## Developing a React App
- It's important to note that the process and setup for running a React app during development is **intentionally different** from the way we would run that same app in a production environment
- This is because the things that make development easy and fast don't translate to a performant website. So the processes are intentionally different

### The (Stereotypical) Development Process
- In development, React apps are often run using a **development server**, often times this is something like Vite or Webpack
  - The `create-react-app` package uses `webpack`
- These development servers usually include some variation of the following tools to speed up the dev process:
  - **Hot reloading / fast refresh**: Automatically updates the browser when you save files.
  - **Source maps**: Help you debug by pointing errors to the original line of code.
  - **Proxy setup**: Lets you forward API requests from one address to another server to avoid CORS issues.
  - **Loose optimization**: Code is easier to read and debug because it isn't minified or bundled tightly.

### A (Stereotypical) Production Process

- When you're ready to deploy the app, you usually create a **"production build"**
  - Often times this is done with a command like `npm run build`.
- This build process (usually):
  - Compiles your JSX and JavaScript into plain, browser-compatible code.
  - **Minifies and bundles** all your code into a small number of efficient files
    - The idea is that we remove any unnecessary characters from the code to reduce size, and then pack that code into files to avoid having to request too many files from the user's browser
  - Outputs static files (`index.html`, `main.js`, `style.css`, etc.) in a dedicated build folder
  - These static assets are then placed somewhere they can be served. This means they can be served by something like an `Express` server or a webhost like Netlify or Github Pages

### Summary: Dev Server vs Production Build

| Feature                    | Development Server                   | Production Build                     |
|----------------------------|--------------------------------------|--------------------------------------|
| Purpose                    | For coding, testing, debugging       | For deployment and user access       |
| Output                     | Temporary files served from memory   | Static assets in `dist/` or `build/` |
| Code Format                | Readable, unminified                 | Minified and bundled                 |
| Source Maps                | Included for debugging               | Usually disabled                     |
| File Size                  | Larger, not optimized                | Smaller and optimized                |
| Served By                  | Vite or CRA local server             | Express, CDN, or static host         |

## What is Client Side Routing?
- Normally in web development, visiting a new page (like `/about`) causes a **new HTTP request** and loads a completely different HTML file from the server.
- In a single-page React app, you can use **React Router** to intercept the navigation and dynamically update the content **without refreshing the page**.

### How Does It Work?
- You define routes using `<Route>` components inside a `<BrowserRouter>`.
- When the URL changes, React Router renders the appropriate component.
- **The browser doesn’t request a new page**—React just swaps out the content on the screen.

### Basic Example using React Router
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

### What Happens Here?
- The browser loads `/index.html` and mounts your React app.
- Clicking a `<Link>` updates the browser’s URL **without triggering a full page refresh**.
- React Router intercepts the URL change and renders the corresponding component (`<Home />` or `<About />`).
