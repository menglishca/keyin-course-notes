---
title: 2. Mid Term Sprint - Team
cascade:
  type: docs
---

## Objective
Complete the provided Express application with your team to view data about a collection of games. The application must include both a server-rendered frontend **and** a REST API.
**Due date: March 6th, 2026 at 11:59PM**

## Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/G54UQVNz) has been provided for you to work from. The repository is set up as a **GitHub Classroom Assignment** to help you quickly get started.

### Steps to Create Your Own Repository

1. Click the link above, and select your team from the list that appears.
2. Click the "Accept this assignment" button.
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
- **Note:** This code has been provided as a **starting point** for you to work from. It is by no means a completed project.

## Requirements
### Data Requirements
- Example data has been included in the base repo, which is more than sufficient for the project, if you wish to use it.
- No additional data sources are required.

### Technology Requirements
- You are allowed to use **additional npm packages** to enhance your application. However, please make sure that any extra packages are relevant and add value to your project.
  - No other packages **should be required**
    - If you feel the project cannot be completed without an additional package (like express sessions), please reach out, as it means I might've made a mistake.
- All pages must be created using **EJS templates**. Do not use other templating engines (e.g., Handlebars, Pug) or frameworks like React.
- Your application must run on **Node.js** using **Express** for the backend.

### Functional Requirements
- **Data Storage**:
  - All data should be stored in memory.
  - No persistence between server runs is required.
  - No user-specific data storage is required.

- **Functionality**:
  - At minimum, create functions to complete the following:
    - Get `x` games by genre.
    - Get the `y` top-rated games, ordered by rating.
    - Get the details of a game by its id.
    - Get a list of "Hidden Gems"
      - Criteria for "Hidden Gems" is up to the team, but a suggestion is games with a high rating but fewer than X reviews.

## Unit Tests
Your project must include unit tests to verify that the **four core functions**—genre filtering, top-rated sorting, game details retrieval, and hidden gems filtering—produce valid output.

At a minimum, your tests should confirm that:
- The **genre filtering function** correctly retrieves games.
- The **top-rated sorting function** correctly orders results.
- The **game details function** properly retrieves data for valid and invalid IDs.
- The **hidden gems function** produces results that fit the team-defined criteria.

You are responsible for determining the **specific test cases** needed to verify correct functionality.

## Required Pages
- **Common Header/Footer**:
  - Implemented via an EJS partial.
  - The header should contain navigation links to:
    - Home page
    - Top-rated games page
    - A random game's page
      - A link the user can click, and when they click it they are brought to the "Game Page" (see below) for a random game
    - Hidden Gems page


- **Home Page**:
  - Display details of 9 random games.
  - Each game should display:
    - Title
    - Release year
    - Rating (out of 10)
  - Clicking a game (i.e. clicking its title) directs to its details page.


- **Top Rated Games Page**:
  - Display the 15 highest-rated games, ordered by rating.
  - Each game should display:
    - Title
    - Release year
    - Rating (out of 10)
    - Brief description
  - Clicking a game directs to its details page.


- **Game Page**:
  - Display detailed game information, including:
    - Title
    - Release year
    - Description
    - Developer
    - Rating (out of 10, unreleased games might not have a rating)
    - Genre
  - Include a recommendations section with three other games based on genre.


- **Hidden Gems Page**:
  - Display a list of "Hidden Gems".
    - Criteria for "Hidden Gems" is up to the team, but a suggestion is games with a high rating but fewer than X reviews.
  - Each game should display:
    - Title
    - Release year
    - Rating
    - Short description
  - Clicking a game directs to its details page.

## REST API Endpoints
Your project must expose the following REST API endpoints. Ensure that your endpoints return JSON responses using a consistent, standardized response structure (e.g., errors always including an `error` field). Make sure you use appropriate HTTP status codes.

- `GET /api/games`
  - Returns a list of all games.
  - Each item should include the title, genre, release year, and rating.

- `GET /api/games/:id`
  - Returns the full details for the specified game.
  - Returns a meaningful error response if the game ID does not exist.

- `GET /api/games/genre/:genre`
  - Returns all games matching the specified genre.
  - Returns a meaningful error response if no games are found for that genre.

- `GET /api/games/top-rated`
  - Returns the top 10 rated games, ordered by rating.

- `GET /api/games/:id/recommendations`
  - Returns up to 3 recommended games based on the genre of the specified game.
  - Returns a meaningful error response if the game ID does not exist.

Input validation must be applied where appropriate (e.g., unknown IDs, unrecognized genres). Errors must return consistent, structured JSON and appropriate HTTP status codes should be used throughout.

## Pass Outstanding Criteria
- Achieve a grade of 85% or above.

## Submission Guidelines
- Ensure the application runs correctly (`npm start`) and all features are implemented.
- Ensure all tests pass (`npm test`).
- Submit a **GitHub repository link** on Teams (only one team member needs to submit).
- Late submissions follow the Keyin late assessment policy [here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD15Jan.2026-Apr.20262/IQB27M_3TuM7R4CffHQTsbiYAThObHy9b2Ta1SriDyA45k4?e=npqFCu).
- If an extension is needed, please reach out before the due date.
- **Teams can be a maximum of 3 members**

## Notes/Questions
- Code samples from class are available [here](https://github.com/menglishca/keyin-code-samples).
- Reach out via Teams or email for questions.
- Support sessions are available during lecture breaks and with the TA.

## Grading Rubric
| **Category**                 | **Criteria**                                                                                                                                                                | **Points** |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Site Functionality**       | **Home Page**: Displays 9 random games; clicking a game directs to its details page.                                                                                        | 10         |
|                              | **Top Rated Games Page**: Displays 15 top-rated games, ordered correctly, with required info. Clicking a game directs to its details page.                                  | 5          |
|                              | **Game Page**: Displays all required details and includes genre-based recommendations.                                                                                      | 10         |
|                              | **Hidden Gems Page**: Displays "Hidden Gems" based on the team's chosen criteria, linking to details pages.                                                                 | 5          |
|                              | **Navigation**: Header/footer is implemented as an EJS partial and includes working links to all pages.                                                                     | 5          |
|                              | **Random Game Feature**: Clicking the random game link directs to a random game's details page.                                                                             | 5          |
| **Site Functionality Total** |                                                                                                                                                                             | **40**     |
| **REST API**                 | **GET /api/games**: Returns all games with correct structure.                                                                                                               | 5          |
|                              | **GET /api/games/:id**: Returns correct game details with proper error handling.                                                                                            | 5          |
|                              | **GET /api/games/genre/:genre**: Returns correctly filtered results with proper error handling.                                                                             | 5          |
|                              | **GET /api/games/top-rated**: Returns correctly ordered top 10 results.                                                                                                     | 5          |
|                              | **GET /api/games/:id/recommendations**: Returns genre-based recommendations with proper error handling.                                                                     | 5          |
| **REST API Total**           |                                                                                                                                                                             | **25**     |
| **Functions**                | **Functions and Testing**: Implementation and testing of the four required functions.                                                                                       | 15         |
| **Functions Total**          |                                                                                                                                                                             | **15**     |
| **Code Quality**             | **Structure and Readability**: Code is well-organized, readable, and follows best practices.                                                                                | 10         |
| **Code Quality Total**       |                                                                                                                                                                             | **10**     |
| **Git Hygiene**              | **Commit Frequency**: Regular commits reflecting meaningful progress throughout development.                                                                                | 5          |
|                              | **Commit Quality**: Commit messages are clear, concise, and descriptive.                                                                                                    | 5          |
| **Git Hygiene Total**        |                                                                                                                                                                             | **10**     |
| **Total Points**             |                                                                                                                                                                             | **100**    |
