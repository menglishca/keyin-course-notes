---
title: 5. Error Handling and User Feedback
---

## Handling Invalid Login Attempts
- While we do want to make sure we're informing users when a login fails, we also want to balance that with protecting against attackers trying to guess usernames and passwords
- To do this, avoid providing specific error messages
  - i.e. Instead of an error like “Incorrect password” or “User not found,” use a generic message such as “Invalid credentials.”. This still tells the user that their login failed, but doesn't explicitly tell them why
    - This prevent an attacker from knowing that a username is invalid or if the password is wrong
- You can also do things like adding a delay between login attempts to avoid an attacker just spamming your login with different passwords to try and get into someone's account

## Feedback for Failed Registration
- Provide feedback if the user’s chosen username is taken or if their password doesn’t meet security requirements (e.g., minimum length, complexity).
- Flash messages or alert boxes can be used to show these errors temporarily on the form page, guiding the user through fixing any issues.
  - Flash messages are temporary messages that appear to tell a user something (often used for displaying errors)