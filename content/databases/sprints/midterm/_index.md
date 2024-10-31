---
title: 1. Midterm Sprint - Individual
---

## Objective
- Individually design a database and its tables, verify tables are in 3NF, perform queries on the database and implement a CLI application to interact with it
- Due date: **November 3rd, 2024 @ 11:59PM NDT**

### Problem Statement

Create a database for a movie rental system that keeps track of movies, customers, and movie rentals. Your database needs to be able to store the following:
- **Movies**:
  - The movie title
  - The year the movie was released
  - The genre of the movie (each movie only has one genre)
  - The name of the director of the movie (each movie only has one director)
- **Customers**:
  - The customer's first name
  - The customer's last name
  - The customer's email address
  - The customer's phone number
- **Rentals**:
  - Who rented the movie
  - What movie was rented
  - The date the movie was rented
  - The date the movie was/should be returned

#### Hints/Notes
- You *shouldn't* need more than three tables
- Store phone numbers as text

## Requirements

1. **PostgreSQL Queries**
    - Provide PostgreSQL queries to create the tables
    - Provide queries to insert sample data into the tables.
      - Insert **at least**:
        - 5 movies
        - 5 customers
        - 10 rentals
    - Provide PostgreSQL queries to solve the following:  
      1. Find all movies rented by a specific customer, given their email.
      1. Given a movie title, List all customers who have rented the movie
      1. Get the rental history for a specific movie title.
      1. For a specific movie director:
          - Find the name of the customer, the date of the rental and title of the movie each time a movie by that director was rented
      1. List all currently rented out movies (movies who's return dates haven't been met)

1. **Normalization**
    - Explain how the tables (created using the previous queries) are each in 3NF

1. **CLI Application**
    - [Template repository](https://github.com/menglishca/database-midterm-base)
      - This repository has been setup as a template, it is **strongly recommended** you use it as starting point.
      - Please follow the instructions in the README to create your own version of the repository
    - Create a CLI application using the [template repository provided](https://github.com/menglishca/database-midterm-base) to interact with the movie rentals database
    - The app should do the following:
      - Create all required tables, if they do not exist
      - Support an argument which can print all movies the system has
      - Support an argument allowing a user to update a customer's email address
      - Support an argument to insert a new movie to the database
      - Support an argument to remove a customer from the database
        - This should also remove rental history for the customer

## Pass Outstanding Criteria
- Achieve a grade of 85% or above

## Submission Guidelines
- The link to your github repository containing:
  - File(s) containing all PostgreSQL queries outlined above
    - One file with all the queries is fine, or feel free to break the queries into individual files if you'd prefer
    - Just ensure all queries are in the repository
  - The code for your CLI application
  - The file/writeup describing how the tables all meet 3NF
- It is recommended to test your queries on pgAdmin before submission
- Submissions should be made on Teams via the appropriate assignment
- Submissions should **only** include your github repository link, which has the code for your sprint
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)
  - If an extension is needed please reach out before the due date

## Notes
- Code for all examples we've worked on in class can be found [here](https://github.com/menglishca/keyin-code-samples) (may help for the CLI app). Remember you may need to modify the `pool` details to match your PostgreSQL setup
- If you have any questions about the midterm, need clarification or just need a hand please reach out on Teams or via email
- Support sessions in offered each lecture slot during the break and the TA's support sessions are still being offered for Semester 3
- The sprint must be completed individually, not in groups

## Grading Rubric

| **Category**                  | **Criteria**                                                                                                                              | **Points** |
|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|------------|
| **Functionality**             | **Table Creation**: CLI creates the tables if not present                                                               | 5          |
|                               | **Insert Command**: Movies inserted correctly (`insert`)                                                             | 5          |
|                               | **Show Command**: Movies displayed correctly (`show`)                                                                | 5          |
|                               | **Update Command**: Email updated correctly (`update`)                                                               | 5          |
|                               | **Remove Command**: Customer removed with rental history                                | 5          |
|                               | **Functionality Total**:                                                                                                                  | **25**     |
| **PostgreSQL Queries**        | **Table Creation Queries**: Correct table creation queries (Movies, Customers, Rentals)                                        | 5          |
|                               | **Sample Data Insertion**: Correct sample data insertion (Movies, Customers, Rentals)                                  | 5          |
|                               | **Find Rented Movies by Customer**: Find movies by customer query works           | 5          |
|                               | **Find Customers by Movie**: Find customers by movie query works                 | 5          |
|                               | **Rental History Query**: Rental history query works                                         | 5          |
|                               | **Movies Rented by Director**: Movies rented by director query works | 5          |
|                               | **Currently Rented Movies**: Currently rented movies query works               | 5          |
|                               | **PostgreSQL Queries Total**:                                                                                                             | **35**     |
| **Normalization Explanation** | **3NF Explanation**: Correct 3NF explanation for all tables  | 5         |
| **Code Quality**              | **Code Cleanliness**: Clean, structured, understandable code                                                             | 10         |
|                               | **No Redundancy**: No redundant/unused code                                                                                           | 5          |
|                               | **Code Quality Total**:                                                                                                                   | **15**     |
| **CLI App Usability**         | **User Instructions**: Clear user instructions and help command                                       | 5          |
|                               | **Error Handling**: Handles invalid inputs gracefully                     | 5          |
|                               | **CLI App Usability Total**:                                                                                                              | **10**     |
| **Git Hygiene**               | **Commit Frequency**: Regular, well-documented commits                                                       | 10         |
|                               | **Git Hygiene Total**:                                                                                                                    | **10**     |
| **Total Points**              |                                                                                                                                           | **100**    |
