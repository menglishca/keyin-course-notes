---
title: 5.1. Guestbook App
---

## Objective
- Build a fullstack guestbook app that displays a list of messages and allows users to add new messages via a form.
- The app should be built with a React frontend and an Express backend.
- In production, the React frontend should be served by the Express backend using the build output.
- The backend should also include a server-rendered route (`/admin`) using EJS to demonstrate mixing client-side React and server-side rendering.
- A base repository can be found [here](https://github.com/menglishca/base-sso-local-idp)

### Features
1. **Message API (Express)**
   - Create a simple API with the following routes:
     - `GET /api/messages`: return all messages
     - `POST /api/messages`: add a new message
   - Use in-memory storage (an array) to manage messages.
   - Each message should have a `name` and `text`.

2. **React Frontend (Static Client-Side App)**
   - Display the list of messages from the backend API.
   - Provide a form that allows users to add a new message.
   - Submitting the form should POST to the backend and update the list.
   - All frontend logic should be handled in React components.

3. **Proxy in Development**
   - Configure the React app (`create-react-app`) to proxy `/api` requests to the Express backend using the `"proxy"` field in `package.json`.
   - This avoids CORS issues during development.

4. **Serving React from Express in Production**
   - After running `npm run build` in the React app, serve the static files from the Express server.
   - Use `express.static()` to serve the `/build` directory.
   - Add a wildcard route (`*`) in Express to handle client-side routing in React.

5. **Server-Rendered Admin Page**
   - Add a route at `/admin` that renders an EJS template.
   - This page should:
     - Display the **total number of messages**
     - List all **names and messages** submitted

### Stretch Features
1. **Form Validation**
   - Prevent submitting a message without a name or text.
   - Display validation errors in the UI.

1. **Message Timestamp**
   - Add a timestamp to each message when it's created.
   - Display the date/time alongside each message.

1. **Delete Message**
   - Add a `DELETE /api/messages/:id` route.
   - Include a delete button for each message on the admin page.
