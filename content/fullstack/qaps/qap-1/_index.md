---
title: QAP 1 - Password Generator
cascade:
  type: docs
---

## Objective
Create a Command-Line Interface (CLI) application in Node.js that generates passwords for users based on arguments they provide via flags  
**Due Date: September 19th, 2024 at 11:59PM**

## Requirements
1. **Basic Functionality:**
   - Your CLI application should generate passwords of lowercase letters with the following features:
     - A help message, informing a user how to use the application and it's flags, which can be displayed using a standard help flag.
     - A flag to specify the length of the password.
     - If length flag is **not** provided, 8 should be used as the default password length
     - Proper handling of invalid input, with informative error messages if inputs are missing or incorrect.

2. **Customizable Features:**
    - At least **one** of the following customizable features must be implemented to provide a user with more control over the generated password:
      - A flag specifying that **numbers** should be eligible to be included in the password
      - A flag specifying that **capital letters** should be eligible to be included in the password
      - A flag specifying that **symbols** should be eligible to be included in the password
   - The customizable feature should be created on a separate branch, then merged into the main branch via a GitHub pull request

3. **Git/Code Hygiene:**
   - Use proper git hygiene throughout the project. This includes:
     - Regularly committing changes with meaningful commit messages.
     - Ensuring your email address and name are set in your git configuration.
     - Avoiding the inclusion of unnecessary files such as `.DS_Store` on macOS.
   - Ensure that code is easily readable, consistently styled and includes header comments to describe any functions you create.

4. **Package.json:**
   - Your `package.json` file must atleast include:
     - Your name.
     - The name of the app.
     - The name of the `main` file.
     - A working `bin` command to execute the application.

5. **README:**
   - Include a `README.md` file that provides:
     - The name of the app.
     - A brief description of what the app does.

## Submission Guidelines
- Submissions should be made on Teams under the appropriate assignment
- Your submission should **only** include a link to your github repository which contains the code for this QAP
- Submitting your assignment incorrectly may result in a loss of marks.

## Pass Outstanding Criteria
To achieve a pass outstanding, you **must**:
  - Meet all other requirements outlined above
  - Implement **all three** customizable features instead of just one.
    - One feature **must** still be completed on a separated branch and merged via a Github pull request
    - The other two features _can_ be committed directly to the main branch if you'd prefer, but proper git hygiene should be maintained

## Notes
  - Use of npm packages is allowed but not required. If you use any npm packages, please make sure that the `node_modules` directory is not tracked by Git and the proper package files are tracked.

## Grading Rubric
1. **Basic Functionality (55 points)**
   - **Help Message (10 points)**
     - **10 points:** Help message is correctly implemented, has complete and helpful information, and is displayed using the standard help flag.
     - **5-9 points:** Help message is present but does not use the standard flag or has issues with the information provided.
     - **0-4 points:** Help message is missing or incorrectly implemented.
   - **Password Length Flag (10 points)**
     - **10 points:** User can specify password length via a flag, and the length is correctly applied.
     - **5-9 points:** Password length flag is present but has issues or does not fully work.
     - **0-4 points:** Password length functionality is missing.
   - **Default Length Behavior (5 points)**
     - **5 points:** Default length of 8 is correctly assumed if no length argument is provided.
     - **3-4 points:** Default length is assumed but with minor issues.
     - **0-2 points:** Default length is not correctly implemented or missing.
   - **Invalid Input Handling (10 points)**
     - **10 points:** Invalid inputs are handled gracefully with informative error messages.
     - **5-9 points:** Basic invalid input handling is present but could be improved.
     - **0-4 points:** Invalid input handling is inadequate or missing.
   - **Customizable Features (20 points)**
     - **20 points:** Implements at least one of the following features: numbers, capital letters, or symbols.
     - **10-19 points:** Implements one feature but with minor issues or limited functionality.
     - **0-9 points:** Does not implement any customizable features or is incomplete.

2. **Branching and Pull Requests (10 points)**
   - **10 points:** Customizable feature implemented on a separate branch and correctly merged via GitHub pull request.
   - **5-9 points:** Customizable feature was not on a separate branch, or the merge was done incorrectly.
   - **0-4 points:** Customizable feature was not on a separate branch and the merge was done incorrectly.

3. **Code Quality and Comments (10 points)**
   - **10 points:** Code is well-styled, consistently formatted, and includes header comments for functions.
   - **5-9 points:** Code has minor styling issues or incomplete comments.
   - **0-4 points:** Code lacks consistency, style, or comments.

4. **Git Hygiene (10 points)**
   - **10 points:** Proper git hygiene is followed (e.g., meaningful commits, email and name set, no unnecessary files committed).
   - **5-9 points:** Minor git hygiene issues are present.
   - **0-4 points:** Significant git hygiene issues are present.

5. **Package.json (10 points)**
   - **10 points:** `package.json` includes all required information: student’s name, app name, main file, and bin command.
   - **5-9 points:** `package.json` is missing some required elements or some are implemented incorrectly
   - **0-4 points:** `package.json` is missing all required elements and all are implemented incorrectly

6. **README (5 points)**
   - **5 points:** `README.md` file includes the name of the app and a clear description of its functionality.
   - **3-4 points:** `README.md` is present but lacks detail or clarity.
   - **0-2 points:** `README.md` is missing or not informative.

**Total: 100 Points**

Good luck, and happy coding! If you have any questions, please don't hesitiate to ask!