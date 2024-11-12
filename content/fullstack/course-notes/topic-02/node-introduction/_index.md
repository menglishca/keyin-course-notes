---
title: 1. Introduction to Node.js
cascade:
  type: docs
---

## 1. What is Node.js?
- **Node.js** is an open-source, cross-platform runtime environment for executing JavaScript code **outside** of a web browser
- It’s built on **Chrome’s V8 JavaScript engine**, which compiles JavaScript directly to machine code for fast execution
  - In order to execute Javascript a web browser has (what we call) a Javascript engine
  - This engine compiles or interprets the Javascript code on the page, and then executes it appropriately in the browser
- Node.js was the first big push to allow Javascript to be ran outside the browser
- Node.js is a runtime for Javascript, not a Javascript framework
  - This means Node.js is just an environment that can execute Javascript
  - It doesn't natively provide any form of structure for building a specific application
  - Instead frameworks like **Express.js** were created to make it easier to build a web backend with Node.js

<details>
  <summary>Fun Fact: Other JavaScript Runtimes Exist! 🚀</summary>

  - **Node.js** is the most popular JavaScript runtime, but there are others too!
  
  - **Deno**:
    - Created by **Ryan Dahl**, the original author of Node.js, as a "do-over" to fix design issues in Node.
    - Built with **security first** (e.g., no access to the file system or network by default).
    - Natively supports **TypeScript** out of the box, no additional setup needed.

  - **Bun**:
    - A newer, high-performance runtime designed to be **fast** (think supercharged Node.js).
    - Aims to be an all-in-one tool for developers, so it includes many common tools, reducing the need for multiple tools during development
</details>

## 2. Key Features of Node.js
- **Asynchronous and Event-driven**:
  - Node.js has built in, simple support for asynchronous programming
  - Meaning operations like reading files, querying databases, and making API calls could be done simultaneously, instead of sequentially
  - Due it's non-blocking nature, Node.js is extremely efficient for I/O intensive tasks
  - This means it can handle thousands of I/O based requests concurrently
  
- **Single-threaded with Event Loop**:
  - Node.js operates on a **single thread** but uses an event loop to manage concurrent requests
    - This means it can do multiple things "at once" but not in the way you would usually expect with a multi-threaded program
  - It delegates heavy operations (like database queries) to background processes where they can continue to be executed in the background
  - Then, while those run, the rest of the code can continue
  
- **NPM (Node Package Manager)**:
  - Node.js comes with **npm**, the default package manager for Node.js
    - A package manager is a tool that helps a developer manage their external libraries (known as packages)
  - Node.js, through npm has a [huge ecosystem of packages](https://www.npmjs.com/) just waiting for use
  - `npm` makes it extremely easy to create new packages or add existing ones to your project
    - Using these premade packages can help you get your project off the ground quickly

## 3. Why Node.js?
- There are tons of options when working with web development, you can create a web backend in almost every language (PHP, Ruby and Java used to be common). So why use Node.js?
- **Speed and Efficiency**
  - Node.js runs on the "Chrome V8" engine, which compiles Javascript to machine code for fast execution
  - Asynchoronous I/O makes it able to handle high volumes of I/O heavy tasks (like database work or network requests) at once
- **Lots of support**
  - As silly as it is, Node.js is popular in part because everyone else is using it too
  - With a large community, there are already lots of resources out there to help you learn and solve problems
  - `npm` provides easy access to a huge volume of packages, which means the barrier to get up and running is even lower
- **Same language on the front and backend**
  - Using the same language everywhere means developers don't have to spend the time learning and becoming comfortable with multiple languages
  - Reduces the cognitive load for developers when switching from the front to the backend
  - This increases development speed while (often times) lowering costs