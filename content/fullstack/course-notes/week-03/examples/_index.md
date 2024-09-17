---
title: 4. Examples
---

## Example 1: Read a text file in different ways
- Read a text file in a synchronous way

  ```js
  #!/usr/bin/env node

  const fs = require('fs');
  const path = require('path');

  const filePath = path.join(__dirname, 'example.txt');

  function readFileSync() {
    try {
      const fileContent = fs.readFileSync(filePath, 'utf-8');
      console.log('Synchronous Read:');
      console.log(fileContent);
    }
    catch (error) {
      console.error('Error reading file synchronously:', error);
    }
  }

  readFileSync();
  ```
- Read a text file in an asynchronous way with Promises
  ```js
  #!/usr/bin/env node

  const fs = require('fs').promises;
  const path = require('path');

  const filePath = path.join(__dirname, 'example.txt');

  async function readFileAsync() {
    try {
      const fileContent = await fs.readFile(filePath, 'utf-8');
      console.log('Asynchronous Read (Promises):');
      console.log(fileContent);
    }
    catch (error) {
      console.error('Error reading file synchronously:', error);
    }
  }

  readFileAsync();
  ```
- Read a text file in an asynchronous way with callbacks
  ```js
  #!/usr/bin/env node

  const fs = require('fs');
  const path = require('path');

  const filePath = path.join(__dirname, 'example.txt');

  function readFileWithCallback() {
    fs.readFile(filePath, 'utf-8', (error, fileContent) => {
      if (error) {
        console.error('Error reading file asynchronously (Callback):', error);
      }
      else {
        console.log('Asynchronous Read (Callback):');
        console.log(fileContent);
      }
    });
  }

  readFileWithCallback();
  ```