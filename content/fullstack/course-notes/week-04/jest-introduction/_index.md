---
title: 3. Jest
---

## What is Jest?
- **Jest** is a popular testing framework for JavaScript, developed by Facebook.
  - It can be conveniently installed via `npm`
- It's primarily used for testing JavaScript and React applications.
- Jest has built-in support for mocking, assertions and test running, which help make it easier to write and manage your tests
  - **Mocking**: A mock is a simulated version of function/module/object used during testing to simulate some real code
    - The idea is that using a mock helps you isolate your test from those outside dependencies and ensures you're only dependent on the code you actually want to test
  - **Assertion**: An assertion is a statement in a test that verifies that a value matches what is expected
    - This is how your verify what you wanted to happen actually happened
- Jest is also _fairly_ simple to use and can work fresh out of the box with most Javascript projects

## Setting up Jest**
- Jest is installed as a **development dependency** using NPM, `npm install --save-dev jest`
  - We use the `--save-dev` flag as jest is a development dependency, we only need it to develop our package and it isn't important to actually run the package
- To run the tests add a test command to the `scripts` object in your `package.json`:
    ```json
    "scripts": {
        "test": "jest"
    }
    ```
- Now, when you run jest it will look for:
  - Any files ending in `.test.js`, or `.spec.js`
  - Any files in a folder named `__tests__`
- Then, in the files it finds, jest will look for it's valid test commands and run those tests if it finds them
- Example test file: `sum.test.js`:
    ```js
    const sum = require('./sum');
        test('adds 1 + 2 to equal 3', () => {
        expect(sum(1, 2)).toBe(3);
    });
    ```
- After the tests run, Jest will output the results so you can see how your tests did

## Common Jest Features
- **Assertions**
  - As mentioned earlier, jest has a lot of support for assertions, most of which are accessed this way:
    - `expect(someValue).toBe(expectedValue)`
  - Some other common assertions include:
    - `toBe()`: Exact equality.
    - `toEqual()`: Deep equality for objects.
    - `toContain()`: Checks if an array or string contains a value.
    - `toThrow()`: Ensures a function throws an error.
    - You can find even more in the jest documentation, however the above four will likely cover most simple cases

- **Mocks**:
  - As mentioned, Jest can mock: functions, modules, and even entire libraries to isolate the unit under test.
  - Useful for testing code that relies on external services or APIs.
  - Example: Mocking a function:
    ```js
      const myMock = jest.fn();
      myMock.mockReturnValueOnce(10).mockReturnValueOnce(20);
    ```

- **Test Suites**:
  - You can group related tests together using `describe()` blocks.
  - Example:
    ```js
      describe('Math functions', () => {
        test('adds 1 + 2 to equal 3', () => {
          expect(sum(1, 2)).toBe(3);
        });
      });
    ```

- **Setup and Teardown**:
  - Use `beforeEach()`, `afterEach()`, `beforeAll()`, and `afterAll()` to run code before or after tests.
  - Example: Cleaning up a mock after each test:
    ```js
      afterEach(() => {
        jest.clearAllMocks();
      });
    ```
