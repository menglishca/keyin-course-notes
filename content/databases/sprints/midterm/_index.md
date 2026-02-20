---
title: 1. Mid Term Sprint - Independent
cascade:
  type: docs
---

## Objective 
Individually design a database and its tables, verify tables are in **3NF**, perform queries on the database, and implement a **CLI application** to interact with it.
**Due date: March 6th, 2026, at 11:59 PM**

## Problem Statement
Create a database for a **conference event management system** that keeps track of speakers, attendees, and event sessions. Your database needs to be able to store the following:

### Speakers
- The speaker’s first name
- The speaker’s last name
- The speaker’s email address
- The topic they specialize in

### Attendees
- The attendee’s first name
- The attendee’s last name
- The attendee’s email address
- The organization they represent (if any)

### Sessions
- The session title
- The speaker presenting the session
- The date and time of the session
- The attendees registered for the session

#### Hints/Notes
- You *shouldn't* need more than three or four tables
- Consider how to handle **many-to-many relationships** (e.g., an attendee can register for multiple sessions)

## Repository Setup
- To help you get started, a [base repository](https://classroom.github.com/a/dH7z_KBv) has been provided for you to work from. The repository is set up as a **GitHub Assigment** to help you quickly get started.

### Setting Up Your Repository
1. Click the link above, and select your name on the list that appears, if you haven't already
2. Clone Your Repository:
   ```bash
   git clone <your-new-repo-url>
   cd <your-new-repo-name>
   ```
3. Inside the repository, you will find:
   - The `sql-queries/` folder for your SQL queries and 3NF explanation.
   - The `cli-app/` folder containing a skeleton for your CLI application.
4. Follow the instructions in the README inside the repository for further guidance.

## Requirements

### PostgreSQL Queries
You must provide PostgreSQL queries to:
- **Create the tables**
- **Insert sample data** into the tables, including:
  - At least **5 speakers**
  - At least **10 attendees**
  - At least **7 sessions**
  - At least **15 attendee registrations**
- **Solve the following queries**:
  1. Find all sessions a specific attendee is registered for (given their email).
  2. Given a session title, list all attendees registered for that session.
  3. Retrieve the schedule (title, time, and speaker) for all sessions presented by a specific speaker.
  4. Find all attendees attending at least one session from a specific speaker.
  5. List all sessions occurring on a specific date

### Normalization.
- Explain how the tables (created using the previous queries) are each in **3NF**.
- This explanation should be included in `sql-queries/normalization-explanation.txt`.

### CLI Application 
- The `cli-app/` folder contains a **skeleton/template** for your CLI application.
- The app should be able to:
  - **Create all required tables**, if they do not exist.
  - Support and argument to **show all sessions** available in the system.
  - Support and argument to **update an attendee’s email address**.
  - Support and argument to **insert a new session** into the database.
  - Support and argument to **remove an attendee** from the system.
- Instructions on how to **run the CLI application** are in the `README.md` inside the repository.

## Pass Outstanding Criteria 
- Achieve a **grade of 85% or above**.

## Submission Guidelines
- Submit your **GitHub repository link** containing:
  - **A file (or multiple files) with all PostgreSQL queries** outlined above.
  - **The CLI application code**.
  - **A document explaining how your tables meet 3NF**.
- **Test your queries on pgAdmin before submission**.
- Submissions must be made on **Teams** under the appropriate assignment.
- **Only submit your GitHub repository link**—do not attach files separately.
- Late submissions follow the **Keyin late assessment policy** [found here](https://keyincollege289.sharepoint.com/:b:/s/FullstackJavascript-SD15Jan.2026-Apr.20262/IQB27M_3TuM7R4CffHQTsbiYAThObHy9b2Ta1SriDyA45k4?e=npqFCu).
- If an extension is needed, please reach out before the due date.

## Notes
- You can find examples from class [here](https://github.com/menglishca/keyin-code-samples).
- If anything is unclear or you need help, reach out on Teams or via email.
- Support sessions are available during lecture breaks and with the TA.
- This sprint must be completed **individually, NOT in groups**.

## Grading Rubric

| Category                                                       | Criteria                                                                                   | Points  |
|----------------------------------------------------------------|--------------------------------------------------------------------------------------------|---------|
| **CLI Functionality**                                          |                                                                                            | **30**  |
| &nbsp;&nbsp;&nbsp;&nbsp;CLI Table Creation                     | CLI creates the tables if not present                                                      | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;CLI Data Management                    | Sessions can be inserted, deleted, updated and displayed                                   | 25      |
| **PostgreSQL Queries**                                         |                                                                                            | **45**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Database Setup                         | Tables are created and populated correctly with sample data                                | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Find Sessions or Attendees             | Query to retrieve sessions for an attendee, attendees for a session and sessions on a date | 15      |
| &nbsp;&nbsp;&nbsp;&nbsp;Speaker Session Schedule Query         | Query retrieves all sessions presented by a specific speaker                               | 10      |
| &nbsp;&nbsp;&nbsp;&nbsp;Attendees of a Speaker's Session Query | Query retrieves attendees of at least one session by a given speaker                       | 10      |
| **Normalization**                                              |                                                                                            | **5**   |
| &nbsp;&nbsp;&nbsp;&nbsp;3NF Explanation                        | Correct explanation of how all tables meet 3NF                                             | 5       |<!-- collapsed -->
| **Code Quality**                                               |                                                                                            | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability                            | Code is clean, consistent, logically organized and uses readable naming                    | 5       |
| &nbsp;&nbsp;&nbsp;&nbsp;SQL Syntax                             | Queries and commands are written with clear, correct SQL syntax.                           | 5       |<!-- collapsed -->
| **Git Hygiene**                                                |                                                                                            | **10**  |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency                       | Frequent, meaningful commits throughout development with clear descriptive messages        | 10      |
| **Total Points**                                               |                                                                                            | **100** |
