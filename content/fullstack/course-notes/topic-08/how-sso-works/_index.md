---
title: 3. How does SSO Work?
---

## Key Terms

1. **Identity Provider (IdP)**  
    - A service that handles authentication for users
    - It is the central authority that verifies user credentials and issues tokens for accessing other applications.  
    - **Examples**:  
      - Google  
      - Microsoft Azure AD  
      - Okta  
    - **Role in SSO**:  
      - Validates user credentials (e.g., username and password).  
      - Issues authentication tokens (e.g., JWTs).  

2. **Service Provider (SP)**  
    - The application or service that the user wants to access (e.g., a project management tool, HR system).  
    - **Role in SSO**:  
     - Delegates authentication to the IdP.  
     - Verifies tokens provided by the IdP to grant access.  

3. **JSON Web Token (JWT)**
    - A JSON Web Token (JWT) is a small, secure package of information used to prove someone is authenticated.
    - Think of it like a **digital ID card** that you can show to different apps to prove who you are.
    - **Parts of a JWT**  
      - A JWT has three parts, separated by dots (e.g., `abc.def.ghi`):
      - **Header**:  
        - Contains basic information about the token, like the type of token (JWT) and how it’s secured (e.g., "signed with a secret").
      - **Payload**:  
        - Contains details about the user (called **claims**), such as:  
          - User ID  
          - Email  
          - Permissions (e.g., "admin" or "read-only")
      - **Signature**:  
        - Ensures that the token hasn’t been tampered with.  
        - The server signs the token using a secret or private key, and the Service Provider checks this signature to confirm it's valid.
    - **Why Use JWTs?**  
      - **Compact**: Easy to send in a URL or request header.  
      - **Secure**: Can’t be modified without breaking the signature.  
      - **Portable**: Works across different applications and systems.

### Analogy: A JWT as a Movie Ticket  
- When you buy a movie ticket, the ticket has your seat and showtime written on it (this is like the **payload**).  
- The theater’s stamp on the ticket ensures it’s genuine (this is the **signature**).  
- You show the ticket to enter the theater.  
- If you try to alter the ticket (e.g., changing the seat number), the stamp no longer matches, and you’re denied entry.  
- JWTs work the same way—they securely store information about you and ensure that the information hasn’t been tampered with.  

## How SSO Works: Step-by-Step

1. **User Tries to Access an Application**  
   - The user attempts to log in to a Service Provider (SP), such as a project management tool.  

2. **Redirection to the IdP**  
   - The Service Provider redirects the user to the Identity Provider (IdP) if they are not already authenticated.  

3. **User Authenticates with the IdP**  
   - The user provides their credentials (e.g., username and password).  
   - The IdP validates the credentials.  

4. **IdP Issues a Token**  
   - If authentication is successful, the IdP generates a token (e.g., a JWT) and sends it back to the Service Provider.  
   - The token contains information about the user, such as their ID and roles.  

5. **Service Provider Validates the Token**  
   - The Service Provider verifies the token's authenticity using the IdP’s public key.  
   - If valid, the user is granted access to the application.  

6. **Subsequent Access**  
   - The token allows the user to access other connected Service Providers without needing to log in again.  

## Example: Corporate Application Suite
An employee logs in to their company's IdP to access email, a project management tool, and a time tracker.    
1. The user logs in once via the IdP (e.g., Okta).  
2. The IdP issues a JWT to the email app, granting access.  
3. When the user visits the project management tool, it recognizes the JWT and automatically logs the user in.  
4. No additional login is needed for the time tracker or any other connected application.  

## Benefits of SSO
- Simplifies the user experience.  
- Reduces password fatigue and enhances security.  
- Centralizes authentication, making it easier to manage user access.  
