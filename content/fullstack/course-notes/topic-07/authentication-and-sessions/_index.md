---
title: 1. Authentication and Sessions
---

## Authentication vs. Authorization
- *Authentication* verifies *who a user is*. In a web app, authentication typically involves logging in with credentials (like a username and password)
  - It’s how users prove their identity to the server.
- *Authorization* is about *what a user can do*. Once authenticated, authorization ensures that users can only access resources or perform actions they’re allowed to
  - As an example, only an admin might be authorized to delete users.
- **Example**: Think of a library:
  - Checking a person’s ID to verify their identity is *authentication*.
  - Deciding which sections of the library they can enter based on their role (student vs. librarian) is *authorization*.

## What is a Session?
- A *session* is a way for the server to remember information about a user across multiple requests
- HTTP is a *stateless* protocol, meaning no data is preserved between requests and each request is treated independently
  - Without something like a session, a user would need to send their username and password on every page to re-authenticate themselves
- In web apps, a session is typically created after a user logs in
  - Often, the server will associate the logged in user with a unique *session ID*, then it sends the session ID to the browser in a cookie
- When a user makes a subsequent request, the session ID cookie is sent back to the server
- Then the server can lookup the user's session based on that ID and determine which user sent the request

## Cookies and Their Role in Sessions
- A *cookie* is a small piece of data stored on the user’s browser
- As mentioned earlier, the cookie is then sent back to the server with each request
  - When used with sessions, a cookie typically stores the session ID.
- The browser automatically includes this cookie in request headers
  - This makes it a fairly easy way to communicate the session ID with the server, as the browser provides that data by default