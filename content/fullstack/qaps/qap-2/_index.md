---
title: QAP 2 - Math Competition App
cascade:
  type: docs
---

## Objective
Complete the provided Express application to practice simple math questions. Users will be presented with a question, and their streak of correct answers will be tracked.  
**Due date: February 14th, 2025 at 11:59PM**

### Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/Tw9ktGPW) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

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
- **Note:** This code has been provided as a **starting point** for you to work from. It is by no means a completed QAP.

## Requirements
### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, ensure that any extra packages are relevant and add value to your project.
- Usage of any session packages are not required for this project
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks such as React.
- Your application must run on **Node.js** using **Express** for the backend.
### Required Pages
- **Home Page**: 
  - Provided as boilerplate.
  - Allows users to start a new quiz.
  - Displays the last recorded streak or a message indicating there was no streak.

- **Quiz Question Page**:
  - Display the current math question to the user.
  - Provide options for the user to submit their answer.
  - Track the user's streak based on correct answers.

- **Quiz Completion Page**:
  - Present users with their current streak.
  - Provide options to start a new quiz or return to the home page.

### Functional Requirements
- **Data Storage**:
  - All data should be stored in memory (using variables in the code). No persistence between server runs is required. For the sake of this project, assume only one user will be accessing the site at a time

- **Functionality**:
  - Create a function to check the correctness of a question.
  - Create a function to generate a new random multiplication, division, addition or subtraction question. The question's operator and operands should be randomly picked when the function is called.

- **Unit Tests**:
  - Write unit tests to verify:
    - A question is properly generated.
    - A correct answer is detected.
    - An incorrect answer is detected.

## Pass Outstanding Criteria
- Achieve a grade of 85% or above

## Submission Guidelines
- Ensure the application runs correctly (with the `npm start` command) and all features are implemented as specified.
- Ensure all tests pass when ran with the pre-setup `npm test` command
- Submissions should be made on Teams under the appropriate assignment
- Submissions should **only** include a link to your github repository which contains the complete code for your QAP
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/DatabaseProgramming-SD14Jan.2025-Apr.2025/ERhPYAhTYw5LncPYJt1qjfABVmfRwDZvyAWrtZGZmzgjBA?e=vqGUKb) 
  - If an extension is needed, please reach out to me directly before the assignment due date.

## Grading Rubric

| **Category**        | **Criteria**                                                                                                            | **Points** |
|---------------------|-------------------------------------------------------------------------------------------------------------------------|------------|
| **Functionality**   | **Home Page**: Displays options to start a quiz, and shows the last recorded streak or a relevant message if there is no streak.                 | 10         |
|                     | **Quiz Question Page**: Displays the current question and allows user to submit an answer.                              | 15         |
|                     | **Quiz Completion Page**: Displays the streak and options to start a new quiz or return to home page.                   | 15         |
| **Correctness**     | **Question Generation Function**: Correctly generates a random math question based on requirements.                     | 5          |
|                     | **Answer Checking Function**: Correctly checks if a given answer is correct or incorrect.                               | 5          |
|                     | **In-memory Data Management**: Streaks and scores are stored and retrieved correctly while the user is on the site.     | 10         |
| **Code Quality**    | **Readability**: Code is well-organized and easy to read (proper indentation, clear variable/function names).           | 10         |
|                     | **Modularity**: Functions are properly modularized (e.g., quiz logic and routing separated from app structure).         | 5          |
| **Git Hygiene**     | **Commit Frequency**: Regular commits reflecting meaningful progress throughout development.                            | 5          |
|                     | **Commit Quality**: Commit messages are clear, concise, and descriptive.                                                | 5          |
| **Testing**         | **Unit Tests for Functions**: Unit tests for question generation and answer checking functions are written and passing. | 5          |
|                     | **Comprehensive Test Coverage**: Tests cover multiple cases (correct, incorrect, edge cases).                           | 5          |
| **User Experience** | **UI/UX**: The app is easy to use, well-structured, and aesthetically consistent.                                       | 5          |
| **Total Points**    |                                                                                                                         | **100**    |

Good luck! If you have any questions, please don't hesitiate to ask!