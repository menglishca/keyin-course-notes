---
title: 4. Writing Unit Tests
---

## Introduction
- Unit tests are essential for ensuring that individual components of your code work as intended.
- They help catch bugs early and provide documentation on how the code is expected to behave.

## Setting Up Your Test Environment
1. **Install Jest** (if you haven't already):
   ```bash
   npm install --save-dev jest

    Create a Test File:
        Naming convention: Use .test.js or .spec.js for your test files.
        Example: If you have a function sum.js, create a file named sum.test.js.

## Writing Your First Test
1. Import the Function to Test:
```javascript
  const sum = require('./sum');
```
2. Use the test Function:
- The test function takes two arguments: a description and a function containing the test logic.
```javascript
    test('adds 1 + 2 to equal 3', () => {
        expect(sum(1, 2)).toBe(3);
    });
```
3. Assertions
- Use assertions to verify the expected outcomes.

4. Example of a Basic Unit Test
 - Here’s a complete example of a test for a simple sum function:
```javascript

// sum.js
function sum(a, b) {
    return a + b;
}
module.exports = sum;

// sum.test.js
const sum = require('./sum');

test('adds 1 + 2 to equal 3', () => {
    expect(sum(1, 2)).toBe(3);
});

test('adds 0 + 0 to equal 0', () => {
    expect(sum(0, 0)).toBe(0);
});

test('throws error when adding non-numbers', () => {
    expect(() => sum('1', 2)).toThrow();
});
```

## Best Practices
- Keep Tests Isolated: Each test should be independent of others.
- Name Tests Clearly: Use descriptive names for tests to indicate what they verify.
- Test Edge Cases: Don't forget to test unexpected inputs and boundary conditions.

## Conclusion
- Writing unit tests is a crucial part of the development process.
- It helps ensure that your code remains reliable and maintainable over time.

