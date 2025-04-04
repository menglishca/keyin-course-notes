---
title: QAP 3 - User Management System  
cascade:  
  type: docs  
---

## Objective  
Build a user management system using Express and EJS. Allow new users to register, existing users to sign in, admins to see all registered users and let users logout.
**Due date: March 27th, 2024, at 11:59 PM**

### Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/O5JWjEqM) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

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
- **Node.js** must be used with **Express** for the backend.  
- All templates must use **EJS** for rendering. Other templating engines or frameworks (e.g., Handlebars, React) are not permitted.  
- Implement authentication and role-based access using `express-session`.  

### Required Pages  
- **Home Page**:
  - Provided as boilerplate.
  - Displays buttons for "Login" and "Sign Up."  
- **Registration Page**:
  - Allows users to register with a username, email, and password.
  - Usernames and email addresses must be unique.
  - Passwords must be at least 8 characters in length
  - Hash passwords using `bcrypt` before storing them.
- **Login Page**:
  - Allows users to log in with their email and password.
  - Compare hashed passwords during authentication.
- **Landing Page**:
  - Redirect users here after login.  
  - For **users**, display a simple dashboard with their username.  
  - For **admins**, display all registered users with their email and role.
- **Logout**:
  - Provide a logout button on the landing page to log users out and destroy their session.

### Functional Requirements  
- **Authentication**:
  - Use sessions to authenticate users and persist their login state.  
- **Role-Based Access**:
  - Admin users should be able to view all registered users.
  - Regular users should only have access to their dashboard.
- **Error Handling**:
  - Display errors on login or signup pages when applicable, ensure errors are in line with the security practices discussed in class
- **Security**:
  - Hash passwords with `bcrypt`.  
  - Do not store plaintext passwords.
- **Data Storage**:
  - Store users in memory as an array of objects. (No database required.)

## Pass Outstanding Criteria
- Achieve a grade of 85% or above

## Submission Guidelines
- Ensure the application runs correctly (with the `npm start` command) and all features are implemented as specified.
- Submissions should be made on Teams under the appropriate assignment
- Submissions should **only** include a link to your github repository which contains the complete code for the assignment
    - The repository used should be the private one in the github classroom, public repositories from your personal account should not be submitted.
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/DatabaseProgramming-SD14Jan.2025-Apr.2025/ERhPYAhTYw5LncPYJt1qjfABVmfRwDZvyAWrtZGZmzgjBA?e=vqGUKb) 
  - If an extension is needed, please reach out to me directly before the assignment due date.


## Grading Rubric  

| Category                                  | Criteria                                                                                 | Points  |
|-------------------------------------------|------------------------------------------------------------------------------------------|---------|
| **Functionality**                         |                                                                                          | **65**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Registration      | Allows users to register with username, email, and password. Enforces validation rules.  | 20      |
| &nbsp;&nbsp;&nbsp;&nbsp;Login             | Authenticates users with email and hashed password comparison.                           | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Role-Based Access | Unauthorized users see the homepage, users see their landing page, admins see all users. | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Logout            | Ends session and redirects to the home page.                                             | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Password Hashing  | Passwords are securely hashed using bcrypt.                                              | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Error Handling    | Errors are shown in a secure, visible way; error states are handled gracefully.          | 10      |
| **Code Quality**                          |                                                                                          | **15**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability       | Code is well-organized and easy to read (indentation, naming, structure).                | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Modularity        | Functions are modular and separated from routing and app setup.                          | 5       |
| **Git Hygiene**                           |                                                                                          | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency  | Regular commits reflecting meaningful progress.                                          | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Quality    | Commit messages are clear, concise, and descriptive.                                     | 5       |
| **User Experience**                       |                                                                                          | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;UI/UX             | The app is easy to use, well-structured, and visually consistent.                        | 10      |
| **Total Points**                          |                                                                                          | **100** |


Good luck! If you have any questions, please don't hesitiate to ask!