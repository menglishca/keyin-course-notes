---
title: 2. Unit Testing
---

## What is Unit Testing?
- A **unit test** is a test that validates a unit of code produced the expected output when provided with some known input
- A **unit** is usually the smallest piece of code you can isolate, frequently (but not always) a function is used to represent a single unit
- An example of a unit test could be:
```javascript
function addNumbers(first, second) {
    return first + second;
}

test(`Verify numbers are added correctly`, () => {
    expect(addNumbers(1, 1)).toReturnValue(2);
});
```

- That example is really simple, but the idea is clear:
  - The function `addNumbers` should add the two numbers passed as arguments together
  - Our test attempts to add two numbers and verify the output is what is expected

## Why do we bother with unit tests?
- Mainly because writing perfect code is hard (average is 1-25 bugs per 1000 lines of code delivered to customers)
- Unit tests help us to:
  - **Catch bugs early** as we can test the outputs of our code before we release
  - **Prevent regression bugs**, aka prevents a bug you fixed last week from coming back after you changed something this week. If you have a test to verify that you fixed the bug, if you reintroduce the bug the test will fail
  - **Improves code quality**: Code has to be written in a certain way to be testable, and testable code is usually higher quality code
    - We won't be focusing on that much
- Unit tests are really just a way to make sure that when you release code to the public at least _most_ of the bugs have already been squashed because your unit tests caught them

## How does a unit test work?
- Unit tests, structurally, are pretty simple:
  - They provide a piece of code with some inputs, and verify the ouputs match what is expected
- Frequently, when writing unit tests you'll often want to try and cover the following scenarios:
  - You should be testing against the typical use cases for your code
  - Test that any edge cases are covered
  - Test that any invalid input or errors are handled in an expected way
    - When it comes to testing errors, a succesful test doesn't mean that your code handles every error
    - Sometimes just throwing the error is acceptable
    - However, the test should validate that the expected behvaiour (which can be throwing the error) happens

## Characteristics of a good unit test
- **Isolated**
  - A unit test should only test one piece of functionality at a time
  - It should not depend on other, outside systems in order to work
- **Deterministic**
  - Rerunning the same unit test multiple times should always produce the same results
- **Fast**
  - Unit tests should be small, and only test one thing at a time
  - As such, they should be able to run very quickly