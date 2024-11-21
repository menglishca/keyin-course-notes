---
title: 6. Examples
---

## Objective  
The goal of the following example is to demonstrate how to build a fullstack authentication flow using Express and EJS, incorporating various login and signup methods, including Single Sign-On (SSO) integration.

## Example: Fullstack Authentication Flow  
### Ask  
- Extend the base app to support multiple user authentication methods: SSO login, manual signup, and SSO signup.
- A base repository can be found [here](https://github.com/menglishca/base-sso-local-idp)

### Features  
1. **Add SSO Login**:  
   - Integrate Single Sign-On (SSO) functionality, allowing users to log in via an external identity provider (IdP) such as GitHub.
   - After successful authentication via the IdP, users are redirected to their dashboard.

2. **Add Signup**:  
   - Implement a manual signup route where users can create an account with an email and username.
   - Ensure that users cannot register with an email that already exists in the system.

3. **Add SSO Signup**:  
   - If a user logs in via SSO and does not already have an account, prompt them to create a new account using the username and email provided by the IdP.
   - Automatically log in the user after they successfully sign up.
