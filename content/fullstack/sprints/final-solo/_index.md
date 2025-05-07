---
title: 3. Final Sprint - Solo
---

## Preface
**Objective**  
Build a real-time notification application that demonstrates your ability to integrate Express.js, MongoDB, EJS templates, and WebSockets. This project will be completed individually and is your final submission for both the Databases and Fullstack development courses.

**Due Date**  
April 19th, 2024, at 11:59 PM

**Note**  
This is the combined final sprint for both Databases and Fullstack development. You will only complete this one final, and the grade will be applied to both courses.

## Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/6w1kflNr) will be provided.
- This repository is set up as a **GitHub Assignment**. Once accepted, you will have your own private repo to complete the assignment.

### Steps to Create Your Own Repository
1. Click the link above and select your name from the list
1. Click the "Accept this assignment" button
1. Once your repository is created, **clone your new repo** to your local machine:  
    ```bash
    git clone <your-new-repo-url>
    ```
1. Navigate into the project directory and install the dependencies:
    ```bash
    cd <your-new-repo-name>
    npm install
    ```
1. Run the app:
    ```bash
    npm start
    ```

    This will start the server at `http://localhost:3000/`.

- The base template includes the necessary folder structure and starter code to help you focus on building the required features.

## Requirements

### Technology Requirements
- The backend must be implemented using Node.js with Express.
- All pages must be created using EJS templates.
- Use WebSockets via `express-ws` for real-time communication.

### Storage Requirements
- Use MongoDB for all persistent data storage.
  - PostgreSQL is not permitted.
- All user records and notifications must be stored in a MongoDB database
  - Passwords must be hashed using bcrypt
  - User records must include: username, hashed password, and join date
  - Notification records must include: notification content, timestamp, and the sender's username
- Session and other storage can be done in memory, but the users and notifications themselves must be stored in a database

### Functional Requirements

#### Home Page
- New/Unauthenticated users are presented with a landing page prompting them to log in or sign up.

#### Registration
- Users must be able to register with a unique username.
- Display meaningful error messages if registration fails.
- Passwords must be hashed before being saved.

#### Login
- Registered users must be able to log in using their username and password.
- Invalid login attempts should display a clear error message.
- Upon successful login, users are redirected to the dashboard.
- User session should persist across routes until they log out.

#### Dashboard
- Access is restricted to logged-in users only.
- The dashboard displays the notifications that have been sent out, since the user has been logged in, **in real-time**.
- Each notification must include:
  - The content of the message
  - The time it was sent

#### Admin Panel
- The admin panel allows you to type and send a notification to all connected users.
- The admin panel should send a POST request to the server, then the server should send the notification out over the sockets
- Notifications sent through the admin panel must:
  - Be delivered via WebSockets to all logged-in users
  - Be recorded in MongoDB once they are sent

#### Site Header
- Implement a site header on all logged-in pages using an EJS partial template.
- The header should include navigation options for:
  - Logging out
    - Upon logout, the user should be redirected to the homepage and their session cleared
  - Accessing the dashboard
  - Accessing the admin panel (if user is an admin)

## Submission Guidelines
- Ensure the application runs correctly using the `npm start` command
- Verify that all implemented features meet the requirements specified
- Submissions should **only** include a link to your GitHub repository which contains the complete code for the assignment
    - The repository used should be the private repository in the GitHub Classroom, public repositories from your personal account should not be submitted
- Submissions are subject to the **[Keyin late assessment policy](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD13May.2025-Aug.2025/EQsdYpI0N1RPsETRsktEqmkBTDvs1QzdvJT5cmDCQoSHWw?e=ZT4ph9)**.
  - If you need an extension, reach out before the due date. Extensions are difficult to give with final projects due to the tight timelines for grades.

## Notes/Questions
- You can find the code for examples any worked on during class [here](https://github.com/menglishca/keyin-code-samples).
- If you have any questions or need clarification, reach out on Teams or via email.
- Support sessions are available during lecture slots and through TA sessions.

## Grading Rubric

| Category                                 | Criteria                                                                                               | Points  |
|------------------------------------------|--------------------------------------------------------------------------------------------------------|---------|
| **Site Functionality**                   |                                                                                                        | **70**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Registration     | New users can register; meaningful error messages shown if signup fails                                | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Login            | Existing users can log in; invalid logins show errors; session persists                                | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Dashboard        | Protected route; displays real-time notifications with content and timestamp                           | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Notification Log | Notifications and users are saved to MongoDB with appropriate information                              | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Admin Panel      | Admins can send notifications via a panel                                                              | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Site Header      | Header partial with working navigation for logout, dashboard, and admin panel                          | 5       |
| **Code Quality**                         |                                                                                                        | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability      | Code is well-organized and easy to read (indentation, naming, structure)                               | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Modularity       | Functions are modular and separated from routing and app setup                                         | 5       |
| **Git Hygiene**                          |                                                                                                        | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency | Regular commits reflecting meaningful progress                                                         | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Quality   | Commit messages are clear, concise, and descriptive                                                    | 5       |
| **User Experience**                      |                                                                                                        | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;UI/UX            | The app is easy to use, well-structured, and aesthetically consistent                                  | 10      |
| **Total Points**                         |                                                                                                        | **100** |
