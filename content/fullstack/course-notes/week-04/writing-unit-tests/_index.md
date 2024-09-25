---
title: 4. Writing Unit Tests
---

As discussed earlier, unit tests are important to help maintain code quality and reduce bugs. But how do we write them?

## Getting Started
- Install Jest in your node project with `npm install --save-dev jest`
- Create your test file (either in your `__tests__` folder or with file extension: `.test.js` or `.spec.js`)
- Run your tests with `npm jest`

<details>
    <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 1: Palindromess</h2></summary>
    <ul>
        <li><p>Write a function what checks if the provided string is the same forwards as it is backwards</p></li>
        <ul style="margin-top: 0px">
            <li style="list-style-type: circle;">Ignore spacing and punctuation</li>
        </ul>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Function</strong></summary>

```javascript
export function isPalindrome(str) {
    const cleanedStr = str.toLowerCase().replace(/[\W_]/g, '');
    return cleanedStr === cleanedStr.split('').reverse().join('');
}
```
</details>
        </li>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Tests</strong></summary>

```javascript
const isPalindrome = require('./isPalindrome');

test('returns true for a simple palindrome', () => {
    expect(isPalindrome('racecar')).toBe(true);
});

test('returns false for a non-palindrome', () => {
    expect(isPalindrome('hello')).toBe(false);
});

test('ignores spaces and punctuation', () => {
    expect(isPalindrome('A man, a plan, a canal, Panama')).toBe(true);
});
```
</details>
        </li>
    </ul>
</details>
<br />
<details>
    <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 2: Factorials</h2></summary>
    <ul>
        <li><p>Write a function that calculates the factorial of a number.</p></li>
        <ul style="margin-top: 0px">
            <li style="list-style-type: circle;">Ensure a factorial of 0 properly returns 1</li>
            <li style="list-style-type: circle;">Factorials of negative numbers should return `undefined`</li>
        </ul>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Function</strong></summary>

```javascript
export function factorial(n) {
    if (n < 0) {
        return undefined;
    }
    if (n === 0) {
        return 1;
    }
    return n * factorial(n - 1);
}
```
</details>
        </li>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Tests</strong></summary>

```javascript
const factorial = require('./factorial');

test('calculates factorial of a positive number', () => {
    expect(factorial(5)).toBe(120);
});

test('returns 1 for factorial of 0', () => {
    expect(factorial(0)).toBe(1);
});

test('returns -1 for negative numbers', () => {
    expect(factorial(-3)).toBe(-1);
});
```
</details>
        </li>
    </ul>
</details>
<br />
<details>
    <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 3: FizzBuzz</h2></summary>
    <ul>
        <li><p>Write a function that to compute the proper FizzBuzz word.</p></li>
        <ul style="margin-top: 0px">
            <li style="list-style-type: circle;">If a number is divisible by 3, return "Fizz"</li>
            <li style="list-style-type: circle;">If a number is divisible by 5, return "Buzz"</li>
            <li style="list-style-type: circle;">If a number is divisible by 3 and 5, return "FizzBuzz"</li>
            <li style="list-style-type: circle;">Otherwise, return the provided number</li>
        </ul>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Function</strong></summary>

```javascript
export function fizzBuzz(number) {
    if (numnber % 3 == 0 && number % 5 == 0) {
        return 'FizzBuzz';
    }
    if (numnber % 3 == 0) {
        return 'Fizz';
    }
    if (numnber % 5 == 0) {
        return 'Buzz';
    }
    
    return number.toString();
}
```
</details>
        </li>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Tests</strong></summary>

```javascript
const fizzBuzz = require('./fizzbuzz');

test('returns Fizz for multiples of 3', () => {
    expect(fizzBuzz(9)).toBe('Fizz');
});

test('returns Buzz for multiples of 5', () => {
    expect(fizzBuzz(10)).toBe('Buzz');
});

test('returns FizzBuzz for multiples of 3 and 5', () => {
    expect(fizzBuzz(15)).toBe('FizzBuzz');
});

test('returns the number if not divisible by 3 or 5', () => {
    expect(fizzBuzz(7)).toBe('7');
});
```
</details>
        </li>
    </ul>
</details>
<br />
<details>
    <summary><h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 4: Greeting Generator</h2></summary>
    <ul>
        <li><p>Write a function that gets a greeting for a user based on the time of day.</p></li>
        <ul style="margin-top: 0px">
            <li style="list-style-type: circle;">If it's currently before 12 PM, return "Good Morning"</li>
            <li style="list-style-type: circle;">If it's between 12 and 6PM return "Good Afternoon"</li>
            <li style="list-style-type: circle;">Otherwise, return "Good Evening"</li>
        </ul>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Function</strong></summary>

```javascript
function generateGreeting() {
    const currentHour = new Date().getHours();

    if (currentHour < 12) {
        return 'Good morning!';
    }
    else if (currentHour < 18) {
        return 'Good afternoon!';
    }
    else {
        return 'Good evening!';
    }
}
```
</details>
        </li>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Testable Function</strong></summary>

```javascript
// Function to get the current hour
function getCurrentHour() {
    return new Date().getHours();
}

// Function to generate the greeting based on the hour
function getGreetingMessage(hour) {
    if (hour < 12) {
        return 'Good morning!';
    }
    else if (hour < 18) {
        return 'Good afternoon!';
    }
    else {
        return 'Good evening!';
    }
}

```
</details>
        </li>
        <li>
            <details>
                <summary style="list-style: none;"><strong>Finished Tests</strong></summary>

```javascript
const { getGreetingMessage } = require('./greeting');

// Test greeting message based on different times of day
test('returns "Good morning!" for hours less than 12', () => {
    expect(getGreetingMessage(9)).toBe('Good morning!');
});

test('returns "Good afternoon!" for hours between 12 and 17', () => {
    expect(getGreetingMessage(15)).toBe('Good afternoon!');
});

test('returns "Good evening!" for hours greater than or equal to 18', () => {
    expect(getGreetingMessage(20)).toBe('Good evening!');
});
```
</details>
        </li>
    </ul>
</details>