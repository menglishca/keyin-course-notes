---
title: QAP 1 - Password Generator  
cascade:  
  type: docs  
---

## Objective  
Create a Command-Line Interface (CLI) application in Node.js that generates passwords for users based on arguments they provide via flags.  
**Due Date: January 29th, 2025, at 11:59 PM**  

## Getting Started  

To help you get started, a [base repository](https://classroom.github.com/a/iQ5c4iyI) has been provided for you to work from. The repository is set up as a GitHub Assignment to help you quickly get started.  

### Steps to Create Your Own Repository  

1. Click the link above and select your name on the list that appears, if you haven't already.  
2. Click the "Accept this assignment" button.  
3. Once your repository is created, clone your new repo to your local machine:  

    ```
    git clone <your-new-repo-url>
    ```

4. Navigate into the project directory and install the necessary dependencies:  

    ```
    cd <your-new-repo-name>
    npm install
    ```

5. Run the app from the command line:  

    ```
    node passwordGenerator.js [flags]
    ```

    Replace `[flags]` with any supported flags like `--length`, `--numbers`, etc.

6. Run tests:  

    ```
    npm test
    ```

    This will run the unit tests for the application.

By using this template, you'll have the project structure and initial setup ready to go so you can focus on building the functionality.  

Note: This code has been provided as a starting point for you to work from. It is by no means a completed QAP.  

## Requirements  

### Functionality  
- **Basic Features**:
  - Support the following command-line flags:
    - `--help`: displays a help message explaining how to use the application and its flags. This flag is **required to be implemented**.
    - `--length <number>`: specifies the length of the password.
    - `--lowercase`: include lowercase letters in the password.
    - `--numbers`: include numbers in the password.
  - If no `--length` flag is provided, default the password length to 8.
  - If neither `--lowercase` nor `--numbers` is provided, default to including lowercase letters.
  - If no character types are selected (for example, if `--lowercase` is explicitly disabled and `--numbers` is not provided), the program should throw an error.
  - The application should handle invalid input gracefully, displaying an informative error message rather than crashing.

### Testing  
- Write a complete set of unit tests for the `generatePassword` function.
- Tests must cover different input scenarios and verify that the function behaves as expected.
- All tests must pass before submission.

### Code Quality  
- Maintain clear and consistent code style.
- Ensure proper error handling.

### Git Hygiene  
- Regularly commit changes with meaningful messages.
- Do not commit unnecessary files such as `node_modules` or temporary files.

### Extra Files  
- Your project must include:
  - `README.md` explaining:
    - The purpose of the application.
    - How to use it.
    - How to run the tests.

## Submission Guidelines  

- Ensure all code runs correctly and meets the requirements.  
- Submissions should be made on Teams under the appropriate assignment.  
- Submissions should **only** include a link to your GitHub repository containing the completed code for your QAP.  
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD15Jan.2026-Apr.20262/IQB27M_3TuM7R4CffHQTsbiYAThObHy9b2Ta1SriDyA45k4?e=npqFCu)  
- If an extension is required, please contact me directly before the due date.  

## Grading Rubric  

| Category                                             | Criteria                                                                           | Points  |
|------------------------------------------------------|------------------------------------------------------------------------------------|---------|
| **Functionality**                                    |                                                                                    | **45**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Help Flag                    | Implements `--help` flag that displays usage instructions.                         | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Password Length Flag         | Allows user to specify password length and applies it correctly.                   | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Default Length Behavior      | Defaults to 8 when no length is provided.                                          | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Default Character Behavior   | Defaults to lowercase when no character flags are provided.                        | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Invalid Input Handling       | Handles invalid input with clear error messages.                                   | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Character Flags              | Correctly implements `--lowercase` and `--numbers` flags.                          | 15      |
| **Testing**                                          |                                                                                    | **20**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Test Coverage                | Adequate tests written for `generatePassword` covering different scenarios.        | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;All Tests Passing            | All tests pass successfully.                                                       | 5       |
| **Git Hygiene**                                      |                                                                                    | **15**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency and Quality | Regular commits with descriptive messages.                                         | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;No Unnecessary Files         | No unnecessary files (e.g., `node_modules`) committed.                             | 5       |
| **Code Quality**                                     |                                                                                    | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability and Structure    | Code is well-organized, follows a clear structure, and uses appropriate style.     | 10      |
| **Project Structure**                                |                                                                                    | **5**   |
| &nbsp;&nbsp;&nbsp;&nbsp;README.md                    | Includes clear description, usage instructions, and test instructions.             | 5       |
| **Total Points**                                     |                                                                                    | **100** |

Good luck! If you have any questions, please don't hesitiate to ask!