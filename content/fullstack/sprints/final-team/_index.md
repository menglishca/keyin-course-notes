---
title: 4. Final Sprint - Team
cascade:
  type: docs
---

## Preface
**Objective**
Build a feature-complete real-time chat application in groups of up to four members. This project will demonstrate your ability to integrate Express.js, MongoDB, EJS templates, and WebSockets.

**Due Date**
December 19th, 2025, at 11:59 PM

**Note**
This is the combined final sprint for both Databases and Fullstack development. You will only complete this one final, and the grade will be applied to both courses.

## Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/QK6H0dyE) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

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
1. Run the app:
    ```bash
    npm start
    ```

    This will start the server at `http://localhost:3000/`.

- By using this template, you'll have the project structure and initial setup ready to go, allowing you to focus on building the required functionality.

## Requirements

### Technology Requirements
- The backend must be implemented using Node.js with Express.
- All pages must be created using EJS templates.
- Use WebSockets via `express-ws` for real-time communication.

### Storage Requirements
- Use MongoDB for all persistent data storage.
  - PostgreSQL is not permitted.
  - Passwords must be hashed using bcrypt
  - All user records and messages should be stored in a MongoDB database
  - User records include at least: the username, hashed password and role
  - Messages include at least: what was sent, who sent it and when it was sent
- In-memory storage is allowed for temporary data, such as active sessions, but not for persistent data

### Functional Requirements

#### Home Page
- New/Unauthenticated users are presented with a landing page prompting them to log in or sign up.
- New users must be able to register.
- **Without having the homepage connect a socket**, display the number of users currently online

#### Registration
- Ensure that usernames are unique (**do not allow users to register with a username that already exists**)
- Provide meaningful error messages if the signup fails.

#### Chat
- **Access Control**:
  - The chat must be locked behind a login panel.
- **Functionality**:
  - Upon login, users are presented with the chat.
  - Users must be able to send messages through the chat.
  - Messages sent by users should be displayed in real-time to all logged-in users.
  - The chat should display messages **since** the user logged in.
- **Data Display**:
  - Each message must include a timestamp and the name of the sender.
  - Display a list of users currently online in the chat.
  - Notify all users in the chat when a new user joins with a message something like:
    *"User [username] has joined the chat!"*
- **Socket Communication**:
  - Use WebSockets for all real-time communication in the chat.
    - This includes, but might not be limited to:
      - Sending and receiving messages.
      - Updating the list of online users.
      - Broadcasting notifications when a new user joins the chat.

#### Profiles
- Each user should have a profile page displaying:
  - Their join date.
  - Their username.
- Users should be able to:
  - View their own profile.
  - View the profiles of other members.
- Profiles must not be visible without being logged in.

#### Site Header
- Implement a site header on all logged in pages using an EJS partial template.
- The header should include navigation options for:
  - Logging out.
    - Upon logging a user out, they should be redirected to the homepage and have their session cleared
  - Viewing the own profile.
  - Accessing the chat.
  - If the user is an administrator, viewing the admin dashboard.

#### Admin Dashboard
- Administrators must be able to:
  - View a list of all registered users.
  - Remove (or ban, either one) users from the site.

## Submission Guidelines
- Ensure the application runs correctly using the `npm start` command
- Verify that all implemented features meet the requirements specified.
- Submissions should **only** include a link to your github repository which contains the complete code for the assignment
    - The repository used should be the private repository in the github classroom, public repositories from your personal account should not be submitted.
- Submissions are subject to the **[Keyin late assessment policy](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD15Jan.2026-Apr.20262/IQB27M_3TuM7R4CffHQTsbiYAThObHy9b2Ta1SriDyA45k4?e=npqFCu)**.
  - If you need an extension, reach out before the due date. Extensions are difficult to give with final projects due to the tight timelines for grades.

## Notes/Questions
- You can find the code for examples any worked on during class [here](https://github.com/menglishca/keyin-code-samples).
- If you have any questions or need clarification, reach out on Teams or via email.
- Support sessions are available during lecture slots and through TA sessions.

## Grading Rubric

| Category                                 | Criteria                                                                                               | Points  |
|------------------------------------------|--------------------------------------------------------------------------------------------------------|---------|
| **Site Functionality**                   |                                                                                                        | **70**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Home Page        | Displays landing page with login/signup prompt and shows the number of users currently online.         | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Registration     | New users can register; provides meaningful error messages if signup fails.                            | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Chat             | Chat is locked behind login, supports real-time messaging, displays sender's name and timestamp.       | 20      |
| &nbsp;&nbsp;&nbsp;&nbsp;Profiles         | Logged-in users can view their own and others’ profiles (username, join date). Profiles are protected. | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Site Header      | Functional header with navigation links for logout, profile, and chat.                                 | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Admin Panel      | Admins can view all users and remove/ban users from the site.                                          | 15      |
| **Code Quality**                         |                                                                                                        | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability      | Code is well-organized and easy to read (indentation, naming, structure).                              | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Modularity       | Functions are modular and separated from routing and app setup.                                        | 5       |
| **Git Hygiene**                          |                                                                                                        | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency | Regular commits reflecting meaningful progress.                                                        | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Quality   | Commit messages are clear, concise, and descriptive.                                                   | 5       |
| **User Experience**                      |                                                                                                        | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;UI/UX            | The app is easy to use, well-structured, and aesthetically consistent.                                 | 10      |
| **Total Points**                         |                                                                                                        | **100** |
