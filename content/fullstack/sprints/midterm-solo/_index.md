---
title: 1. Mid Term Sprint - Solo
cascade:
  type: docs
---

## Objective
Complete the provided Express application **independently** to generate fictional travel itineraries.
**Due date: March 6th, 2026 at 11:59PM**

### Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/ylihB2hU) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

### Steps to Create Your Own Repository

1. Click the link above, and select your name on the list that appears, if you haven't already
 
1. Click the "Accept this assignment" button

1. Once your repository is created, **clone your new repo** to your local machine:
    ```bash
    git clone <your-new-repo-url>
    ```

1. Navigate into the project directory and install the necessary dependencies:
    ```bash
    cd <your-new-repo-name>
    npm install
    ```

1. **Run the app:**
    ```bash
    npm start
    ```
    This will start the server at `http://localhost:3000/`.

1. **Run tests:**
    ```bash
    npm test
    ```
    This will run the unit tests for the application.

- By using this template, you'll have the project structure and initial setup ready to go, so you can focus on building the functionality!
- **Note:** This code has been provided as a **starting point** for you to work from. It is by no means a completed project.

## Requirements
### Data Requirements
- Example data has been included in the base repo, which is more than sufficient for the project, if you wish to use it.
- No additional data sources are required.

### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, please make sure that any extra packages are relevant and add value to your project.
  - No other packages **should be required**
    - If you feel the project cannot be completed without an additional package (like express sessions), please reach out, as it means I might've made a mistake.
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks like React.
- Your application must run on **Node.js** using **Express** for the backend.

### Functional Requirements

- When the application starts, generate a random itinerary for each location.
- **Itinerary Requirements**
  - The application should generate **fictional travel itineraries** (see below)
  - When the user visits the homepage **a random featured itinerary** should be displayed
  - Users should be able to **select a destination** from a dropdown to view a more detailed itinerary for that location.

- **Functionality**
At minimum, implement the following functions:
1. **Generate an Activity**
   - Generates an activity with:
     - A name
     - A brief description
     - A randomly generated price
     - Whether it’s a "highlight activity" (randomly determined)
1. **Generate a Full Itinerary**
   - Creates an itinerary for a selected destination with **3-7 activities**.
    - An intinerary shouldn't contain duplicates of an activity.
    - The number of activities on an itinerary should be randomly selected, but should somewhere between 3-7 activities
   - Calculates the total estimated trip cost.

**You may create additional functions** beyond these requirements, but at minimum, the above functions must be implemented.

## Unit Tests
Your project must include unit tests to verify that the **core functions**  outlined above work correctly and produce valid output

At a minimum, your tests should confirm that:
- The **activity generation function** produces an activity with all required properties and appropriate value types/ranges
- The **itinerary generation function** creates an itinerary that contains between 3–7 activities, contains no duplicate activities, and correctly calculates the total cost.

You are responsible for determining the **specific test cases** needed to verify correct functionality.

## Required Pages
### Home Page
- Include a dropdown that allows a user to **select a destination** for a more detailed itinerary.
  - Selecting a destination redirects them to the "Itinerary Page" (see below).
- Display a **random featured itinerary** when the page loads.

### Itinerary Page
- Display the **full itinerary** for the selected destination.
- Each itinerary should include:
  - The destination name
  - List of activities
  - Estimated total budget

## REST API Endpoints
Your project must expose the following REST API endpoints. Ensure that your endpoints return JSON responses that are consistent using some type of standardized response (i.e. errors always having an `error` field). As well, make sure you use appropriate HTTP status codes.

- `GET /api/itineraries`
  - Returns a list of all generated itineraries (one per destination).
  - Each item should include the destination name, number of activities, and total cost.
- `GET /api/itineraries/:destination`
    - Returns the full itinerary for the specified destination.
- `GET /api/itineraries/:destination/highlights`
  - Returns only the highlight activities for a given destination's itinerary.

Input validation must be applied where appropriate (e.g., unknown destinations, malformed parameters), errors must return consistent, structured JSON and proper HTTP status codes should be returned

## Pass Outstanding Criteria
- Achieve a grade of 85% or above.

## Submission Guidelines
- Ensure the application runs correctly using `npm start`, and all features are implemented as specified.
- Ensure all tests pass using `npm test`.
- Submit your GitHub repository **link** on Teams under the appropriate assignment.
- **Late submissions** will follow [Keyin's late assessment policy](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD15Jan.2026-Apr.20262/IQB27M_3TuM7R4CffHQTsbiYAThObHy9b2Ta1SriDyA45k4?e=npqFCu).
- If an extension is needed, please reach out before the due date.

## Notes/Questions
- You can find examples from class [here](https://github.com/menglishca/keyin-code-samples).
- If anything is unclear or you need help, reach out on Teams or via email.
- Support sessions are available during lecture breaks and with the TA.


## Grading Rubric
| **Category**                 | **Criteria**                                                                                                                                                                | **Points** |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Site Functionality**       | **Home Page**: Displays destination dropdown and a random featured itinerary. Dropdown redirects correctly.                                                                 | 10         |
|                              | **Itinerary Page**: Displays a full itinerary with a list of activities and total budget for the selected destination.                                                      | 10         |
| **Site Functionality Total** |                                                                                                                                                                             | **20**     |
| **REST API**                 | **GET /api/itineraries**: Returns all itineraries with correct structure and status code                                                                                    | 5          |
|                              | **GET /api/itineraries/:destination**: Returns correct itinerary with proper error handling and status codes                                                                | 15         |
|                              | **GET /api/itineraries/:destination/highlights**: Returns highlights with proper error handling and status codes                                                            | 10         |
| **REST API Total**           |                                                                                                                                                                             | **30**     |
| **Functions**                | **Generate Activity Function**: Correctly generates an activity with all required details. Has appropriate unit test coverage to verify functionality.                      | 15         |
|                              | **Generate Itinerary Function**: Correctly generates an itinerary with 3-7 activities and calculates the budget. Has appropriate unit test coverage to verify functionality.| 15         |
| **Functions Total**          |                                                                                                                                                                             | **30**     |
| **Code Quality**             | **Structure and Readability**: Code is well-organized, readable, and follows best practices.                                                                                | 10         |
| **Code Quality Total**       |                                                                                                                                                                             | **10**     |
| **Git Hygiene**              | **Commit Frequency**: Regular commits reflecting meaningful progress throughout development.                                                                                | 5          |
|                              | **Commit Quality**: Commit messages are clear, concise, and descriptive.                                                                                                    | 5          |
| **Git Hygiene Total**        |                                                                                                                                                                             | **10**     |
| **Total Points**             |                                                                                                                                                                             | **100**    |
