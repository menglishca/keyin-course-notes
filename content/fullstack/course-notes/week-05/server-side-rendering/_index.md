---
title: 3. Server Side Rendering
---

## What is Server-Side Rendering (SSR)?
- In SSR, the server renders the entire HTML content and serves it directly to the browser.
- This allows the browser to display the fully rendered page without requiring additional client-side rendering.

## What is Client-Side Rendering (CSR)?
- CSR is a rendering approach where the browser downloads a minimal HTML document, along with JavaScript, which then dynamically generates the content.
- In this model, JavaScript frameworks like React handle the rendering of the user interface.
- React is a common type of Client Side Rendering
    - When a user requests a React application, the server sends the base HTML file and the JavaScript bundle.
    - The JavaScript code runs in the browser, fetching data from APIs and rendering the components dynamically.
    - For instance, a React app could display a list of items by fetching data from an API once it is loaded in the browser. The initial page would be empty until the JavaScript executes and populates the content.

## How does Server Side Rendering compare to Client Side Rendering?
- **SSR**: HTML is generated on the server for every request, providing faster initial page loads and better SEO.
- **CSR**: HTML is generated on the client-side using JavaScript. The browser needs to wait for JavaScript to load and execute, making the initial load slower but subsequent interactions faster.

| Factor                  | Server-Side Rendering (SSR)        | Client-Side Rendering (CSR)        |
|-------------------------|------------------------------------|------------------------------------|
| **Performance**          | Faster initial load               | Slower initial load, faster after  |
| **SEO**                  | Strong SEO (ready-to-crawl pages)  | Requires extra effort for SEO      |
| **Server load**          | Higher, as server does more work   | Lower, offloads more to the client |
| **User interaction speed**| Slower interaction post-load      | Faster interaction post-load       |

## Why use Server Side Rendering?
- **SEO-focused websites**: Search engines can easily index content that is pre-rendered on the server.
- **Content-heavy applications**: Applications that rely heavily on content need faster initial loads to reduce bounce rates.
- **Enhanced User Experience**: The page renders immediately, which can be crucial for slow networks or devices with limited processing power.

## Trade-offs of SSR
- **Server load**: Each request requires the server to generate the HTML, which can be resource-intensive for high-traffic sites.
- **Slower interactions post-load**: Since the client needs to wait for a round trip to the server for updates, interactive parts of the page may feel slower compared to CSR.
- **Caching complexities**: Managing dynamic content and caching can become more challenging with SSR due to server-side processing.
