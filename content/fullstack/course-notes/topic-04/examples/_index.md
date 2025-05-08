---
title: 4. Examples
---

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 1: Simple Async Order of Operations</h2></summary>

  ```javascript
console.log("1. Start");

setTimeout(() => {
    console.log("3. Inside setTimeout");
}, 2000);

console.log("2. End");
  ```

  <details>
    <summary>Output</summary>

  ```plaintext
1. Start
2. End
3. Inside setTimeout
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 2: Async Order of Operations in a Function</h2></summary>

  ```javascript
function asyncTest() {
    console.log("1. Start");

    setTimeout(() => {
      console.log("3. Inside setTimeout");
    }, 2000);

    console.log("2. End");
}
asyncTest();
  ```

  <details>
    <summary>Output</summary>

  ```plaintext
1. Start
2. End
3. Inside setTimeout
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 3: Async Non-determinism</h2></summary>

  ```javascript
  console.log("1. Start");

  setTimeout(() => {
    console.log("3. Inside setTimeout");
  }, 0);

for (let i = 0; i < 10000000000; i++) {}
console.log("2. End");
  ```

  <details>
    <summary>Output</summary>

  ```plaintext
1. Start
2. End
3. Inside setTimeout
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 4: Promise Order of Operations in a Function</h2></summary>

  ```javascript
function mockPromiseCall(waitTime, returnValue = "Hello World!", reject = false) {
    return new Promise((resolve, shouldReject) => {
        setTimeout(() => {
            if (shouldReject) {
                reject(returnValue);
            }
            else {
                resolve(returnValue);
            }
        }, waitTime);
    });
}

function asyncTest() {
    console.log("1. Start");
    mockPromiseCall(0, "Some return value").then((result) => console.log(result));
    console.log("2. End");
}
asyncTest();
  ```

  <details>
    <summary>Output</summary>

  ```plaintext
1. Start
2. End
3. Some return value
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 5: Promise Chaining Order of Operations</h2></summary>

  ```javascript
function mockPromiseCall(waitTime, returnValue = "Hello World!", shouldReject = false) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            if (shouldReject) {
                reject(returnValue);
            }
            else {
                resolve(returnValue);
            }
        }, waitTime);
    });
}

function asyncTest() {
    console.log("Start");
    mockPromiseCall(0, "First promise chain")
      .then((result) => console.log(result))
      .then(() => console.log("Second promise chain"))
      .then(() => console.log("Third promise chain"));
}
asyncTest();
  ```

  <details>
    <summary>Output</summary>

  ```plaintext
Start
First promise chain
Second promise chain
Third promise chain
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 6: Async/Await Order of Operations</h2></summary>

  ```javascript
function mockPromiseCall(waitTime, returnValue = "Hello World!", shouldReject = false) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            if (shouldReject) {
                reject(returnValue);
            }
            else {
                resolve(returnValue);
            }
        }, waitTime);
    });
}

async function asyncTest() {
    console.log("Start");
    const asyncResult = await mockPromiseCall(0, "Some return value");
    console.log(asyncResult);
    console.log("End");
}
asyncTest();
  ```

  <details>
    <summary>Output</summary>

  ```plaintext
Start
Some return value
End
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 7: Async/Await Order of Operations with Chains</h2></summary>

  ```javascript
function mockPromiseCall(waitTime, returnValue = "Hello World!", shouldReject = false) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            if (shouldReject) {
                reject(returnValue);
            }
            else {
                resolve(returnValue);
            }
        }, waitTime);
    });
}

async function asyncTest() {
    console.log("Start");
    const asyncResult = await mockPromiseCall(0, "Some return value")
      .then((result) => {
        console.log(result);
        return "Post Chain";
      });
    console.log(asyncResult);
    console.log("End");
}
asyncTest();
  ```

  <details>
    <summary>Output</summary>

  ```plaintext
Start
Some return value
Post Chain
End
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 8: Synchronous File Reading with `fs.readFileSync`</h2></summary>

  ```javascript
const fs = require("fs");

function readFileSyncExample() {
    console.log("Start reading file...");
    const data = fs.readFileSync("example.txt", "utf-8");
    console.log("File content:", data);
    console.log("Done reading file.");
}

readFileSyncExample();
  ```
  <details>
    <summary>Output</summary>

  ```plaintext
Start reading file...
File content: [file contents of example.txt]
Done reading file.
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 9: Synchronous File Writing</h2></summary>

  ```javascript
const fs = require("fs");

function writeFileSyncExample() {
    console.log("Start writing file...");
    fs.writeFileSync("output.txt", "This is a synchronous write.");
    console.log("File written successfully.");
}

writeFileSyncExample();
  ```
  <details>
    <summary>Output</summary>

  ```plaintext
Start writing file...
File written successfully.
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 10: Asynchronous File Reading with Promises</h2></summary>

  ```javascript
const fs = require("fs");

async function readFileAsync() {
    try {
        console.log("Start reading file...");
        const data = await fs.promises.readFile("example.txt", "utf-8");
        console.log("File content:", data);
        console.log("Done reading file.");
    }
    catch (error) {
        console.error("Error reading file:", error);
    }
}

readFileAsync();
  ```
  <details>
    <summary>Output</summary>

  ```plaintext
Start reading file...
File content: [file contents of example.txt]
Done reading file.
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 11: Asynchronous File Writing with Promises</h2></summary>

  ```javascript
const fs = require("fs");

async function writeFileAsync() {
    try {
        console.log("Start writing file...");
        await fs.promises.writeFile("output.txt", "This is an async write with promises.");
        console.log("File written successfully.");
    }
    catch (error) {
        console.error("Error writing file:", error);
  }
}

writeFileAsync();
  ```
  <details>
    <summary>Output</summary>

  ```plaintext
Start writing file...
File written successfully.
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 12: Asynchronous File Reading with Callbacks</h2></summary>

  ```javascript
const fs = require("fs");

function readFileCallback() {
    console.log("Start reading file...");
    fs.readFile("example.txt", "utf-8", (err, data) => {
        if (err) {
            console.error("Error reading file:", err);
        }
        else {
            console.log("File content:", data);
        }
        console.log("Done reading file.");
    });
}

readFileCallback();
  ```
  <details>
    <summary>Output</summary>

  ```plaintext
Start reading file...
File content: [file contents of example.txt]
Done reading file.
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 13: Asynchronous File Writing with Callbacks</h2></summary>

  ```javascript
const fs = require("fs");

function writeFileCallback() {
    console.log("Start writing file...");
    fs.writeFile("output.txt", "This is an async write with callbacks.", (err) => {
        if (err) {
            console.error("Error writing file:", err);
        }
        else {
            console.log("File written successfully.");
        }
    });
}

writeFileCallback();
  ```
  <details>
    <summary>Output</summary>

  ```plaintext
Start writing file...
File written successfully.
  ```
  </details>
</details>

<details>
  <summary><h2 style="display: inline-flex; margin-top: 10px;">Example 14: Reading Multiple Files in Parallel </h2></summary>

  ```javascript
const fs = require("fs");

async function readMultipleFiles() {
    try {
        console.log("Start reading files...");
        const [file1, file2] = await Promise.all([
            fs.promises.readFile("example1.txt", "utf-8"),
            fs.promises.readFile("example2.txt", "utf-8")
        ]);
        console.log("File 1 content:", file1);
        console.log("File 2 content:", file2);
        console.log("Done reading files.");
    }
    catch (error) {
        console.error("Error reading files:", error);
    }
}

readMultipleFiles();
  ```
  <details>
    <summary>Output</summary>

  ```plaintext
Start reading files...
File 1 content: [file contents of example1.txt]
File 2 content: [file contents of example2.txt]
Done reading files.
  ```
  </details>
</details>
