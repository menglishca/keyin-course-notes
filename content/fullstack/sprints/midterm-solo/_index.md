---
title: 1. Mid Term Sprint - Solo
cascade:
  type: docs
---

## Objective
Complete the provided Express application **independently** to generate fictional travel itineraries.
**Due date: October 31st, 2025, at 11:59 PM**

### Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/qtEuHeA7) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

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

- When the application starts, you should generate a random itinerary for each location.
- **Itinerary Requirements**
  - The application should generate **fictional travel itineraries** (see below)
  - When the application starts, it should choose **a random featured itinerary** to display on the homepage.
  - Users should be able to **select a destination** from a dropdown to view a custom itinerary for that location.

- **Functionality**
At minimum, implement the following functions:
1. **Generate a Random Destination**
   - Selects a travel destination from a predefined list.
2. **Generate an Activity**
   - Generates an activity with:
     - A name
     - A brief description
     - A randomly generated price
     - Whether it’s a "highlight activity" (randomly determined)
3. **Generate a Full Itinerary**
   - Creates an itinerary for a selected destination with **3-7 activities**.
    - An intinerary shouldn't contain duplicates of an activity.
    - The number of activities on an itinerary should be randomly selected, but should somewhere between 3-7 activities
   - Calculates the total estimated trip cost.

**You may create additional functions** beyond these requirements, but at minimum, the above functions must be implemented.

## Unit Tests
Your project must include unit tests to verify that the **three core functions**—destination selection, activity generation, and itinerary generation—produce valid output.

At a minimum, your tests should confirm that:
- The **destination selection function** returns a valid destination.
- The **activity generation function** produces activities with appropriate properties.
- The **itinerary generation function** creates an itinerary that meets the requirements outlined above.

You are responsible for determining the **specific test cases** needed to verify correct functionality.

## Required Pages
### Home Page
- Include a dropdown that allows a user to **select a destination** for a custom itinerary.
  - Selecting a destination redirects them to the "Itinerary Page" (see below).
- Display a **random featured itinerary** when the page loads.

### Itinerary Page
- Display the **full itinerary** for the selected destination.
- Each itinerary should include:
  - The destination name
  - List of activities
  - Estimated total budget

### Highlight Activities Page
- This page should **scan all generated itineraries** and display **highlighted activities grouped by location**.
- A **highlighted activity** is any activity that has been marked as a key experience for a location.
- The page should be structured with **sections for each location**, listing its highlighted activities.
- Each activity entry should include the **activity name and a link to the associated itinerary**, allowing users to view the full details of that trip.
- If a location has no highlighted activities, display a message telling the user that there are currently no highlighted activitities for that location

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
|                              | **Highlight Activities Page**: Displays highlighted activities grouped by location. If a location has no highlighted activities, a proper message is shown.                 | 10         |
| **Site Functionality Total** |                                                                                                                                                                             | **30**     |
| **Functions**                | **Generate Destination Function**: Correctly selects a random travel destination. Has appropriate unit test coverage to verify functionality.                               | 15         |
|                              | **Generate Activity Function**: Correctly generates an activity with all required details. Has appropriate unit test coverage to verify functionality.                      | 15         |
|                              | **Generate Itinerary Function**: Correctly generates an itinerary with 3-7 activities and calculates the budget. Has appropriate unit test coverage to verify functionality.| 15         |
| **Functions Total**          |                                                                                                                                                                             | **45**     |
| **Code Quality**             | **Structure and Readability**: Code is well-organized, readable, and follows best practices.                                                                                | 10         |
| **Code Quality Total**       |                                                                                                                                                                             | **10**     |
| **Git Hygiene**              | **Commit Frequency**: Regular commits reflecting meaningful progress throughout development.                                                                                | 5          |
|                              | **Commit Quality**: Commit messages are clear, concise, and descriptive.                                                                                                    | 5          |
| **Git Hygiene Total**        |                                                                                                                                                                             | **10**     |
| **User Experience/Design**   | **Design and Layout**: Site is visually clear and user-friendly, with appropriate styling. Some attention has been paid to the design to make the site astheticly pleasing. | 5          |
| **User Experience Total**    |                                                                                                                                                                             | **5**      |
| **Total Points**             |                                                                                                                                                                             | **100**    |
