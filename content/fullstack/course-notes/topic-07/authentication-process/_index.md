---
title: 2. Understanding the Authentication Process
---

## Registration Flow
1. **User Submits Registration Form**:
    - User provides information such as username, password, and other details.
2. **Password Hashing**:
    - Before storing the user’s details, the server uses a hashing algorithm to create a hash of the password
3. **Store User Data**:
    - The server saves the user’s information in the database, including the hashed password (but never the plain password).
    - The hashed password is what will be used to authenticate the user during future login attempts.

## Login Flow
1. **User Submits Credentials**:
    - The user enters their username and password in a login form.
2. **Server Verifies Credentials**:
    - The server first checks if the username exists in the database.
    - If the username exists, the server uses a hashing algorithm to create a hash of the submitted password
      - Then the server compares the newly hashed password to the stored hashed password.
3. **Session Creation**:
    - If the password matches, the server creates a session for the user
      -This session might contain the user’s ID and role (e.g., admin, standard user).
    - The session ID is sent to the browser in a cookie
      - Then the client can send the session ID back, as a cookie, with each subsequent request

## Password Hashing: Why It’s Necessary
- Storing passwords in plain text is a significant security risk. If a database is compromised, plain-text passwords can be easily viewed and misused.
- *Hashing* converts passwords into a unique, fixed-length series of characters that represents the original password. Even a slight change in the password (e.g., adding a space) will produce a completely different hash.
- *Hashing* is a *one-way* operation. Unlike encryption, which can be decrypted, hashes cannot be reversed.
- **bcrypt** is a hashing algorithm for securely hashing passwords
  - It not only hashes passwords but can also salt them (adding a random component to make each hash unique)
  - Salts prevent attackers from precomputing a database of hashes (known as a rainbow table) and using that to guess passwords
- **Example**: If the password "mypassword" is hashed with an algorithm like `bcrypt`, it produces a string like `$2b$10$6.JXEk.VFW7n...`, which is nearly impossible to reverse back to the original password.
