---
title: QAP 2 - Math Competition App
cascade:
  type: docs
---

## Objective
Complete the provided Express application to practice simple math questions. Users will be presented with a question, and their streak of correct answers will be tracked.  
**Due date: October 10th, 2024 at 11:59PM**

### Getting Started
- To help you get started, a base repository has been provided for you to work from. Clone the repository using the following command:

```bash
git clone <repository-url>
```

- Once cloned, navigate to the project folder and install the dependencies:

```bash
cd <project-folder>
npm install
```

- You can start the application using:

```bash
npm start
```

- Run the tests using:

```bash
npm test
```

- **Note:** This code has been provided as a **starting point** for you to work from. It is by no means a completed QAP.

## Requirements
### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, ensure that any extra packages are relevant and add value to your project.
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks such as React.
- Your application must run on **Node.js** using **Express** for the backend.
### Required Pages
- **Home Page**: 
  - Provided as boilerplate.
  - Allows users to start a new quiz.
  - Allows users to view the leaderboards.
  - Displays the last recorded streak or a message indicating there was no streak.

- **Quiz Question Page**:
  - Display the current math question to the user.
  - Provide options for the user to submit their answer.
  - Track the user's streak based on correct answers.

- **Quiz Completion Page**:
  - Present users with their current streak.
  - Provide options to start a new quiz or return to the home page.

- **Leaderboards Page**:
  - Display the top 10 streaks.
  - Show the number of questions answered correctly and when the streaks were obtained.

### Functional Requirements
- **Data Storage**:
  - All data should be stored in memory (using variables in the code). No persistence between server runs is required.

- **Functionality**:
  - Create a function to check the correctness of a question.
  - Create a function to generate a new question.

- **Unit Tests**:
  - Write unit tests to verify:
    - A question is properly generated.
    - A correct answer is detected.
    - An incorrect answer is detected.

## Pass with Distinction Criteria
- Achieve a grade of 85% or above

## Submission Guidelines
- Ensure the application runs correctly (with the `npm start` command) and all features are implemented as specified.
- Ensure all tests pass when ran with the pre-setup `npm test` command
- Submissions should be made on Teams under the appropriate assignment
- Submissions should **only** include a link to your github repository which contains the complete code for your QAP
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)
  - If an extension is needed, please reach out to me directly before the assignment due date.

## Grading Rubric

| Category                         | Criteria                                                                                        | Points |
|----------------------------------|-------------------------------------------------------------------------------------------------|--------|
| **Functionality**                | **/40**                                                                                         |        |
| - Home Page                      | Displays options to start a quiz, view leaderboards, and shows the last recorded streak         | 10     |
| - Quiz Question Page             | Displays the current question and allows user to submit an answer                               | 10     |
| - Quiz Completion Page           | Displays the streak and options to start a new quiz or return to home page                      | 10     |
| - Leaderboards Page              | Displays the top 10 streaks with number of correct answers and date                             | 10     |
| **Correctness**                  | **/20**                                                                                         |        |
| - Question Generation Function   | Correctly generates a math question based on requirements                                       | 5      |
| - Answer Checking Function       | Correctly checks if a given answer is correct or incorrect                                      | 5      |
| - In-memory Data Management      | Streaks and scores are stored and retrieved correctly during the session                        | 10     |
| **Code Quality**                 | **/15**                                                                                         |        |
| - Readability                    | Code is well-organized and easy to read (proper indentation, clear variable/function names)     | 10     |
| - Modularity                     | Functions are properly modularized (e.g., quiz logic and routing separated from app structure)  | 5      |
| **Git Hygiene**                  | **/10**                                                                                         |        |
| - Commit Frequency               | Regular commits are made that reflect meaningful progress (no massive, all-in-one commits)      | 5      |
| - Commit Quality                 | Commit messages are clear, concise, and descriptive of changes, no unnecessary files committed  | 5      |
| **Testing**                      | **/10**                                                                                         |        |
| - Unit Tests for Functions       | Unit tests for question generation and answer checking functions are written and passing        | 5      |
| - Comprehensive Test Coverage    | Tests cover multiple cases (correct, incorrect, edge cases)                                     | 5      |
| **User Experience**              | **/5**                                                                                          |        |
| - UI/UX                          | The app is easy to use, well-structured, and aesthetically consistent                           | 5      |

**Total Points: 100**
