---
title: 3. Logging in and Logging out
---

## Login Process
- As mentioned earlier, logging in is the process of validating that a user is who they claim to be
- When a user submits a login form they send the server their username and password
- The server validates that the username exists, then confirms that the hashed version of the provided password is correct for that user
- Then the server can create a session and store user information (like their ID or role) in it
- Finally, the session ID is sent to the browser in a cookie
- The browser then sends back this cookie on subsequent requests so the server knows who is sending the request

## Logout Process
- Logging out involves destroying the user’s session on the server
- In Express, `req.session.destroy()` can be used to delete the session, ending the logged-in state
- The server then tells the browser to remove the cookie, as the session stored in the cookie is no longer valid