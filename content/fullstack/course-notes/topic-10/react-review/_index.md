---
title: 2. A Brief React Review
---

## A Brief React Review
- **React** is a JavaScript library for building user interfaces, in particular React excels at  single-page applications (also known as SPAs)
- It helps developers break UIs into **components**
  - Which are reusable, isolated pieces of code that manage their own state and rendering

## Key Concepts
### Components
- The building blocks of a React app, usually used to break up UI logic into separate pieces
- We define components as functions (or classes, albeit that's the older standard) that return JSX (HTML-like syntax).
- Example:
  ```jsx
  function Welcome(props) {
    return <h1>Hello, {props.name}!</h1>;
  }
  ```

### JSX
- Stands for **JavaScript XML**.
- It's an extension of the Javascript syntax that lets your write HTML-esque code inside Javascript
- Makes it easier to describe what the UI should look like

### Props
- Short for “properties”.
- Props define the data that is passed from the parent of a component to it's children
- Frequently that data is used to then define behaviour or provide context to a child component

### State
- A way to track data that changes over time inside a component.
- When state changes, the component automatically re-renders
- Example:
  ```jsx
  const [count, setCount] = useState(0);
  ```

### Hooks
- Hooks are a part of React, only used in Functional React components that allow you to "hook" into different parts of the React state and lifecycle
- Common hooks include: `useState`, `useEffect` and `useRef`

### useState
- Allows you to access state inside of a functional component
- When the state value changes the component re-renders
- The hook returns an array, where the first value is the state value itself and the second value is a function to update that state's value
- It's important to note that state updates are not guaranteed to run exactly when you call them. State updates are asynchronous, and may happen in the background to improve React performance
```jsx
const [count, setCount] = useState(0);
```

### useEffect
- A hook for running side effects after your component renders
- Commonly used for:
  - Fetching data from an API
  - Setting up event listeners
  - Interacting with the DOM
```jsx
useEffect(() => {
  // code to run after the component renders
}, []);
```

### useRef
- Used to persist data between renders, without causing re-renders when the value changes
- Often, but not only, used for maintaining a reference to the actual underlying DOM element for a component
- **Example: Accessing DOM elements**
```jsx
const inputRef = useRef();

const handleClick = () => {
  inputRef.current.focus(); // focuses the input field
};

return (
  <>
    <input ref={inputRef} />
    <button onClick={handleClick}>Focus Input</button>
  </>
);
```
- Here, we’re directly accessing a DOM element (like you would in vanilla JS) using `ref`.

## What React Handles
- DOM updates and rendering logic
- UI component structure and reusability
- Local UI state management

## What React Doesn’t Handle
- Talking to the database
- Storing or validating user data
- Server-side logic

For those things, we’ll need a **backend**—and that’s where Express (or some other backend) comes in
