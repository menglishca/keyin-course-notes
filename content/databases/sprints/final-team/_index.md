---
title: 4. Final Sprint - Team
---

## Final Sprint - Team Project - Real-Time Chat Application  
**Objective**  
Build a feature-complete real-time chat application as a group of three. This project will demonstrate your ability to integrate Express.js, MongoDB, EJS templates, and WebSockets.

**Due Date**  
December 15th, 2024, at 11:59 PM

**Note**  
This is the combined final sprint for both Databases and Fullstack development. You will only complete this one file, and the grade will be applied to both courses.

## Getting Started
To help you get started, a [base repository](https://github.com/menglishca/combined-final-team-base) has been provided for you to work from. The repository is set up as a **GitHub template** to help you quickly get started. It is **strongly recommended** you use this repository.

### Steps to Create Your Own Repository
1. Click the “Use this template” button at the top of the repository page on GitHub.
2. Name your new repository and choose its visibility (public or private).
3. Clone your new repo to your local machine:

    ```bash
    git clone <your-new-repo-url>
    ```

4. Navigate into the project directory and install the necessary dependencies:

    ```bash
    cd <your-new-repo-name>
    npm install
    ```

5. Run the app:

    ```bash
    npm start
    ```

    This will start the server at `http://localhost:3000/`.

6. Run tests (if provided):

    ```bash
    npm test
    ```

    This will run any pre-set unit tests for the application.

By using this template, you’ll have the project structure and initial setup ready to go, so you can focus on getting started on your app!

## Requirements

### Technology Requirements
- The backend must be implemented using Node.js with Express.
- All pages must be created using EJS templates.
- Use WebSockets via `express-ws` for real-time communication.
- **At least 3 total unit tests must be present for some function in your application**

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
- Implement a site header using an EJS partial template.
- The header should include navigation options for:
  - Logging out.
    - Upon logging a user out, they should be redirected to the homepage and have their session cleared
  - Viewing the own profile.
  - Accessing the chat.
  - If the user is an administrator, viewing the admin dashboard.

#### Admin Dashboard
- Administrators must be able to:
  - View a list of all registered users.
  - Remove or ban users from the site.

## Submission Guidelines
1. Ensure the application runs correctly using the `npm start` command, and all tests pass with the `npm test` command
1. Verify that all implemented features meet the requirements specified.
1. Submit your project by uploading your code to a GitHub repository and sharing the link on Teams under the appropriate assignment.
1. Submissions are subject to the **[Keyin late assessment policy](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)**. If you need an extension, reach out before the due date. Extensions are difficult to give with final projects due to the tight timelines for grades.

## Notes/Questions
- You can find the code for examples any worked on during class [here](https://github.com/menglishca/keyin-code-samples).
- If you have any questions or need clarification, reach out on Teams or via email.
- Support sessions are available during lecture slots and through TA sessions.

Here's the updated rubric with the admin panel included, Git and code quality combined into a single category, and the adjustments for design and point redistribution:

## Grading Rubric

| **Category**                         | **Criteria**                                                                                                                                                                                                    | **Points** |
|--------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Site Functionality**               | **Home Page**: Displays landing page with login/signup prompt. Shows the number of users currently online.                                                                                                      | 10         |
|                                      | **Registration**: New users can successfully register, with meaningful error messages if the signup fails.                                                                                                      | 10         |
|                                      | **Chat**: The chat is locked behind a login panel and functions properly with messages sent and received in real-time. Messages show the sender's name and timestamp. Users see messages sent after logging in. | 20         |
|                                      | **Profiles**: Each user can view their own profile (username, join date) and the profiles of others. Profiles are not accessible without being logged in.                                                       | 10         |
|                                      | **Site Header**: Includes navigation options for logging out, accessing the profile, and entering the chat. The header is functional and properly displayed.                                                    | 5          |
|                                      | **Admin Panel**: Administrators can view all registered users and remove/ban users from the site.                                                                                                               | 10         |
| **Site Functionality Total**         |                                                                                                                                                                                                                 | **65**     |
| **Design & User Experience**         | **Design & User Experience**: Site is visually clear and user-friendly, with appropriate styling. Some attention has been paid to the design to make the site astheticly pleasing                               | 10         |
| **Design & User Experience Total**   |                                                                                                                                                                                                                 | **10**     |
| **Development Best Practices**       | **Development Best Practices**: Code is well-organized, follows best practices (e.g., meaningful variable names, DRY principles), and is modular. Commits are frequent, well-documented, and meaningful.        | 15         |
| **Development Best Practices Total** |                                                                                                                                                                                                                 | **15**     |
| **Testing**                          | **Unit Tests**: At least 3 unit tests are present and cover key functionality. Tests are well-written and correctly validate the application logic.                                                             | 5          |
| **Testing Total**                    |                                                                                                                                                                                                                 | **5**      |
| **Total Points**                     |                                                                                                                                                                                                                 | **100**    |