---
title: QAP 3 - Database and Backend Integration
cascade:  
  type: docs  
---

## Objective
- Refactor an existing Express backend to use MongoDB (via Mongoose) to manage a collection of CDs  
- Replace in-memory storage with MongoDB  
- Add RESTful API routes to interact with the CD collection  
- Due date: **December 3rd, 2025 @ 11:59 PM NDT**


## Getting Started  

- To help you get started, a [base repository](https://classroom.github.com/a/e_vSZ1zL) has been provided for you to work from. The repository is set up as a **GitHub Assignment** to help you quickly get started.

### Steps to Create Your Own Repository  

1. Click the link above, and select your name on the list that appears, if you haven't already
   
1. Click the "Accept this assignment" button

1. Once your repository is created, **clone your new repo** to your local machine:  
   ```bash
   git clone <your-repo-url>
   ```
1. Navigate to the project folder and install dependencies:  
   ```bash
   cd <your-project>
   npm install
   ```
1. Run the server:  
   ```bash
   npm start
   ```

If you're unable to connect to a local MongoDB instance, you may use [MongoDB Atlas](https://www.mongodb.com/atlas/database) as a free cloud-hosted alternative.

## Functional Requirements  

### MongoDB Integration  
- Use Mongoose to connect to MongoDB and define a `CD` model
- Replace all in-memory logic with Mongoose database queries
- CD records must persist across server restarts

### Core REST API  
Update and implement the following standard routes for managing CDs:

| **Method** | **Route**  | **Description**                   |
|------------|------------|-----------------------------------|
| GET        | `/cds`     | Retrieve all CDs                  |
| POST       | `/cds`     | Add a new CD                      |
| PUT        | `/cds/:id` | Update an existing CD (any field) |
| DELETE     | `/cds/:id` | Delete a CD by ID                 |

### Query Functionality  
You must implement the following features **using proper RESTful design**:

| **Feature**                         | **How to Implement**                                                                 |
|-------------------------------------|--------------------------------------------------------------------------------------|
| Retrieve titles only                | `GET /cds?fields=title` - use a query param to return only CD titles                 |
| Filter by artist                    | `GET /cds?artist=Linkin Park` - return all CDs by a given artist via query param     |
| Filter by genre                     | `GET /cds?genre=Pop` - return all CDs of a given genre via query param               |
| CDs released before a certain year  | `GET /cds?before=2000` - return all CDs released before the given year               |

**Note:** The values in the query params above (like the specific genre "Pop" or the specific year "2000") are examples and any values for the query param should be supported. e.g. We should also support "Rock" or "Rap" as genres, as the query parameter should take any genre.

## Sample Data  
The following is a sample of the kind of data your application should be able to support. You are **not required** to insert this data into your database, and you **do not need to write code** to do so unless you wish to make testing easier.

| Title                  | Artist          | Genre     | Release Year |
|------------------------|-----------------|-----------|--------------|
| Hybrid Theory          | Linkin Park     | Rock      | 2000         |
| Thriller               | Michael Jackson | Pop       | 1982         |
| The Eminem Show        | Eminem          | Hip-Hop   | 2002         |
| Back in Black          | AC/DC           | Rock      | 1980         |
| 21                     | Adele           | Soul      | 2011         |
| Fearless               | Taylor Swift    | Country   | 2008         |
| Nevermind              | Nirvana         | Grunge    | 1991         |
| Future Nostalgia       | Dua Lipa        | Pop       | 2020         |
| American Idiot         | Green Day       | Punk Rock | 2004         |
| Good Kid, M.A.A.D City | Kendrick Lamar  | Hip-Hop   | 2012         |

This variety of records is designed to help you test features like filtering by artist, genre, and release year.

## Submission Guidelines  
- Submit a **single GitHub repository** containing:
  - All source code for the Express + Mongoose app
  - Your completed route implementations
- Submit a link to the repository on Teams under the appropriate assignment
- Use a tool like Thunder Client, Postman, or curl to test your endpoints
- Reach out before the deadline if you need an extension
- Submissions are subject to the Keyin late assessment policy found [here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD14Sept.2025-Dec.2025/EaNwhyZvUxhIpqLD-N68n64BaOjdRmmLNGNw_u9tarzk4A?e=2i061T)

## Grading Rubric  

| **Category**            | **Criteria**                                                                                                   | **Points** |
|-------------------------|----------------------------------------------------------------------------------------------------------------|------------|
| **MongoDB Integration** | **Mongoose Setup & Integration**: App connects to MongoDB using Mongoose and replaces all in-memory logic      | 10         |
|                         | **Schema Design**: Mongoose schema is correctly defined and used                                               | 10         |
| **Core REST Routes**    | **GET /cds**: Successfully retrieves all CDs                                                                   | 5          |
|                         | **POST /cds**: Successfully adds a new CD                                                                      | 5          |
|                         | **PUT /cds/:id**: Successfully updates CD data                                                                 | 10         |
|                         | **DELETE /cds/:id**: Successfully deletes a CD                                                                 | 5          |
| **Query Features**      | **Titles Only**: `GET /cds?fields=title` returns only CD titles                                                | 5          |
|                         | **Filter by Artist**: `GET /cds?artist=...` returns all CDs by the given artist                                | 5          |
|                         | **Filter by Genre**: `GET /cds?genre=...` returns all CDs in a given genre                                     | 5          |
|                         | **Released Before**: `GET /cds?before=...` returns all CDs released before a given year                        | 5          |
| **Code Quality**        | **Readability**: Code is well-organized and easy to read (proper indentation, clear variable/function names)   | 5          |
|                         | **Modularity**: Functions are properly modularized                                                             | 5          |
|                         | **Error Handling**: Routes include meaningful input validation and respond to bad requests appropriately       | 5          |
| **Git Hygiene**         | **Commit Frequency**: Regular commits reflecting meaningful progress throughout development                    | 5          |
|                         | **Commit Quality**: Commit messages are clear, concise, and descriptive                                        | 5          |
| **Total Points**        |                                                                                                                | **90**     |
