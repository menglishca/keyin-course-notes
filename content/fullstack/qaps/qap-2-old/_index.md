---
title: QAP 2 - Daily Mood Tracker
excludeSearch: true
sidebar:
  exclude: true
cascade:
  type: docs
---

### Objective  
Complete the provided Express application that allows users to log how they’re feeling each day. The app tracks the current streak of positive days and displays recent mood history.  
**Due date: October 16th, 2025 at 11:59PM**

### Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/6tfAhzay) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

### Steps to Create Your Own Repository
1. Click the link and choose your name.
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
6. Run the tests:
   ```bash
   npm test
   ```

## Requirements
### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, ensure that any extra packages are relevant and add value to your project.
- Usage of any session packages are not required for this project
- All data can be stored **in-memory** using variables, assume only **one user** uses the site at a time
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks such as React.
- Your application must run on **Node.js** using **Express** for the backend.

### Required Pages
- **Home Page**
  - Shows a welcome message
  - Displays current positive streak or a message like “No entries yet.”
  - Button to add a new mood entry

- **Mood Entry Page**
  - User selects how they’re feeling today (e.g., Happy, Sad, Okay, Stressed, Excited)
  - Submit button to record entry

- **Mood Summary Page**
  - Displays the user's positive streak (number of consecutive “Happy” or “Excited” days)
  - Shows the last 5 days of mood entries
  - Button to return to home

### Functional Requirements
- **Mood Submission Logic**
  - Store each day’s mood entry in an array
  - A day is considered “positive” if mood is “Happy” or “Excited”
- **Streak Calculation**
  - A function should calculate how many **positive days in a row** the user has logged (starting from most recent and going backward)
- **Utility Functions**
  - `getStreak()` – returns the current positive streak
- **Unit Testing**:
  - Write tests to verify:
    - Streak calculation returns correct result

## Submission
- Ensure:
  - App works with `npm start`
  - All tests pass using `npm test`
- Submissions should be made with a link to your github classroom repository under on Teams under the appropriate assignment
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD15Jan.2026-Apr.20262/IQB27M_3TuM7R4CffHQTsbiYAThObHy9b2Ta1SriDyA45k4?e=npqFCu) 
  - If an extension is needed, please reach out to me directly before the assignment due date.

## Grading Rubric

| Category                                            | Criteria                                                        | Points  |
|-----------------------------------------------------|-----------------------------------------------------------------|---------|
| **Functionality**                                   |                                                                 | **40**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Home Page                   | Displays welcome message, start option, and current streak.     | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Mood Entry Page             | User can select and submit today’s mood.                        | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Summary Page                | Shows current streak and recent moods.                          | 15      |
| **Correctness**                                     |                                                                 | **20**  |
| &nbsp;&nbsp;&nbsp;&nbsp;`getStreak()` Function      | Correctly calculates positive mood streaks.                     | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;In-Memory Mood Tracking     | Tracks mood data accurately throughout the session.             | 10      |
| **Code Quality**                                    |                                                                 | **15**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability                 | Code is clean, readable, and logically organized.               | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Modularity                  | Functions are modular and separated from app/router logic.      | 5       |
| **Git Hygiene**                                     |                                                                 | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency            | Frequent, meaningful commits.                                   | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Quality              | Commit messages are clear and descriptive.                      | 5       |
| **Testing**                                         |                                                                 | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Core Logic Unit Tests       | Unit tests implemented for mood logging and streak calculation. | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Comprehensive Test Coverage | Tests include different moods, edge cases, and invalid inputs.  | 5       |
| **User Experience**                                 |                                                                 | **5**   |
| &nbsp;&nbsp;&nbsp;&nbsp;UI/UX                       | Simple and intuitive interface using EJS templates.             | 5       |
| **Total Points**                                    |                                                                 | **100** |

