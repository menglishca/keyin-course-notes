---
title: 2. Mid Term Sprint - Team
cascade:
  type: docs
---

## Objective
Complete the provided Express application **with your team** to view data about a collection of movies.
**Due date: November 3rd, 2024 at 11:59PM**

## Getting Started
- To help you get started, a [base repository](https://github.com/menglishca/fullstack-midterm-base-team) has been provided for you to work from. The repository is set up as a **GitHub template** to help you quickly get started. it is **strongly recommended** you use this repository.

### Steps to Create Your Own Repository

1. **Click the "Use this template" button** at the top of the repository page on GitHub.
   
1. **Name your new repository** and choose its visibility (public or private).

1. Once your repository is created, **clone your new repo** to your local machine:
    ```bash
    git clone <your-new-repo-url>
    ```

1. Navigate into the project directory and install the necessary dependencies:
    ```bash
    cd <your-new-repo-name>
    npm install
    ```
  
1. **Run the app:**
    ```bash
    npm start
    ```
    This will start the server at `http://localhost:3000/`.

1. **Run tests:**
    ```bash
    npm test
    ```
    This will run the unit tests for the application.

- By using this template, you'll have the project structure and initial setup ready to go, so you can focus on building the functionality!
- **Note:** This code has been provided as a **starting point** for you to work from. It is by no means a completed mid term.

## Requirements
### Data Requirements
- All data required (i.e. all the movie data) has been included in the base repo with the data ready to use in the code.
- It is not necessary to use any other data

### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, ensure that any extra packages are relevant and add value to your project.
  - No other packages **should be required**
    - If you feel the project cannot be completed without an additional package (like express sessions) please reach out, as it means I might've made a mistake
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks such as React.
- Your application must run on **Node.js** using **Express** for the backend.

### Functional Requirements
- **Data Storage**:
  - All data should be stored in memory (using variables in the code).
  - No persistence between server runs is required.
  - No data stored for a particular user (including in a user's session) is required.

- **Functionality**:
  - At minimum create functions to complete the following:
    - Get `x` movies, by genre
    - Get the `x` top rated movies, ordered by rating
    - Get the details of a movie by it's id
    - Select a random movie id
  - You can feel free to create any other functions you would like, but at minimum the above functions must be completed 

- **Unit Tests**:
  - Get `x` movies, by genre
    - Specifying a genre will successfully return `x` movies from that genre
    - If the genre has no movies, then an appropriate response is returned
  - Get the `x` top rated movies, ordered by rating:
    - The right number of movies are returned and they're properly ordered
  - Get the details of a movie by it's id
    - If the ID is valid, a valid movie is returned
    - If the id is invalid an appropriate response is returned
  - Select a random movie id
    - A valid movie is returned
  - No other unit tests are required

### Required Pages
- **Common Header/Footer**
  - A common header (or footer if you'd prefer) should be added to each page
  - The common header/footer should be implemented via an ejs partial
  - The header should contain links to allow users to navigate between the site's pages.
  - The header should include (at least) links to:
    - Home page
    - Top rated movies page
    - Random movie page
      - Clicking the link in the header should bring you to the movie page (see below) for a random movie
    - Upcoming movies page

- **Home Page**: 
  - Display the details of 9 random movies we have data on
  - Each movie should display their:
    - Title
    - Release year
    - Rating (out of 10)
  - Clicking on a movie should direct you to the movie's page

- **Top Rated Movies Page**
  - Display the 15 top rated movies in the system
  - The movies should be ordered from top to lowest rated by their rating
  - Each movie should have the following displayed:
    - Title
    - Release year
    - Rating (out of 10)
    - Brief description
  - Clicking on a movie should direct you to the movie's page

- **Movie Page**
  - Display detailed information about the movie, including:
    - Title
    - Release year
    - Description
    - Director
    - Rating (out of 10, unreleased movies might not have a rating)
    - Genre
  - Include a recommendations section of three other movies for the user based on the genre
    - i.e. If the movie page is for a horror movie display three other horror movies the user might like
    - The recommendations should be picked by the server on each page load
      - So if you look at multiple horror movies you might not always get the same recommendations

- **Upcoming Movies Page**
  - Display 5 upcoming movies in the system
  - Each movie should have the following displayed:
    - Title
    - Release year
    - Brief description
  - Clicking on a movie should direct you to the movie's page

## Pass Outstanding Criteria
- Achieve a grade of 85% or above

## Submission Guidelines
- Ensure the application runs correctly (with the `npm start` command) and all features are implemented as specified.
- Ensure all tests pass when ran with the pre-setup `npm test` command
- Submissions should be made on Teams under the appropriate assignment
  - Only one team member is required to submit, however it's totally fine if you all do
- Submissions should **only** include a link to the github repository which contains the complete code for your Midterm Sprint
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)
  - If an extension is needed, please reach out to me directly before the mid-term due date.

## Notes/Questions
- You can find the code for all examples we've worked on in class [here](https://github.com/menglishca/keyin-code-samples)
- If you have any questions about the midterm, if things aren't clear or you need a hand please do reach out on Teams or send an email
- Additionally, there are support sessions during every lecture slot during the break and support sessions are also still being offered by the TA for Semester 3

## Grading Rubric

| **Category**                 | **Criteria**                                                                                                                                                       | **Points** |
|------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Site Functionality**       | **Home Page**: Displays 9 random movies with correct title, release year, and rating. Clicking a movie directs to its details page.                                | 10         |
|                              | **Top Rated Movies Page**: Displays 15 top-rated movies, ordered correctly, with the required information. Clicking a movie directs to its details page.           | 10         |
|                              | **Movie Detail Page**: Displays the required information (title, year, director, description, rating, genre). Includes 3 genre-based recommendations.              | 10         |
|                              | **Upcoming Movies Page**: Displays 5 upcoming movies with correct information. Clicking a movie directs to its details page.                                       | 10         |
|                              | **Movie Navigation**: Header includes working links to the home page, top-rated movies page, random movie page, and upcoming movies page.                          | 10         |
|                              | **Random Movie Feature**: Clicking the random movie link shows the details of a randomly selected movie.                                                           | 5          |
| **Site Functionality Total** |                                                                                                                                                                    | **55**     |
| **Functions**                | **Genre Function**: Correctly returns the specified number of movies for a given genre, or properly handles a genre having no movies, with appropriate unit tests. | 5          |
|                              | **Top Rated Movies Function**: Correctly returns the top-rated movies, ordered by rating, with appropriate unit tests.                                             | 5          |
|                              | **Movie Details Function**: Correctly returns movie details for valid IDs and properly handles invalid IDs, with appropriate unit tests.                           | 5          |
|                              | **Random Movie Function**: Selects and returns a random movie with valid data, with appropriate unit tests.                                                        | 5          |
| **Functions Total**          |                                                                                                                                                                    | **20**     |
| **Code Quality**             | **Structure and Readability**: Code is well-organized, readable, and follows best practices (i.e. naming conventions, no unused or repeated code)                  | 10         |
| **Code Quality Total**       |                                                                                                                                                                    | **10**     |
| **Git Hygiene**              | **Commit Quality**: Commits are frequent, meaningful, well-documented, and clearly describe changes made.                                                          | 10         |
| **Git Hygiene Total**        |                                                                                                                                                                    | **10**     |
| **User Experience (UX)**     | **Design and Layout**: Pages are visually clear, user-friendly, and easy to navigate. Appropriate use of EJS partials for common elements (header/footer).         | 5          |
| **User Experience Total**    |                                                                                                                                                                    | **5**      |
| **Total Points**             |                                                                                                                                                                    | **100**    |
