---
title: QAP 2 - Habit Tracker REST API  
cascade:
  type: docs
---

### Objective
Build a small REST API with Express that lets a user manage daily habits (e.g., “Drink Water”, “Exercise”). The app should have full CRUD endponts with proper input validation and error handling.

**Due date: February 17th, 2026 at 11:59PM**

### Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/lqboCF2-) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

#### Steps to Create Your Own Repository
1. Click the GitHub Classroom assignment link and choose your name.  
2. Click **“Accept this assignment.”**  
3. Clone your newly created repository:
   ```bash
   git clone <your-new-repo-url>
   ```
4. Navigate to the folder and install dependencies:
   ```bash
   cd <your-new-repo-name>
   npm install
   ```
5. Start the app:
   ```bash
   npm start
   ```

## Requirements
### Technology Requirements
- Your application must run on **Node.js** using **Express** for the backend.
- All data must be stored **in-memory** (e.g., arrays/objects in JavaScript). Assume only **one user** uses the API at a time.
- No database, ORMs, or external services are required or expected.
- You are allowed to use **additional npm packages** to enhance your application. However, ensure that any extra packages are relevant and add value to your project. Please note, outside of express no external packages should be required for this project.
- The project is **API-only**. No frontend or templating engine is required.

### Application Requirements
You will build an API that manages habits and allows for daily habit checkins

#### Habit Model
Each habit should have at least:
- `id` (string or number, unique per habit)
- `name` (string, required, e.g., "Drink Water")
- `description` (string, optional)
- `targetPerWeek` (number, required, e.g., 3 times per week)
- `createdAt` (date or string, set when created)

#### Check-in Model
A “check-in” represents the user completing a habit on a given day.

Each check-in should have at least:
- `id` (string or number, unique per check-in)
- `habitId` (must reference an existing habit)
- `date` (string in `YYYY-MM-DD` format)
- `completed` (boolean, default `true`)

You can add other fields to your models if you wish, but they're not required.

### Required API Endpoints

On top of the particular routes required, each route should (where necessary):
- Return JSON responses for successful requests
- Include proper error handling and input validation
- Use proper HTTP status codes for failed requests
- Have a consistent error response across the API (i.e. each error returns JSON with an `error` field).

The particular error handling/validation required for each route is up to you to figure out

#### Habit Routes
- `GET /habits`  
  - Returns a list of all habits.

- `GET /habits/:id`  
  - Returns a single habit by `id`

- `POST /habits`  
  - Creates a new habit via the provided JSON body

- `PUT /habits/:id`  
  - Performs a complete replacement of the habit with the provided ID using the data provided in the JSON body

- `DELETE /habits/:id`  
  - Deletes a habit and its related check-ins

#### Check-in Routes
- `GET /habits/:habitId/checkins`  
  - Returns all check-ins for a specific habit

- `POST /habits/:habitId/checkins`  
  - Creates a new check-in for a specific habit

You are free to add additional endpoints (e.g., to get a weekly summary) if you want, as long as the required ones are implemented correctly.

### Error Handling Requirements

- You must design and use **appropriate HTTP status codes** for both success and error scenarios.  
- Error responses (body format, fields, messages) must be **consistent** across the API.  
- You are free to choose how errors are represented and handled (JSON structure, fields, etc.), but:
  - The format should be the same for all error responses.
  - The status codes should clearly communicate the type of problem.

## Submission

- Ensure the app runs with `npm start`.
- Submit the assignment by providing the link to your GitHub Classroom repository on Teams under the appropriate assignment.
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD15Jan.2026-Apr.20262/IQB27M_3TuM7R4CffHQTsbiYAThObHy9b2Ta1SriDyA45k4?e=npqFCu) 
  - If an extension is needed, please reach out to me directly before the assignment due date.

## Grading Rubric

| Category                                  | Criteria                                                                            | Points  |
|-------------------------------------------|-------------------------------------------------------------------------------------|---------|
| **API Functionality**                     |                                                                                     | **40**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Habit Endpoints   | All required `/habits` CRUD endpoints implemented and working.                      | 20      |
| &nbsp;&nbsp;&nbsp;&nbsp;Check-in Endpoints| Check-in routes work and correctly relate to habits.                                | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;JSON Responses    | Successful responses return JSON with a clear structure.                            | 10      |
| **Correctness & Error Handling**          |                                                                                     | **25**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Validation Logic  | Input handling behaves correctly for valid and invalid data.                        | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Status Codes      | Status codes are appropriate, intentional, and well-chosen.                         | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Error Consistency | Error responses are consistent in format across all endpoints.                      | 5       |
| **Business Logic & Design**               |                                                                                     | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;In-Memory Data    | Habits and check-ins are tracked correctly during runtime.                          | 10      |<!-- collapsed -->
| **Code Quality**                          |                                                                                     | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability       | Code is clean, consistent, and logically organized.                                 | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Maintainability   | Sensible naming, small functions, minimal duplication.                              | 5       |<!-- collapsed -->
| **Git Hygiene**                           |                                                                                     | **15**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency  | Frequent, meaningful commits throughout development with clear descriptive messages | 15      |
| **Total Points**                          |                                                                                     | **100** |