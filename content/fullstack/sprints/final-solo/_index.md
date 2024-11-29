---
title: 3. Final Sprint - Individual
---

## Voting App  
**Objective**  
Create a real-time voting application where users can create polls, vote on them, and see live results as others vote.

**Due Date**  
December 15th, 2024, at 11:59 PM

**Note**  
This is the combined final sprint for both Databases and Fullstack development. You will only complete this one file, and the grade will be applied to both courses.

## Getting Started  
To help you get started, a [base repository](https://github.com/menglishca/combined-final-solo-base) has been provided for you to work from. The repository is set up as a **GitHub template** to help you quickly get started. It is **strongly recommended** you use this repository.

### Steps to Create Your Repository  
1. Click the “Use this template” button at the top of the repository page on GitHub.  
2. Name your new repository and choose its visibility (public or private).  
3. Clone your new repo to your local machine:  

    ```bash  
    git clone <your-new-repo-url>  
    ```  

4. Navigate into the project directory and install the dependencies:  

    ```bash  
    cd <your-new-repo-name>  
    npm install  
    ```  

5. Run the app:  

    ```bash  
    npm start  
    ```  

    This will start the server at `http://localhost:3000/`.  

## Requirements  

### Technology Requirements
- The backend must be implemented using Node.js with Express.  
- All pages must be created using EJS templates.  
- Use WebSockets via `express-ws` for real-time communication.

### Storage Requirements
- Use MongoDB for all persistent data storage.
  - PostgreSQL is not permitted.
  - Passwords must be encrypted using bcrypt
  - At least, all user records, polls, and votes should be stored in a MongoDB database
- In-memory storage is allowed for temporary data, such as active sessions or real-time voting updates.

### Functional Requirements  

#### Home Page  
- New users are presented with a landing page prompting them to log in or sign up.  
- New users must be able to register.
- Display the number of polls currently active

### Poll Dashboard
  - Only visible to logged in users
  - Shows all currently active polls
    - If no polls are available, display a message and prompt the user to create a poll
  - Allows a user to create a new poll
  - For active polls:
    - Users should be able to vote via websockets
      - Users should only be able to choose one option
    - Users should be able to see the results of the poll, and watch them change via the websocket updates
      - The results can be visible before or after a user votes, but either way they should update in real-time as votes are cast
  - All voting actions, including sending votes and updating results, should be communicated via WebSockets to ensure real-time updates for all users viewing the poll

#### Poll Creation  
- Only logged in users can create new polls.  
- Each new poll should include:
  - A question (e.g., "What’s your favorite color?").
  - A list of options for voting (e.g., Red, Blue, Green).

#### Profile Page
- Implement a profile page for the currently logged-in user.  
- The profile should display:
  - The user's name.
  - The number of polls they have voted in.

#### Site Header  
- Implement a site header using an EJS partial template.  
- The header should include navigation options for:  
  - Logging a user out
    - Upon logging a user out, they should be redirected to the homepage and have their session cleared
  - Accessing the home page with polls.
  - Accessing the profile page of the logged-in user.

## Submission Guidelines  
1. Ensure the application runs correctly using the `npm start` command.  
1. Verify that all implemented features meet the requirements specified.
1. Submit your project by uploading your code to a GitHub repository and sharing the link on Teams under the appropriate assignment.
1. Submissions are subject to the **[Keyin late assessment policy](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)**. If you need an extension, reach out before the due date. Extensions are difficult to give with final projects due to the tight timelines for grades.

## Notes/Questions  
- You can find the code for any examples worked on during class [here](https://github.com/menglishca/keyin-code-samples).
- If you have any questions or need clarification, reach out on Teams or via email.  
- Support sessions are available during lecture slots and through TA sessions.  
