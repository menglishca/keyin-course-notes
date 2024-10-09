---
title: 1. Backend Web Development Overview
---

## Refresher
- We're already a little familiar with the topic by now, but just as a quick referesher before we get into today:
  - A "backend" is the server side part of an application. In web development, the backend is the server side part of our site that actually handles the user's requests
  - The "frontend" is the part that the user see's and interacts with
    - _Technically_ your frontend is _basically_ integrated into your backend when you use SSR, but this is _roughly_ the definition

## Backend Stack
- You can (usually) break your (javascript) backend up into a few parts, known as your "stack":
    - The **server** which hosts the application and actually recieves the incoming network requests
    - The **database** which stores and retrieves data needed by the database
    - The **application logic** which is what handles actually responding to the requests
- This simplifcation doesn't work for all stacks, as an example the formerly really popular LAMP stack doesn't really fit this breakdown
- Common examples include:
    - MEAN
        - **M**ongoDB: Backend database
        - **E**xpress.js: Backend application logic
        - **A**ngular: Frontend
        - **N**ode.js: Backend server
    - PERN
        - **P**ostgreSQL: Backend database
        - **E**xpress.js: Backend application logic
        - **R**eact: Frontend
        - **N**ode.js: Backend server
    - There are lots of different stacks, and what you use depends on your personal preferences and requirements
- Usually, one big defining features of a stack is the main language it uses, but the database it uses can also be important