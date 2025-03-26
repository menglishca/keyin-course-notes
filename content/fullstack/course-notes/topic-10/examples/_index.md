---
title: 5. Examples
---

## Objective
- Build a fullstack app that displays a list of students, allows new students to be added, and shows individual student details.
- The app should use client-side routing with React Router.
- The React frontend should be served by Express in production.
- One route (`/ssr`) should be rendered using EJS server-side, demonstrating how to mix server-rendered and React-rendered pages.

### Features
1. **Student API (Express)**  
    - Build a simple API with the following routes:
      - `GET /api/students`: return all students
      - `GET /api/students/:id`: return a single student by ID
      - `POST /api/students`: add a new student
    - Use in-memory storage (an array) to manage student data.
    - Each student should have an `id`, `name`, and `program`.

2. **React Frontend (Client-Side Routing)**
    - Use React Router to create the following pages:
      - `/`: Display the list of all students
      - `/add`: A form to add a new student
      - `/students/:id`: A detail page for one student
    - Fetch data from the Express API and display it in the UI.

3. **Proxy in Development**
    - Configure Vite to proxy `/api` requests to the Express backend to avoid CORS issues:

4. **Serving React from Express in Production**
    - After building the React app (`npm run build`), serve the static files from Express
  5.Server-Rendered Report Page
    - Add a route at `/report` that renders an **admin report page** using EJS.
    - This page should:
      - Show the **total number of students**
      - List the **names and programs** of all students

### Stretch Features
1. **Student Detail View**
    - When viewing `/students/:id`, fetch and display the full information for that student.
    - If the student is not found, show a "Not Found" message.
2. **Form Validation**
    - Prevent submitting a student without a name or program.
    - Optionally, check that student names are unique.
3. **Delete Student**
    - Add a `DELETE /api/students/:id` endpoint.
    - Include a "Delete" button on the detail page.
4. **Bonus: Edit Student (Optional)**
    - Add a form to update a student's name or program.
    - Create a `PUT /api/students/:id` route in Express.