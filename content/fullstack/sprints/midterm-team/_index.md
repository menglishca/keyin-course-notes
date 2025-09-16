---
title: 2. Mid Term Sprint - Team
cascade:
  type: docs
---

## Objective
Complete the provided Express application **with your team** to view data about a collection of games.
**Due date: June 29th, 2025 at 11:59PM**

## Getting Started
- To help you get started, a [base repository](https://classroom.github.com/a/e4V8Dx-W) has been provided for you to work from. The repository is set up as a **GitHub Classroom Assignment** to help you quickly get started.

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
    - Select a random game id.
    - Get a list of "Hidden Gems"
      - Criteria for "Hidden Gems" is up to the team, but a suggestion is games with a high rating but fewer than X reviews.

## Unit Tests
Your project must include unit tests to verify that the **five core functions**—genre filtering, top-rated sorting, game details retrieval, random game selection, and hidden gems filtering—produce valid output.

At a minimum, your tests should confirm that:
- The **genre filtering function** correctly retrieves games.
- The **top-rated sorting function** correctly orders results.
- The **game details function** properly retrieves data for valid and invalid IDs.
- The **random game selection function** returns a valid game.
- The **hidden gems function** produces results that fit the team-defined criteria.

You are responsible for determining the **specific test cases** needed to verify correct functionality.

### Required Pages
- **Common Header/Footer**:
  - Implemented via an EJS partial.
  - The header should contain navigation links to:
    - Home page
    - Top-rated games page
    - A random game's page
      - A link the user can click, and when they click it they are brought to the "Game Page" (see below) for a random game
    - Upcoming games page
    - Hidden Gems page

- **Home Page**:
  - Display details of 9 random games.
  - Each game should display:
    - Title
    - Release year
    - Rating (out of 10)
  - Clicking a game (i.e. clicking it's title) directs to its details page.

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

- **Upcoming Games Page**:
  - Display 5 upcoming games with:
    - Title
    - Release year
    - Brief description
  - Clicking a game directs to its details page.

- **Hidden Gems Page**:
  - Display a list of "Hidden Gems".
    - Criteria for "Hidden Gems" is up to the team, but a suggestion is games with a high rating but fewer than X reviews.
  - Each game should display:
    - Title
    - Release year
    - Rating
    - Short description
  - Clicking a game directs to its details page.

## Pass Outstanding Criteria
- Achieve a grade of 85% or above.

## Submission Guidelines
- Ensure the application runs correctly (`npm start`) and all features are implemented.
- Ensure all tests pass (`npm test`).
- Submit a **GitHub repository link** on Teams (only one team member needs to submit).
- Late submissions follow the Keyin late assessment policy [here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD14Sept.2025-Dec.2025/EaNwhyZvUxhIpqLD-N68n64BaOjdRmmLNGNw_u9tarzk4A?e=2i061T).
- If an extension is needed, please reach out before the due date.
- **Teams can be a maximum of 3 members**

## Notes/Questions
- Code samples from class are available [here](https://github.com/menglishca/keyin-code-samples).
- Reach out via Teams or email for questions.
- Support sessions are available during lecture breaks and with the TA.

## Grading Rubric
| **Category**                 | **Criteria**                                                                                                                                                                | **Points** |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Site Functionality**       | **Home Page**: Displays 9 random games, clicking a game directs to its details page.                                                                                        | 10         |
|                              | **Top Rated Games Page**: Displays 15 top-rated games, ordered correctly, with required info. Clicking a game directs to details page.                                      | 5          |
|                              | **Game Page**: Displays all required details, includes genre-based recommendations.                                                                                 | 10         |
|                              | **Upcoming Games Page**: Displays 5 upcoming games with correct information. Clicking a game directs to details page.                                                       | 5          |
|                              | **Hidden Gems Page**: Displays "Hidden Gems" based on the team's chosen criteria, linking to details pages.                                                                 | 5          |
|                              | **Navigation**: Header/footer, is implemented with an ejs template and includes working links to all pages.                                                                 | 10         |
|                              | **Random Game Feature**: Clicking the random game link directs to a random game's details page.                                                                             | 5          |
| **Site Functionality Total** |                                                                                                                                                                             | **50**     |
| **Functions**                | **Functions and Testing**: Implementation and testing of the five required functions.                                                                                       |   25       |
| **Functions Total**          |                                                                                                                                                                             | **25**     |
| **Code Quality**             | **Structure and Readability**: Code is well-organized, readable, and follows best practices.                                                                                | 10         |
| **Code Quality Total**       |                                                                                                                                                                             | **10**     |
| **Git Hygiene**              | **Commit Frequency**: Regular commits reflecting meaningful progress throughout development.                                                                                | 5          |
|                              | **Commit Quality**: Commit messages are clear, concise, and descriptive.                                                                                                    | 5          |
| **Git Hygiene Total**        |                                                                                                                                                                             | **10**     |
| **User Experience/Design**   | **Design and Layout**: Site is visually clear and user-friendly, with appropriate styling. Some attention has been paid to the design to make the site astheticly pleasing. | 5          |
| **User Experience Total**    |                                                                                                                                                                             | **5**      |
| **Total Points**             |                                                                                                                                                                             | **100**    |

