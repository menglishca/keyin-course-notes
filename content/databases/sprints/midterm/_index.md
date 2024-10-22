---
title: 1. Midterm Sprint - Individual
---

## Objective
- Individually design a database and the tables within it, verify the tables are in 3NF, perform queries on the database and implement a CLI application to interact with it.
- Due date: **November 3rd, 2024 @ 11:59PM NDT**

### Problem Statement

You are tasked with creating a database for a movie rental system that keeps track of movies, customers, and the rentals made by customers. You'll need to make sure your database can store the following data:
- **Movies**:
  - The title of the movie
  - The year the movie was released
  - The genre of the movie (each movie only has one genre)
  - The name of the director of the movie (each movie only has one director)
- **Customers**:
  - The first name of the customer
  - The last name of the customer
  - The customer's email address
  - The customer's phone number
- **Rentals**:
  - Who rented the movie
  - The movie that was rented
  - The date on which the movie was rented
  - The date on which the movie was/should be returned

#### Hints/Notes
- You *shouldn't* need more than three tables
- Phone numbers should be stored as text

## Requirements

1. **PostgreSQL Queries**
    - Provide PostgreSQL queries to create the tables
    - Provide queries to insert sample data into the tables.
      - You should insert **at least**:
        - 5 movies
        - 5 customers
        - 10 rentals
    - Provide the PostgreSQL queries to solve the following problems:  
      1. Find all movies rented by a specific customer, given their email.
      1. List all customers who have rented a specific movie, provided the movie title.
      1. Get the rental history for a specific movie title.
      1. For a specific movie director:
          - Find the name of the customer, the date of the rental and title of the movie for each time a movie by that director was rented
      1. List all movies that are currently rented out (i.e., who's return dates have not yet been met).

1. **Normalization**
    - Write a description/note explaining how the tables (created using the queries from the previous step) are all in 3NF

1. **CLI Application**
    - [Template repository here](https://github.com/menglishca/database-midterm-base)
      - This repository has been setup as a template, it is **strongly recommended** you use it as a place to start your work.
      - Please follow the instructions in the README to create your own version of the application
    - Create a simple CLI application using the [template repository provided](https://github.com/menglishca/database-midterm-base) to interact with the movie rentals database
    - The app should include the following functionality:
      - Create all required tables, if they do not already exist
      - Have support for an argument which can print all movies the system has
      - Have support for an argument allowing a user to update a customer's email address
      - Have support for an argument to add a new mobie to the database
      - Have support for an argument to remove a customer from the database
        - This should also remove any rental history for the customer

## Pass Outstanding Criteria
- Achieve a grade of 85% or above

## Submission Guidelines
- The link to your github repository containing:
  - File(s) containing all required PostgreSQL queries outlined above
    - One file with all the queries is fine, or feel free to break the queries up into individual files if you'd prefer
    - Just ensure all queries are in the repository
  - The code for your CLI application
  - The file/writeup describing how the tables all meet 3NF
- It is recommended to test your queries on pgAdmin to ensure things work correctly
- Submissions should be made on Teams under the appropriate assignment
- Submissions should **only** include a link to your github repository which contains the complete code for your Midterm
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)
  - If an extension is needed, please reach out to me directly before the mid-term due date.

## Notes/Questions
- You can find the code for all examples we've worked on in class [here](https://github.com/menglishca/keyin-code-samples) (they might be of help for the CLI portion). Remember you may need to modify the `pool` connection details to match your PostgreSQL install
- If you have any questions about the midterm, if things aren't clear or you need a hand please do reach out on Teams or send an email
- Additionally, there are support sessions during every lecture slot during the break and support sessions are also still being offered by the TA for Semester 3
- This is to be done individually, and not in groups

## Grading Rubric

| **Category**                  | **Criteria**                                                                                                                              | **Points** |
|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Functionality**             | **Table Creation**: CLI app creates the tables if they don't already exist.                                                               | 5          |
|                               | **Insert Command**: Movies are inserted correctly using the `insert` command.                                                             | 5          |
|                               | **Show Command**: Movies are displayed correctly using the `show` command.                                                                | 5          |
|                               | **Update Command**: Customer's email is updated using the `update` command.                                                               | 5          |
|                               | **Remove Command**: Customers are removed correctly, including rental history, using the `remove` command.                                | 5          |
|                               | **Functionality Total**:                                                                                                                  | **25**     |
| **PostgreSQL Queries**        | **Table Creation Queries**: Queries to create all tables are correct (Movies, Customers, Rentals).                                        | 5          |
|                               | **Sample Data Insertion**: Sample data insertion queries are correct for Movies, Customers, and Rentals.                                  | 5          |
|                               | **Find Rented Movies by Customer**: Query to find all movies rented by a specific customer (given their email) works correctly.           | 5          |
|                               | **Find Customers by Movie**: Query to list all customers who rented a specific movie (given movie title) works correctly.                 | 5          |
|                               | **Rental History Query**: Query to get rental history for a specific movie title works correctly.                                         | 5          |
|                               | **Movies Rented by Director**: Query to list all movies rented by customers, including customer names, rental dates, and movie title (for a specific director) works. | 5          |
|                               | **Currently Rented Movies**: Query to list all currently rented movies (i.e., those without a return date) works correctly.               | 5          |
|                               | **PostgreSQL Queries Total**:                                                                                                             | **35**     |
| **Normalization Explanation** | **3NF Explanation**: Correctly explains how each table is in 3NF (explains functional dependencies, partial dependencies, transitive dependencies, etc.).  | 10         |
| **Code Quality**              | **Code Cleanliness**: Code is clean, well-structured, and easy to understand.                                                             | 10         |
|                               | **No Redundancy**: No redundant or unused code.                                                                                           | 5          |
|                               | **Code Quality Total**:                                                                                                                   | **15**     |
| **CLI App Usability**         | **User Instructions**: User instructions are clear, and help command provides accurate information.                                       | 5          |
|                               | **Error Handling**: App handles invalid inputs gracefully (e.g., missing arguments, non-existent customer/movie IDs).                     | 5          |
|                               | **CLI App Usability Total**:                                                                                                              | **10**     |
| **Git Hygiene**               | **Commit Frequency**: Regular, well-documented commits made throughout development.                                                       | 10         |
|                               | **Git Hygiene Total**:                                                                                                                    | **10**     |
| **Total Points**              |                                                                                                                                           | **100**    |
