---
title: 1. Mid Term Sprint - Independent
---

## Objective
Complete the provided Express application **independently** to view fictional restaurant menu data.
**Due date: November 3rd, 2024, at 11:59 PM**

## Getting Started
- To help you get started, a [base repository](https://github.com/menglishca/fullstack-midterm-base-solo) has been provided for you to work from. The repository is set up as a **GitHub template** to help you quickly get started. It is **strongly recommended** you use this repository.

### Steps to Create Your Own Repository

1. **Click the "Use this template" button** at the top of the repository page on GitHub.
   
2. **Name your new repository** and choose its visibility (public or private).

3. Once your repository is created, **clone your new repo** to your local machine:
    ```bash
    git clone <your-new-repo-url>
    ```

4. Navigate into the project directory and install the necessary dependencies:
    ```bash
    cd <your-new-repo-name>
    npm install
    ```
  
5. **Run the app:**
    ```bash
    npm start
    ```
    This will start the server at `http://localhost:3000/`.

6. **Run tests:**
    ```bash
    npm test
    ```
    This will run the unit tests for the application.

- By using this template, you'll have the project structure and initial setup ready to go, so you can focus on building the functionality!
- **Note:** This code has been provided as a **starting point** for you to work from. It is by no means a completed midterm.

## Requirements
### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, ensure that any extra packages are relevant and add value to your project.
  - No other packages **should be required**
    - If you feel the project cannot be completed without an additional package (like express sessions), please reach out, as it means I might've made a mistake.
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks such as React.
- Your application must run on **Node.js** using **Express** for the backend.

### Functional Requirements
- **Restaurant Requirements**:
  - Menu data is to only be provided for the following five fictional restaurants:
    1. The Gourmet Bistro
    2. Spicy Kitchen
    3. Healthy Eats
    4. Comfort Diner
    5. Sweet Tooth Bakery
  - When the application starts, you **should** generate a random menu for each restaurant.
    - A menu has between 5 and 10 items, all in the same cuisine type

- **Data Storage**:
  - All data should be stored in memory (using variables in the code).
  - No persistence between server runs is required.
  - No data stored for a particular user (including in a user's session) is required.

- **Functionality**:
  - At minimum, create functions to complete the following:
    - Generate a random menu item, with a desired cuisine, for a restaurant
      - A menu item should have:
        - A name
        - A description
        - A price
        - Whether or not it's a daily special
      - The names and descriptions can be pulled from the data provided in the base repository
    - Select a random cuisine type for a restaurant (e.g., Italian, Chinese, vegan, etc.).
    - Generate a menu for a restaurant.
      - A menu report should include:
        - Between 5 and 10 (randomly decided) items
        - The restaurant's cuisine type.
      - The items should all be of the same cuisine
  - You can feel free to create any other functions you would like, but at minimum, the above functions must be completed.

- **Unit Tests**:
  - Write unit tests to verify:
    - A random menu item can be generated within the proper cuisine a valid name, price, description and if it's a special
    - A random cuisine type can be generated.
    - A full menu for a restaurant can be generated.
  - No other unit tests are required.

### Required Pages
- **Home Page**: 
  - Include a dropdown that allows a user to choose a restaurant to get the menu information for.
    - Picking a restaurant should redirect them to the "Restaurant Menu Page" (see below) for that restaurant.
  - Display a random menu item from one of the restaurants.
    - Should display all item data and what restaurant it was from
  - A link to the menu alerts page (see below).

- **Restaurant Menu Page**:
  - Display the menu for the specified restaurant.
  - A menu should include:
    - List of menu items
    - Cuisine type of the restaurant

- **Menu Alerts**
  - This page displays special menu alerts for all of the restaurants.
  - If a restaurant has a special menu alert (e.g., a special event or dish of the day), it should be displayed.
  - If the restaurant does not have a special menu alert, it should state that the restaurant has no current alerts.

## Pass Outstanding Criteria
- Achieve a grade of 85% or above.

## Submission Guidelines
- Ensure the application runs correctly (with the `npm start` command) and all features are implemented as specified.
- Ensure all tests pass when run with the pre-setup `npm test` command.
- Submissions should be made on Teams under the appropriate assignment.
- Submissions should **only** include a link to your GitHub repository which contains the complete code for your Midterm Sprint.
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)
  - If an extension is needed, please reach out to me directly before the mid-term due date.

## Notes/Questions
- You can find the code for all examples we've worked on in class [here](https://github.com/menglishca/keyin-code-samples)
- If you have any questions about the midterm, if things aren't clear or you need a hand please do reach out on Teams or send an email
- Additionally, there are support sessions during every lecture slot during the break and support sessions are also still being offered by the TA for Semester 3

## Grading Rubric

| **Category**                 | **Criteria**                                                                                                                                                                                              | **Points** |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Site Functionality**       | **Home Page**: Displays restaurant dropdown and random menu item. Dropdown successfully redirects to the restaurant's menu page.                                                                          | 10         |
|                              | **Restaurant Menu Page**: Displays menu for the selected restaurant, including a list of items and the restaurant's cuisine type.                                                                         | 10         |
|                              | **Menu Alerts Page**: Displays special menu alerts for restaurants. If a restaurant has no alert, a "No current alerts" message is displayed.                                                             | 15         |
|                              | **Menu Generation**: Menus are correctly generated for each restaurant **when the app first loads**, with between 5-10 items and appropriate item details (name, description, price, daily special flag). | 10         |
| **Site Functionality Total** |                                                                                                                                                                                                           | **45**     |
| **Functions**                | **Generate Menu Item Function**: Correctly generates a random menu item with name, price, description and daily special flag for a selected cuisine. Includes a unit test to verify proper functionality. | 10         |
|                              | **Random Cuisine Type Function**: Correctly generates a random cuisine for a restaurant. Includes a unit test to verify proper functionality.                                                             | 10         |
|                              | **Generate Full Menu Function**: Correctly generates a complete menu with 5-10 items for a restaurant, all from the same cuisine. Includes a unit test to verify proper functionality.                    | 10         |
| **Functions Total**          |                                                                                                                                                                                                           | **30**     |
| **Code Quality**             | **Structure and Readability**: Code is well-organized, readable, and follows best practices (e.g., meaningful variable names, DRY principles).                                                            | 10         |
| **Code Quality Total**       |                                                                                                                                                                                                           | **10**     |
| **Git Hygiene**              | **Commit Quality**: Commits are frequent, well-documented, and meaningful. Each commit clearly describes the changes made.                                                                                | 10         |
| **Git Hygiene Total**        |                                                                                                                                                                                                           | **10**     |
| **User Experience (UX)**     | **Design and Layout**: Pages are visually clear, user-friendly, and easy to navigate.                                                                                                                     | 5          |
| **User Experience Total**    |                                                                                                                                                                                                           | **5**      |
| **Total Points**             |                                                                                                                                                                                                           | **100**    |
