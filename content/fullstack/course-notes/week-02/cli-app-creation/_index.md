---
title: 4. Creating a basic CLI application
cascade:
  type: docs
---

## 1. Setting up the project
- Start by creating a new project directory and navigating to it
  ```shell
  mkdir simple-cli
  cd simple-cli
  ```
- Next, initialize a git repository to ensure your project is properly tracked
  ```shell
  git init
  ```
- Next, initialize the new Node.js project
  - Using `npm init` to initialize the project will help you create the `package.json` file using a series of prompts
  - Alternatively, you can use the default options and skip the prompts via `npm init -y`
  <details>
    <summary><b>What does the package.json file do?</b></summary>

    - **Tracks Project Metadata**: The `package.json` file contains the project's name, version and description
    - **Dependency Management**: It lists the dependencies and dependency versions your project requires. If someone else clones the project, they can run `npm install` to install all necessary dependencies.
    - **Bin Field**: Specifies the CLI commands the project exposes. The `bin` field maps a custom command (like `simple-cli`) to a JavaScript file (like `index.js`) that will be executed when the command is run.
    - **Entry Point**: By specifying the `"main"` field, it tells Node.js which file is the entry point to the application.
  </details>

## 2. Setting up the bin command
- Next, inside the `package.json` file setup your `bin` section
  - A `bin` section defines all CLI commands you want your project to expose to the user
  - The `bin` seciton is an `object` in the `package.json` which maps a command name to the javascript file that should be ran when the command is executed.
  - We'll add the following bin section:
    ```json
      {
        "name": "simple-cli-app",
        "version": "1.0.0",
        "bin": {
          "simplecli": "./index.js"
        }
      }
    ```

## 3. Creating the CLI script
- Note: For reference, the Node.js default library documentation can be [found here](https://nodejs.org/docs/latest-v22.x/api/)
1. **Create the index.js file**
  - Inside your project's root directory, create a new file called `index.js`, this is where we'll write our CLI script
    - `index.js` was chosen as the name as that's what we set when we created the `bin` command
2. **Accessing script arguments**
  - Inside our `index.js` file we'll need a way to access the arguments passed to the script, we can grab this from the `process.argv` field 
    ```javascript
    #!/usr/bin/env node

    import process from 'node:process';

    const arguments = process.argv;
    console.log(arguments);
    ```
  - We can test our script by running `npx simplecli` and notice we get an array printed to the console!
  - By default, the `process.argv` array contains two standard arguments:
    - The first is the path to the `node` executable which is running the script
    - The second is the path to the JavaScript file being executed
  - For our purposes, we won't need those arguments so we can `slice` them out
    ```javascript
    #!/usr/bin/env node

    import process from 'node:process';

    const arguments = process.argv.slice(2);
    console.log(arguments);
    ```
  - Running our script with `npx simplecli testarg` now just prints the array with only the `testarg` element
3. **Adding a greet argument**
  - To add a little interactivity to our script, let's add a `--greet` argument
  - If the argument is passed we'll print "Hello World!" to the console
    ```javascript
    #!/usr/bin/env node

    import process from 'node:process';

    const arguments = process.argv;

    if (arguments.includes('--greet')) {
      console.log('Hello, World!');
    }
    ```
4. **Add a help argument**
  - Apps, especially CLI apps, should always have a `help` argument to ensure users unfamiliar with your app can figure out how it works
  - We'll add a `--help` argument to our script to provide that information to a new user
    ```javascript
    #!/usr/bin/env node

    import process from 'node:process';

    const arguments = process.argv;

    if (arguments.includes('--greet')) {
      console.log('Hello, World!');
    }
    else if (arguments.includes('--help')) {
      console.log(`
      Usage: 
        --greet     Print 'Hello, World!'
        --help      Show this help message
      `);
    }
    ```

5. **Check for no valid arguments**
  - If there are no known arguments provided then a script should display a message of some sort to tell the user that they're not using the application correctly
  - Alternatively, you could display the help message again, if no known arguments are found
    ```javascript
      #!/usr/bin/env node

    import process from 'node:process';

    const arguments = process.argv.slice(2);

    if (arguments.includes('--greet')) {
      console.log('Hello, World!');
    }
    else if (arguments.includes('--help')) {
      console.log(`
      Usage: 
        --greet     Print 'Hello, World!'
        --help      Show this help message
      `);
    }
    else {
      console.log(`
      No valid arguments provided. Use --help for usage information.
      `);
    }
    ```
6. **Committing our work**
  - Now that we're finished with our application, we should commit our changes so git can properly track them
  - First, stage your changes with `git add .`
  - Then you can make your commit:
    ```shell
    git commit -m "Initial Simple CLI commit

    - Adds support for the \`--greet\` argument to display \"Hello World!\"
    - Adds support for the \`--help\` argument
    - Handles displaying some help messaging if no valid arguments are provided"