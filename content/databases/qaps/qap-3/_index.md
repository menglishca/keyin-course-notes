---
title: QAP 3 - Database and Backend Integration
---

## Objective  
- Connect an existing Express backend to a PostgreSQL database and replace in-memory storage with PostgreSQL.  
- Create a MongoDB collection and write queries to interact with the data.  
- Due date: **December 2nd, 2024 @ 11:59 PM NDT**

## Part 1: PostgreSQL Integration  

### Task
A simple express app has been created to manage tasks for a user, however currently it uses in memory storage and we'd like it to use a PostgreSQL database. Your task is to connect this backend to a PostgreSQL database. Replace the in-memory storage with database queries so that tasks persist across application restarts.  

### Functional Requirements
- **Table Creation**
  - A function is created to create the required table, if it does not already exist in the PostgreSQL database
- **Update Endpoints**
  - All endpoints in the app must be updated to use the PostgreSQL database for their data instead of using the current in-memory storage.
    - It's not necessary to provide code for data insertion, however it can be provided if you wish as you'll likely want to populate the database to some degree to test your work.

### Getting Started  
- To help you get started, a [base repository](https://github.com/menglishca/express-tasks-template) has been provided for you to work from. The repository is set up as a **GitHub template** to help you quickly begin the project.

#### Steps to Create Your Own Repository  

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

- Using this template will get you up and running with the app quickly and let you focus on building out the required functionality.

## Part 2: MongoDB Queries  

### Task
Create a MongoDB collction to store the provided book information, insert the data and write queries to perform the outlined operations.  

The **books** data is as follows:  

| Title                     | Author          | Genre         | Published Year |
|---------------------------|-----------------|---------------|----------------|
|  The Hobbit               | J.R.R. Tolkien  | Fantasy       | 1937           |
|  To Kill a Mockingbird    | Harper Lee      | Fiction       | 1960           |
|  1984                     | George Orwell   | Dystopian     | 1949           |

### Tasks  

1. **Create a Collection**  
   - Create a collection named `books`.  

2. **Insert Sample Data**  
   - Insert the sample book data provided above into the `books` collection.  

3. **Write Queries**  
   - Retrieve the **titles** of all books.  
   - Find all books written by "J.R.R. Tolkien".  
   - Update the genre of "1984" to `"Science Fiction"`.  
   - Delete the book "The Hobbit".

### Notes  
- If you have trouble connecting to a local MongoDB instance, consider using [MongoDB Atlas](https://www.mongodb.com/atlas/database) as a free alternative. Atlas provides a hosted MongoDB instance and includes detailed instructions for setup.
- Using MongoDB Compass is the recommended way to interact with the database, but it isn't required
- For submission, all that is required is a text file containing the code you ran to complete the outlined tasks.

## Submission Guidelines  
- All work should be submitted as a single GitHub repository.  
- Include all code for your modified Express tasks app
  - It is strongly recommended you use something like Thunder to test your endpoints and verify things are working as expected
- Include a text file containing the MongoDB queries in a separate text file and include it in the repository.
- Submissions should be made on Teams under the appropriate assignment
- Submissions should **only** include a link to your github repository which contains the complete code for your QAP
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstasckJavascript-S3Sept.2024-Dec.2024912/EYwpucIvncpDoR94yNj3fOkB0CsE4c0IZ53Kqov0BumSAA?e=7N9ZfR)
  - If an extension is needed, please reach out to me directly before the assignment due date.
- Example code from class can be found [here](https://github.com/menglishca/keyin-code-samples).  
- If you need assistance, reach out via Teams or email.

## Grading Rubric  

| **Category**              | **Criteria**                                                                                               | **Points** |
|---------------------------|-----------------------------------------------------------------------------------------------------------|------------|
| **PostgreSQL Integration**| **Database Setup**: Correctly created the database and table.                                             | 10         |
|                           | **GET /tasks Route**: Successfully retrieves tasks from the database.                                     | 10         |
|                           | **POST /tasks Route**: Successfully adds a new task to the database.                                      | 10         |
|                           | **PUT /tasks/:id Route**: Successfully updates a task's status in the database.                           | 10         |
|                           | **DELETE /tasks/:id Route**: Successfully deletes a task from the database.                               | 10         |
| **MongoDB Queries**        | **Collection Creation**: Successfully creates the collection.                                            | 5          |
|                           | **Sample Data Insertion**: Successfully inserts the sample data.                                         | 5          |
|                           | **Titles Query**: Successfully retrieves titles of all books.                                            | 5          |
|                           | **Author Query**: Successfully retrieves books by "J.R.R. Tolkien".                                      | 5          |
|                           | **Genre Update**: Successfully updates the genre of "1984".                                              | 5          |
|                           | **Delete Book**: Successfully deletes "The Hobbit".                                                      | 5          |
| **Code Quality**           | **Clean Code**: Code is well-organized and easy to understand.                                           | 10         |
|                           | **No Redundancy**: No redundant/unused code.                                                             | 5          |
| **Git Hygiene**            | **Commit Frequency**: Regular, well-documented commits.                                                 | 10         |
| **Total Points**           |                                                                                                          | **100**    |
