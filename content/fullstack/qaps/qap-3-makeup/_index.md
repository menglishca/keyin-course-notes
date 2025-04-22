---
title: QAP 3 - Makeup - Event RSVP Portal
excludeSearch: true
sidebar:
  exclude: true
cascade:
  type: docs
---

### Objective
Create an RSVP system for a single private event. Users must be able to sign up, log in, RSVP, and see event info. Admins can view a list of who’s attending.

### Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/8rLqLiHN) has been provided for you to work from. The repository is set up as a **GitHub Assignment** to help you quickly get started.

### Steps to Create Your Own Repository
1. Click the link and choose your name.
2. Click **“Accept this assignment.”**
3. Clone your newly created repository:
   ```bash
   git clone <your-new-repo-url>
   ```
4. Navigate to the folder and install dependencies:
   ```bash
   cd <your-new-repo-name>
   npm install
   ```
5. Start the app:
   ```bash
   npm start
   ```

## Requirements
### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, ensure that any extra packages are relevant and add value to your project.
- You must use **express-session** for login persistence.
- You must use **bcrypt** to hash user passwords.
- All data must be stored **in-memory** using variables; no database is required.
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks such as React.
- Your application must run on **Node.js** using **Express** for the backend.

### Required Pages
- **Home Page**
  - Displays a welcome message and a brief description of the event.
  - Shows login and registration buttons.
  - If logged in, also shows a personalized welcome and a link to the Event Page.
- **Registration Page**
  - Allows users to register with a username, email, and password.
  - Usernames and email addresses must be unique.
  - Passwords must be at least 8 characters in length
  - Hash passwords using `bcrypt` before storing them.
- **Login Page**
  - Users can log in using email and password.
  - Authenticates using bcrypt password comparison.
  - Redirects to the Event Page after login.
- **Event Page (Protected)**
  - All logged-in users can view event details (name, date, description).
  - Users can RSVP if they haven’t already; if already RSVP’d, show a message.
  - Admin users also see a full RSVP list including names and timestamps.
- **Logout**
  - Ends the user’s session and redirects to the Home Page.

### Functional Requirements

- **Authentication**:
  - Use `express-session` to authenticate users and persist their login state across requests.
  - Ensure only logged-in users can access protected pages like the Event Page.
- **Role-Based Access**:
  - Admin users should be able to view a list of all users who have RSVP’d.
  - Regular users should only be able to RSVP and view their own RSVP status.
- **Error Handling**:
  - Display appropriate error messages on the login and registration pages if authentication or validation fails.
  - Follow best practices: avoid revealing whether it was the email or password that was incorrect.
- **Security**:
  - Hash passwords using `bcrypt` before storing them.
  - Never store plaintext passwords in memory or logs.
- **Data Storage**:
  - Store users in memory using an array of objects. No database is required for this assignment.

## Submission
- Ensure:
  - App works with `npm start`
  - All required features are implemented as described above

## Grading Rubric

| Category                            | Criteria                                                                 | Points  |
|-------------------------------------|--------------------------------------------------------------------------|---------|
| **Functionality**                   |                                                                          | **65**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Registration| Registers new users, enforces validation and hashes passwords            | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Login       | Authenticates users using sessions and bcrypt                           | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;RSVP        | Lets users RSVP and prevents duplicate RSVP                             | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Role Access | Only admins can view the RSVP list                                      | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Logout      | Ends session and redirects to Home Page                                 | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Error Handling | Displays appropriate error messages for registration, login, RSVP      | 10      |
| **Code Quality**                    |                                                                          | **15**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability | Code is well-organized and easy to follow                               | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Modularity  | Logic is separated into clean, reusable functions                       | 5       |
| **Git Hygiene**                     |                                                                          | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency | Frequent, meaningful commits                                         | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Quality   | Commit messages are clear and descriptive                             | 5       |
| **User Experience**                 |                                                                          | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;UI/UX       | Clean, user-friendly interface and consistent design                    | 10      |
| **Total Points**                    |                                                                          | **100** |
```
