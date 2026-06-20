---
title: 1. Mid Term Sprint - Independent
cascade:
  type: docs
---

## Objective
Individually design a database for a **Library Management System**, verify the tables are in **3NF**, and perform queries using PostgreSQL.  
**Due date: July 4th, {{< year >}}, at 11:59 PM**

## Problem Statement
Create a database for a library management system that tracks members, books, and borrowings.

### Members
- First name
- Last name
- Email address
- Membership type (e.g., Student, Faculty, Public)

### Books
- Title
- Author
- ISBN
- Genre

### Borrowings
- Member who borrowed the book
- Book borrowed
- Borrow date
- Due date
- Return date (nullable)

#### Hints/Notes
- Each borrowing record represents one instance of a member borrowing a book.

## Repository Setup
A [base repository](https://classroom.github.com/a/dH7z_KBv) is provided as a **GitHub Assignment**.

### Setting Up Your Repository
1. Click the link above and select your name on the list.
2. Clone your repository:
   ```bash
   git clone <your-new-repo-url>
   cd <your-new-repo-name>
   ```
3. Inside the repository you will find:
   - The `sql-queries/` folder for your SQL queries and normalization explanations.
   - The `README.md` for further guidance.
4. Follow the instructions in the README for further setup details.

## Requirements

### PostgreSQL Queries
You must write and test PostgreSQL queries to:

- **Create the tables** with appropriate primary keys, foreign keys, and constraints.
- **Insert sample data** meeting these minimums:
  - At least **5 members**
  - At least **10 books**
  - At least **15 borrowings**

- **Solve the following queries**:
  1. Find all books borrowed by a specific member (given their email).
  2. Find all books borrowed by members of a specific membership type (e.g., all books borrowed by 'Student' members).
  3. Find all members who have borrowed a book by a specific author (e.g., all members who borrowed a book by 'George Orwell').
  4. Update a member's email address.
  5. Remove a specific borrowing record from the database.

### Normalization

#### 3NF Explanation
Explain how your tables (Members, Books, Borrowings) meet **3NF**.
Include this in `sql-queries/normalization-explanation.txt`.

#### Denormalization Exercise
You are given a single table called `BorrowingRecord` with the following columns, your task is to:
1. **Identify** which normal form it violates (it is **not** in 3NF).
2. **Explain** why the table is not normalized.
3. **Design normalized tables** (in 3NF) from this denormalized table.
4. **Write CREATE TABLE statements** for the normalized tables.
5. **Explain** why the normalized tables are each in 3NF.

Columns:
  - `borrowing_id` — unique identifier for each borrowing record
  - `member_id` — unique identifier for the member
  - `member_first_name` — the member's first name
  - `member_last_name` — the member's last name
  - `member_email` — the member's email address
  - `membership_type` — the member's membership type (e.g., Student, Faculty, Public)
  - `book_id` — unique identifier for the book
  - `book_title` — the book's title
  - `book_author` — the book's author
  - `book_isbn` — the book's ISBN
  - `book_genre` — the book's genre
  - `borrow_date` — the date the book was borrowed
  - `due_date` — the date the book is due back
  - `return_date` — the date the book was returned (nullable)

Include this in `sql-queries/denormalization-exercise.txt`.

## Pass Outstanding Criteria
Achieve a **grade of 85% or above**.

## Submission Guidelines
- Submit your **GitHub repository link** containing:
  - A file (or multiple files) with all PostgreSQL queries outlined above.
  - A document explaining how your tables meet 3NF.
  - The denormalization exercise results.
- **Test your queries on pgAdmin or your VS Code PostgreSQL extension** before submission.
- Submissions must be made on **Teams** under the appropriate assignment.
- **Only submit your GitHub repository link** — do not attach files separately.
- Late submissions follow the [Keyin late assessment policy](https://keyincollege289.sharepoint.com/:b:/s/SD-FullstackDevelopment-Spring20262/IQCw60ZkAlOWTLI1y9i44-UgAQhefH_8tyxuTdTAAkKMNsc?e=Wk32At).
- If an extension is needed, please reach out before the due date.

## Notes
- You can find examples from class [here](https://github.com/menglishca/keyin-code-samples).
- If anything is unclear or you need help, reach out on Teams or via email.
- Support sessions are available during lecture breaks and with the TA.
- This sprint must be completed **individually, NOT in groups**.

## Grading Rubric

| Category | Criteria | Points |
|---|---|---|
| **Database Setup & Sample Data** | | **15** |
| &nbsp;&nbsp;&nbsp;&nbsp;Table Design | Tables created correctly with appropriate primary keys, foreign keys, and constraints | 5 |
| &nbsp;&nbsp;&nbsp;&nbsp;Sample Data | At least 5 members, 10 books, and 15 borrowings inserted | 10 |
| **SQL Queries** | | **30** |
| &nbsp;&nbsp;&nbsp;&nbsp;Query 1 | Find all books borrowed by a specific member (given their email) | 6 |
| &nbsp;&nbsp;&nbsp;&nbsp;Query 2 | Find all books borrowed by members of a specific membership type | 6 |
| &nbsp;&nbsp;&nbsp;&nbsp;Query 3 | Find all members who have borrowed a book by a specific author | 6 |
| &nbsp;&nbsp;&nbsp;&nbsp;Query 4 | Update a member's email address | 6 |
| &nbsp;&nbsp;&nbsp;&nbsp;Query 5 | Remove a specific borrowing record from the database | 6 |
| **Normalization** | | **40** |
| &nbsp;&nbsp;&nbsp;&nbsp;3NF Explanation | Correct explanation of why own tables meet 3NF | 15 |
| &nbsp;&nbsp;&nbsp;&nbsp;Denormalization Exercise | Identifies violations, creates normalized tables, and explains why they are in 3NF | 25 |
| **Code Quality** | | **10** |
| &nbsp;&nbsp;&nbsp;&nbsp;Readability | Code is clean, consistent, and logically organized | 5 |
| &nbsp;&nbsp;&nbsp;&nbsp;SQL Syntax | Queries and commands are written with correct SQL syntax | 5 |
| **Git Hygiene** | | **5** |
| &nbsp;&nbsp;&nbsp;&nbsp;Commit Frequency | Frequent, meaningful commits with clear descriptive messages | 5 |
| **Total Points** | | **100** |

Good luck! If you have any questions, please don't hesitiate to ask!