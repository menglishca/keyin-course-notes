---
title: 2. A brief React review
---

## A Brief React Review

- **React** is a JavaScript library for building user interfaces, especially **single-page applications (SPAs)**.
- It helps developers break UIs into **components**—reusable, isolated pieces of code that manage their own state and rendering.

## Key Concepts

### Components
- The building blocks of a React app.
- Defined as functions (or classes) that return JSX (HTML-like syntax).
- Example:
  ```jsx
  function Welcome(props) {
    return <h1>Hello, {props.name}!</h1>;
  }
  ```

### JSX
- Stands for **JavaScript XML**.
- Syntax extension that lets you write HTML-like code inside JavaScript.
- Makes it easier to describe what the UI should look like.

### Props
- Short for “properties”.
- Passed from parent to child components to customize behavior or content.

### State
- A way to track data that changes over time inside a component.
- When state changes, the component automatically **re-renders**.
- Example:
  ```jsx
  const [count, setCount] = useState(0);
  ```

### useEffect
- A hook for running side effects (e.g. data fetching, event listeners).
- Runs after the component renders.

## What React Handles
- DOM updates and rendering logic
- UI component structure and reusability
- Local UI state management

## What React Doesn’t Handle
- Talking to the database
- Storing or validating user data
- Server-side logic

For those things, we’ll need a **backend**—and that’s where Express comes in.
