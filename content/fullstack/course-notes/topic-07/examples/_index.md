---
title: 6. Examples
---

## Objective
The goal of the following examples is to introduce the concepts of **Express.js**, **EJS**, and **session-based authentication** through simple login and registration flows.

## Example 1: Simple Registration
### Ask
- Create an Express application that allows users to register an account.
- A base repository can be found [here](https://github.com/Keyin-SD14-S3/user-authentication-examples.git).

### Features
- Users can enter a **username** and **password** to register.
- The registration form submits user data.
- After successful registration, the user is redirected to a homepage.
- Uses **sessions** to store user state.

### Tasks
- Set up the Express server.
- Create an EJS template for user registration.
- Implement form handling for user registration.
- Store users in an in-memory array.
- Redirect users after successful registration.

## Example 2: Simple Login
### Ask
- Create an Express application that allows users to log in with **predefined credentials**.
- A base repository can be found [here](https://github.com/Keyin-SD14-S3/user-authentication-examples.git).

### Features
- Users can log in with a **hardcoded username and password**.
- Uses **sessions** to store login state.
- Users can log out, clearing their session.

### Tasks
- Set up the Express server.
- Create an EJS template for user login.
- Implement login logic using form submission.
- Store session data for logged-in users.
- Redirect users appropriately based on login state.

## Future Improvements
- Store users in a **database** instead of an in-memory array.
- Hash passwords for better security.
- Improve error handling to display proper login or registration messages.