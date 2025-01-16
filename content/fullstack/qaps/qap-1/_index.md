---
title: QAP 1 - Password Generator  
cascade:  
  type: docs  
---

## Objective  
Create a Command-Line Interface (CLI) application in Node.js that generates passwords for users based on arguments they provide via flags.  
**Due Date: January 23rd, 2024, at 11:59 PM**  

## Requirements  

### Functionality  
- **Basic Features**:
  - Generate passwords consisting of lowercase letters.
  - Display a help message explaining how to use the application and its flags.
    - Flags are any of those `--help` or `--length` arguments your application supports
  - Allow users to specify the length of the password using a flag.
  - Default to a password length of 8 if no length is specified.
  - Handle invalid input gracefully, displaying informative error messages.

- **Customizable Features**:
  - Implement at least **one** of the following features, with an appropriate flag (such as `--uppercase` for capital letters):
    - Include numbers in the password.
    - Include capital letters in the password.
    - Include symbols in the password.
  - Develop the feature on a separate branch and merge it into the main branch using a GitHub pull request.

### Code Quality  
- Maintain clear and consistent code style.
- Include comments to describe functions and any non-obvious logic.
- Ensure proper error handling.

### Git Hygiene  
- Regularly commit changes with meaningful messages.
- Avoid committing unnecessary files such as `.DS_Store`.

### Extra Files
- Your project must include:
  - `package.json` file with accurate information.
  - `README.md` explaining:
    - The purpose of the application.
    - How to use it.

### Notes  
- Using npm packages is allowed but not required.
- If using npm packages, ensure `node_modules` is not added to your github repository

## Grading Rubric  

| Category                        | Criteria                                                                           | Points |
|---------------------------------|------------------------------------------------------------------------------------|--------|
| **Functionality**               | **/45**                                                                            |        |
| - Help Message                  | Help message correctly implemented and uses a standard flag.                       | 10     |
| - Password Length Flag          | Allows user to specify password length and applies it correctly.                   | 10     |
| - Default Length Behavior       | Defaults to 8 when no length is provided.                                          | 5      |
| - Invalid Input Handling        | Handles invalid inputs with informative error messages.                            | 5      |
| - Customizable Features         | Implements at least one feature: numbers, capitals, or symbols.                    | 15     |
| **Git Hygiene**                 | **/25**                                                                            |        |
| - Branching and Pull Requests   | Customizable feature implemented on a separate branch and merged via pull request. | 10     | 
| - Commit Frequency and Quality  | Regular commits with clear, descriptive commit messages and meaningful progress.   | 10     |
| - Git Name/Email                | Your github name and email are set correctly                                       | 5      |
| **Code Quality**                | **/20**                                                                            |        |
| - Readability                   | Code is well-organized, styled, and includes necessary comments.                   | 10     |
| - Error Handling                | Includes proper error handling and avoids crashes.                                 | 10     |
| **Project Structure**           | **/10**                                                                            |        |
| - Package.json                  | Includes your name, app name and main file                                         | 5      |
| - README.md                     | Includes app name and a clear description.                                         | 5      |

## Submission Guidelines  
- Ensure all code runs correctly and meets the requirements.
- Submissions should be made on Teams under the appropriate assignment.  
- Submissions should **only** include a link to your GitHub repository containing the completed code for your QAP.  
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/DatabaseProgramming-SD14Jan.2025-Apr.2025/ERhPYAhTYw5LncPYJt1qjfABVmfRwDZvyAWrtZGZmzgjBA?e=vqGUKb) 
- If an extension is required, please contact me directly before the due date.  

