---
title: 2. Setting up Node.js
cascade:
  type: docs
---

## 1. Download and Install Node.js
- Go to the official Node.js website: **[nodejs.org](https://nodejs.org)**
- We'll be using Node.js version 22 for this course, as that's the current LTS build
  - LTS stands for long term support, meaning that it will be getting security updates for a longer period of time
  - This is preferred for production environments as it (generally) brings stability

## 2. Verify Installation
- After installation, open your terminal and run the following commands to ensure Node.js is installed correctly:
  - Check Node.js version: 
    ```bash
    node -v
    ```
    - You're expecting an output of `v22.*.*` 
  - Check npm version (Node Package Manager, installed with Node.js):
    ```bash
    npm -v
    ```
    - You're expecting an output of `v10.*.*`

<details>
  <summary><b>Managing Multiple Node.js Versions with nvm</b></summary>
  
  - While it isn't necessary for this course, at times you may encounter yourself needing to use different node versions for different projects
  - `nvm` (Node Version Manager) allows you to easily switch between node versions
  - You can check out `nvm` at their [github page](https://github.com/nvm-sh/nvm) or [here](https://github.com/coreybutler/nvm-windows) for a Windows version
  - With `nvm` installed, switching node versions is as simple as `nvm use 22`
</details>