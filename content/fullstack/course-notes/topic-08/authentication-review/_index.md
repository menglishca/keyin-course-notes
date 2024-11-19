---
title: 1. Quick Review of Authentication
---

## What is Authentication?
- Authentication is the process of verifying the identity of a user or system.  
- **Why is it Important?**  
  - Ensures that only authorized users can access certain resources.  
  - Protects sensitive information and systems.  

## Authentication Workflow
1. **User Submits Credentials**: Typically, a username/email and password.  
2. **Server Validates Credentials**:  
   - Compares the provided credentials to those stored in a secure database.  
   - If valid, grants the user access.  
3. **Session Establishment**:  
   - Server often generates a token (e.g., JWT) or session ID to track the authenticated user across requests.  
   - This token/session is sent to the user’s browser or client.  
4. **Subsequent Requests**:  
   - The user includes the token/session ID with future requests to verify their identity without needing to log in again.  

## Challenges with Traditional Authentication
- Managing multiple accounts and passwords is cumbersome for users.  
- Users often reuse passwords, which can lead to security vulnerabilities.  
- Session management and token expiration require careful implementation.