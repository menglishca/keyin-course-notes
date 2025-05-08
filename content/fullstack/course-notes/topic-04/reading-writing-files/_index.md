---
title: 3. Reading and Writing Files in Node.js
---

- Node.js provides the `fs` (File System) module to interact with the file system for reading and writing files.
- It includes both `asynchronous` and `synchronous` methods for working with files

## Reading Files
- **Synchronous File Reading**
  - `readFileSync` is the **synchronous** method for reading files, it only takes the file location and the file encoding
  - This will block code execution until the file has been read
  - In applications where performance is critical, it's often preferred to use the `asynchronous` version, but the `synchronous` version can be a lot easier to reason about
  - **Example**
    ```javascript
    const data = fs.readFileSync('example.txt', 'utf8');
    console.log(data);
    ```
    - This will block the code until the entire contents of `example.txt` are read, and then print out the contents.
- **Asynchronous File Reading**
  - `readFile` is the **asynchronous** method for reading files, it take the file location and encoding, same as the synchronous method. However, it also takes a `callback` function which will be ran after the file contents are read
  - The callback function takes two parameters when it is ran, an `Error` object (in case an error occurs while reading) and a `string` containing the file contents
  - **Example**
  ```javascript
  fs.readFile('example.txt', 'utf8', (err, data) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log(data);
  });
  ```
  - This will not block the code, but when the reading of `example.txt` has finished, the data will be printed or the error (if applicable)

## Writing Files
- **Synchronous File Writing**
  - `writeFileSync` (like `readFileSync`) is the synchronous method for writing files
  - Again, it will block execution until the file has been written and it is often preferred to use the asynchronous version if performance is an issue
- **Asynchronous File Writing**
  - Simular to `readFile` the asyncrhonous counterpart for writing is `writeFile`
  - `writeFile` also takes a `callback` function (like it's `readFile` counterpart), however this callback only takes an `error` parameter, as there is no data to return

## Common Errors
- When working with files, there are many opportunities for error
- It's important to be aware of this, and do your best to handle at least some of the common errors
- **File not found**: An extremely common error that occurs when the file attemtping to be read, or written to, does not exist.
  - Surrounding any particular code in a try/catch block can help
  - You can also check if a file exists with something like `existsSync`
- **Inadequate permssions**: Another common errors that occurs when you don't have the proper permissions to perform the asked file operation
  - The best method for this error is to use standard error handling like a try/catch statement or checking the error object in the async callback