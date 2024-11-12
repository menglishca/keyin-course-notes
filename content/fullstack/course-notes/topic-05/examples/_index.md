---
title: 5. Examples
---

## Objective
The goal of the following examples is to introduce the concepts of Express and .ejs, and reinforce some existing concepts of unit testing

## Example 1: Simple Greeting App
### Ask
- Create an Express application that displays a greeting to the user
- A base repository can be found [here](https://github.com/menglishca/simple-greeting-base.git)

### Features
- Display a random greeting on each page visit
- Show the current date after the greeting

### Tasks
- Create the greeting function
- Implement unit tests for the greeting function
- Setup the Express server
- Design the .ejs template

## Example 2: Todo List App
### Ask
- Create an Express application that displays a todo list
- A base repository can be found [here](https://github.com/menglishca/todo-list-base.git)

### Features
- Display the current todo list
- Allow a user to add new items to the todo list
- Todo list should persist between refreshes

### Tasks
- Setup the express server
- Design the .ejs template to add items
- Setup adding new todo list items
- Design the .ejs template to display the current items
- Ensure the data persists to some degree

## Example 3: Weather Report App
### Ask
- Create an express application to display a random (fake) report of the current weather in a selected city
    - Users should be able to select a city from a dropdown and view the weather in that city
- A base repository can be found [here](https://github.com/menglishca/weather-report-base.git)

### Features
- Display a homepage which lets a user pick which city they want the weather for
- A page to display the weather report
- A function to generate the fake weather report
- Unit tests to verify the weather report function works

## Example 4: Random Quotes App
### Ask
- Create an Express application to display and store user quotes
- A base repository can be found [here](https://github.com/menglishca/random-quotes-base.git)

### Features
- Display a list of current quotes
- Allow a user to open a quote to see more details (i.e. when it was added)
- Allow a user to add new quotes from a separate page

### Tasks
- Create the Quotes Management Function
- Implement Unit Tests for Quotes Functionality
- Setup the Express Server
- Define the Application Routes
- Design the EJS Templates