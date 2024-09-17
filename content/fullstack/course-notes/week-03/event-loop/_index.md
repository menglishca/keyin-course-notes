---
title: 1. The Event Loop
---

## Introduction
- Javascript is `single-threaded` (so only one task can be directly executed at a time)
- So how does Javascript handle asynchoronous operations (multiple operations at once) if it's single threaded?
- It uses the **event loop**

## Some terminology (with regards to programming)

- **Synchronous**: In synchronous programming, tasks are executed **one after the other**. The first task must complete fully before the next task can begin (this is how most typical programming works)
- **Asynchronous**: Asynchronous programming allows tasks to be **executed concurrently**. This means a task can start, and while we're waiting for that task to finish, other tasks can run
- **Single-thread**: A single threaded program has **only one thread** on which code can execute. This means it can only execute one task at a time.
- **Multi-thread**: A multi-threaded environment, has **multilple threads** on which code can execute. This allows multiple tasks to be processed in parallel (at the same time)

## What is the Event Loop?
- The **event loop** coordinates task execution between the **call stack**, the **callback queue** and the **microtask queue** to allow for asynchronous execution
- The **event loop** is (essentially) what dictates how code is run in a Javascript engine

## Call Stack
- This is how Javascript keeps track of **synchronous** function execution
- When a synchronous function is called that function is added to the callstack
  - Functions are added to a callstack in a last-in, first-out manner (meaning the newest functions on the stack are the first to leave)
- A function is only removed from the stack when it's finished executing
- **Example**:
  ```javascript
  function getMessage() {
    return "Hello World";
  }

  console.log(getMessage());
  ```

  - In the above example when the `console.log` is called, it will be added to the top of the callstack
  - Then, the `getMessage` call is added to the top of the callstack is added to the top of the callstack as it is called to get the message to print
  - When `getMessage` finishes, it is removed from the callstack
  - Then, when `console.log` prints the message `getMessage` returns the `console.log` is also removed from the callstack

## How does Javascript run asynchronous operations
- Any asynchronous operation (like a timer or a network request) are offloaded to other parts of the Javascript engine so they can be ran in the background
  - This would be **Web APIs** in a web browser or **libuv** in Node.js
- Then the results are handled via the **Callback Queue**

## Callback Queue
- This is how Javascript keeps track of **asynchronous** function execution
- When an asynchronous operation runs, it will (frequently) have a callback associated with it
  - A **callback function** is a function that is executed _after_ another function completes.
  - Typically, callbacks are provided as an argument to an asynchronous function to execute when that asynchronous function executes
  - Event listeners (typically tied to buttons and the like) are also callbacks

- When that asynchronous operation completes, it's callback function is then pushed to the **callback queue**
- The callback queue is managed in a first-in, first-out order
- The Javascript engine monitors the callback queue and the callstack
  - If the callstack is empty, and the callback queue has items, a callback will be pushed to the callstack so it can be executed
  - This allows the asynchronous tasks to be executed after the synchronous tasks are completed

## Examples
- **Example 1**
  
  ```js
  console.log('Start');

  setTimeout(() => {
    console.log('Asynchronous operation');
  }, 1000);

  console.log('End');
  ```

  - **Output:**
  ```text
  Start
  End
  Asynchronous Operation
  ```

  - **Why?**
    - The two console logs run in order, as they're synchronous code
    - After one second has passed, the timeout callback is ran and the `Asynchronous Operation` is printed

- **Example 2**
  
  ```js
  console.log('Start');

  setTimeout(() => {
    console.log('Timeout');
  }, 0);

  console.log('End');
  ```

  - **Output:**
  ```text
  Start
  End
  Timeout
  ```

  - **Why?**
    - The two console logs run in order, as they're synchronous code
    - Even though the `timeout` is `0`, we still have to wait for all the `synchronous` code to be removed from the callstack before we can execute the callback. Therefore, even though the `0` timeout is exceeded instantly, all the `synchronous` code must still execute first

- **Example 3**
  
  ```js
  console.log('Start');

  setTimeout(() => {
    console.log('Timeout');
  }, 500);

  for (let i = 0; i < 1000000000; i++) {
    // Simulate a long synchronous task
  }

  console.log('End');
  ```

  - **Output:**
  ```text
  Start
  End
  Timeout
  ```

  - **Why?**
    - The two console logs run in order, as they're synchronous code
    - Even though the `timeout` is `500`, and will definitely be exceeded after that loop is finished, we still have to wait for all the `synchronous` code to be removed from the callstack before we can execute the callback

