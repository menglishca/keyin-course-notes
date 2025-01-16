---
title: 4. Rock, Paper, Scissors CLI Example
cascade:
  type: docs
---

## Objective
Create a Command-Line Interface (CLI) application in Node.js where users can play Rock, Paper, Scissors against the computer. The app will start with single-round gameplay and expand to include a "best of three" mode through a feature branch and pull request workflow.

## Requirements

### Functionality
- Single-Round Gameplay:
  - Allow the user to choose rock, paper, or scissors via command-line arguments.
  - Generate a random choice for the computer.
  - Determine and display the winner of the round.
  - Handle invalid input gracefully with an informative error message.

- Best of Three Mode:
  - Add a feature to play a "best of three" match.
  - Track and display the score for the user and computer over three rounds.
  - Display the winner of the match after three rounds.
  - Ensure proper error handling for invalid input within the loop.

## Implementation Steps

### Part 1: Single-Round Gameplay
1. Set Up the Project:
   - Initialize a new git repository with `git init`.
   - Create a new Node.js project using `npm init`.
   - Create a new JavaScript file, `rps.js`.
   - Ensure it can be run with Node.js.

2. Implement User Input:
   - Use `process.argv` to capture the user's choice (rock, paper, or scissors).
   - Validate the input to ensure it is one of the three valid options.

3. Generate a Random Choice for the Computer:
   - Create an array of choices: `rock`, `paper`, `scissors`.
   - Randomly select one for the computer.

4. Determine the Winner:
   - Compare the user's choice with the computer's choice.
   - Implement the logic for deciding the outcome (win, lose, tie).

5. Output the Results:
   - Print the user's choice, the computer's choice, and the result.

### Part 2: Adding "Best of Three" Mode
1. Branch Creation:
   - Create a new branch named `best-of-three`.

2. Update Input Handling:
   - Add support for a new command: `best-of-3`.

3. Loop for Three Rounds:
   - Implement a loop to play three rounds of Rock, Paper, Scissors.
   - Track the score for both the user and the computer.

4. Score Tracking and Output:
   - Print the result of each round.
   - At the end, display the final scores and declare the winner of the match.

5. Handle Errors:
   - Ensure proper error messages for invalid input within the loop.

### Part 3: PR Workflow
1. Push the Branch:
   - Push the `best-of-three` branch to the repository.

2. Create a Pull Request:
   - Open a PR to merge `best-of-three` into the main branch.

3. Review the Changes:
   - Walk through the changes with the students.
   - Discuss the purpose of the new feature and how it was implemented.

4. Merge the PR:
   - Merge the branch and pull the changes into the local environment.

### Part 4: Demonstration and Expansion
1. Test the Final App:
   - Show how to use the single-round mode and "best of three" mode.

2. Discuss Potential Improvements:
   - Ideas for future development (e.g., customizable match lengths, user names, advanced statistics).

### Additional Requirements
- Ensure the project has a `package.json` file.
- Use git for version control and demonstrate proper branching and pull request workflows.  