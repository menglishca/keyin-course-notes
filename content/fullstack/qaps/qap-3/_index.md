---
title: QAP 3 - User Management System  
cascade:  
  type: docs  
---

## Objective  
Build a user management system using Express and EJS. Allow new users to register, existing users to sign in, admins to see all registered users and let users logout.
**Due date: November 29th, 2024, at 11:59 PM**

### Getting Started  
- To help you get started, a [base repository](https://github.com/menglishca/user-management-base) has been provided for you to work from. The repository is set up as a **GitHub template** to help you quickly begin the project.

### Steps to Create Your Own Repository  

1. **Click the "Use this template" button** at the top of the repository page on GitHub.

1. **Name your new repository** and choose its visibility (public or private).  

1. Once your repository is created, **clone your new repo** to your local machine:  
    ```bash
    git clone <your-new-repo-url>
    ```  

1. Navigate into the project directory and install the necessary dependencies:  
    ```bash
    cd <your-new-repo-name>
    npm install
    ```  

1. **Run the app:**  
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
  - Display errors on login or signup pages when applicable.
- **Security**:
  - Hash passwords with `bcrypt`.  
  - Do not store plaintext passwords.
- **Data Storage**:
  - Store users in memory as an array of objects. (No database required.)


## Grading Rubric  

| Category                         | Criteria                                                                                    | Points |  
|----------------------------------|---------------------------------------------------------------------------------------------|--------|  
| **Functionality**                | **/50**                                                                                     |        |  
| - Registration                   | Allows users to register with username, email, and password, and validates input.           | 15     |  
| - Login                          | Authenticates users with email and hashed password comparison.                              | 10     |  
| - Role-Based Access              | Unauthorized users see the homepage, users see their landing page, admins see all users.    | 15     |  
| - Logout                         | Ends session and redirects to the home page.                                                | 5      |
| - Password Hashing               | Passwords are securely hashed using bcrypt.                                                 | 5      |  
| **Code Quality**                 | **/20**                                                                                     |        |  
| - Readability                    | Code is well-organized with proper indentation and meaningful names.                        | 10     |  
| - Clean Practices                | Avoid redundant code, ensure consistency across routes and templates.                       | 10     |  
| **Git Hygiene**                  | **/10**                                                                                     |        |  
| - Commit Frequency and Quality   | Regular commits with clear, descriptive commit messages and meaningful progress.            | 10     |  
| **User Experience**              | **/5**                                                                                      |        |  
| - UI/UX                          | The app is intuitive and visually consistent with the provided CSS.                         | 5      |  

## Submission Guidelines  

- Ensure the application runs correctly (with the `npm start` command) and all required functionality is implemented.  
- Submissions should be made on Teams under the appropriate assignment.  
- Submissions should **only** include a link to your GitHub repository containing the completed code for your QAP.  
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR).  
- If an extension is required, please contact me directly before the due date.  