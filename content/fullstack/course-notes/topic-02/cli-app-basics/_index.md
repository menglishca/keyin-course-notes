---
title: 3. Basics of a CLI application
cascade:
  type: docs
---

## 1. What is a CLI application?
- **CLI** (Command Line Interface) - an application that allows users to interact with it by typing commands on the terminal
  - These applications run entirely in the terminal and do not have a graphical user interface (GUI)

## 2. Common CLI application characteristics
- **Argument support**
  - CLI applications usually accept arguments (or data) when they are ran, these allow the user to specify configuration options or data to the app
  - Arguments are usually passed after the command (i.e. `npm install express`)
    - In the example above there are two arguments being provided, `install` and `express`
  - Arguments are almost always split on a space
- **Error and help messages**
  - Like any app, a CLI application should have basic error handling as well
  - Usually this comes in the form of help messages when a user enters incorrect, or insufficient arguments
    - i.e. If your application requires **two** arguments to run and only one is specified an error message could be displayed telling the user why the program cannot continue
  - Many applications will support some kind of help argument (often one of: `help`, `-h`, `--help`,)
    - When this argument is provided a help message is displayed which guides the user on how to use the app (i.e. what arguments are valid, how many are expected, etc.)

## 2. Example of a CLI application?
- `npm` is an easy example of a CLI application
- It contains no GUI, but instead is controlled entirely via the command line
- Running `npm` with the `help` argument (or any invalid argument) will get you a help message displaying a list of valid commands
- If an incorrect command is provided to `npm` an error message is displayed telling the user the comamnd was wrong and that they can use the help argument if necessary to discover other commands
  ```bash
  $ npm not-a-command
  Unknown command: "not-a-command"

  To see a list of supported npm commands, run:
    npm help
  ```