---
title: 6. External SSO
---

## Using an External IdP
- While we can setup our own identity provider, in most cases it's preferred to use an external provider
- An external provider allows us to leverage the accounts/sign in infrastructure from an another organization (like Github)
- It makes it a lot easier for users to register for our application as they don't need to make another account
- On top of logging in, we can also access other information from the external IdP (i.e. usernames or emails) but what is offered can change depending on the external IdP

## Passport.js
- We have lots of options for integrating an external IdP, but instead of implementing sometihng like OAuth 2.0 ourselves we can leverage a library that has implemented this already
- Passport is an authentication middleware for Express, it simplifies adding authentication to a web app
- Passport supports many _strategies_ for authentication, such as local login (with a regular username and password) or with an external provider like GitHub

## Example: Github Login Flow with Passport
When integrating GitHub SSO using Passport, the process involves several steps:

1. **User Initiates Login**  
   - The user clicks "Login with GitHub" on your app.
   - They are redirected to GitHub’s login page.

2. **GitHub Authentication**  
   - GitHub prompts the user to log in (if not already logged in) and grant permissions to your app.

3. **GitHub Redirects to Your App**  
   - Once the user approves, GitHub redirects them to your app’s **callback URL** (configured in GitHub’s OAuth settings) with an authorization code.

4. **Token Exchange**  
   - Your app exchanges the authorization code for an **access token** using GitHub’s API. This access token allows your app to fetch user data.

5. **User Data Handling**  
   - Passport’s GitHub strategy fetches user data (e.g., username, email, profile ID) from GitHub.
   - You decide how to use this data—for example, creating a new user record or matching it with an existing account.

6. **Session Creation**  
   - Once authenticated, Passport saves the user’s ID in the session. This allows the user to remain logged in as they navigate your app.
