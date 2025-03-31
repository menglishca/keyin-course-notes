---
title: 5.1. Pet Adoption App
---

## Objective
- Build a fullstack app that displays a list of pets available for adoption and allows users to submit new ones.
- Use **React Router** for navigation between different pages in the frontend.
- Serve the React frontend from Express in production.
- Include one server-rendered page using EJS at `/admin` to display a full pet list for administrators.

### Features
1. **Pet API (Express)**
   - Build an API with the following routes:
     - `GET /api/pets`: return all pets
     - `POST /api/pets`: add a new pet
   - Use an in-memory array to store pet data.
   - Each pet should have a `name`, `type`, and `age`.

2. **React Frontend (with React Router)**
   - Use `react-router-dom` to define these routes:
     - `/`: Homepage with a welcome message
     - `/pets`: Display the list of pets
     - `/add`: A form to add a new pet
   - Navigation between routes should be seamless and handled by the frontend.
   - Each route should fetch or update data as needed from the backend API.

3. **Proxy in Development**
   - Use the `proxy` field in `package.json` to forward `/api` requests to Express during development.

4. **Serving React from Express in Production**
   - Run `npm run build` to generate the production version of the React app.
   - Use `express.static()` to serve the `build` directory.
   - Use `app.get("*")` to allow React Router to handle routing on the frontend.

5. **Server-Rendered Admin Page**
   - Add a route at `/admin` that renders an EJS page.
   - This page should:
     - Display the total number of pets
     - List each pet with name, type, and age

### Stretch Features
1. **Pet Detail View**
   - Add `/pets/:id` as a dynamic route in React.
   - Use a `GET /api/pets/:id` route on the backend to return a single pet.

2. **Delete Pet**
   - Add a `DELETE /api/pets/:id` endpoint.
   - Show a delete button next to each pet on the admin page.

3. **Form Validation**
   - Ensure that all form fields are required.
   - Add basic validation in React (e.g. positive age, text inputs not empty).

4. **Adoption Toggle**
   - Add a button to toggle a pet’s `adopted` status.
   - Include a `PUT /api/pets/:id` endpoint to support it.
