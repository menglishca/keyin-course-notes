---
title: 2. Asynchronous Programming
---

## What are Promises?
- We previously mentioned that `callback` functions are used when working with asynchronous programming, however that's not the only method
- **Promises** are the more modern way to work with asynchronous code
- A `Promise` is an object which represents the _eventual_ failure or completion of an asynchronous operation
- It represents that eventual result with a few states:
  - **Pending**: A penidng promise represents an asynchronous operation which is still ongoing, and doesn't have a concrete result yet
  - **Fulfilled**: The asynchronous operation has completed successfully, and a result is available
  - **Rejected**: The asynchronous operation has failed, and an error is available

## Creating a Promise
- The main way to create a `Promise` is with the `Promise` constructor
- The constructor takes a function with two arguments:
  - `resolve`: This function should be called when the `Promise` succeeds
  - `reject`: This function should be called if the `Promise` fails
- Factory methods also exist to simplify this process, including: 
  - `Promise.resolve` which takes a value as a parameter and returns a fulfilled `Promise` with the provided value as the result
  - `Promise.reject` which takes an error as a parameter and returns a rejected `Promise` with the provided error available

## Using promises
- There are three main methods used to handle the result of a `Promise` they are:
  - `then()`: Runs after a promise is fulfilled. `then` takes one parameter, a callback function which is ran with the result of the `Promise` as a parameter
  - `catch()`: Runs if a promise is rejected. `catch` takes one parameter, a callback function which is ran with the error that is thrown when the `Promise` is rejected
  - `finally()`: Runs last, after the `then` or `catch` operation, and runs regardless of whether or not the `Promise` is rejected or fulfilled. `finally` takes a callback function as a parameter
- Each of these methods returns a new `Promise` upon which, the above methods can be used

## Chaining Promises
- As mentioned earlier, each call to `then`, `catch` or `finally` returns a new `Promise` object
- This allows you to chain Promises together
- Example:
  ```javascript
  const myPromise = Promise.resolve("Hello");
  myPromise
    .then((result) => {
        console.log(result);
        return "World";
    })
    .then((result) => {
        console.log(result);
    });
  ```

  - This would print:
  ```text
  Hello
  World
  ```

## Async/Await
- `async` and `await` are **syntactic sugar** built on top of Promises
- They allow you to write `asynchronous` code that looks like synchronous code, so it can be easier to reason about
- Examples of `async/await`:
  - Assume we have the following function to fetch data:
    ```javascript
    function fetchData() {
      return new Promise((resolve, reject) => {
        const success = true;
        if (success) {
          resolve('Data fetched successfully');
        }
        else {
          reject('Error fetching data');
        }
      });
    }
    ```
  - If we wanted to safely call it with the usual Promise syntax, we could write something like:
    ```javascript
    fetchData()
      .then((data) => console.log(data));
      .catch((error) => console.error(error));
    ```
  - That same code could be written like the following using `async/await`
    ```javascript
    try {
        const data = await fetchData();
        console.log(data);
    }
    catch (error) {
        console.error(error);
    }
    ```
