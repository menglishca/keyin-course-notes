---
title: 1. Introduction to databases
---


## What is a database?
- Databases sound scary, but conceptually aren't all that complicated
- A database (in terms of software development) is an organized collection of structured information, which we store on a computer system

## What does a database do?
  - Organize and store (potentially) incredibly large amounts of data, such that it can be easily used
  - Allow multiple users to access the same set of data simultaneously
  - Ensure the data stored within them is accurate and reliable, and remains that way over time

## Why do we use databases?
  - Technically, you could store all your information in a plain text file, the data would still be stored.
  - However, as the amount of data grows, how that data is structured becomes important
  - Databases are a way to enforce the structure of that data

## Centralized vs decentralized databases
- For the purposes of this course, we'll **only** be working with centralized databases
- A centralized database is a database where the data (functionally) lives in one place, and everyone goes to that place to get the data
- A decentralized database is the opposite, the data is spread out across multiple locations, each containing their own copy of all of the data
<br />
<details>
  <summary>💡 Fun Fact: Blockchain as a decentralized database</summary>

- Blockchain, famously used in cryptocurrencies like bitcoin is an example of a decentralized database.
- Unlike traditional databases, blockchain is managed by a **network of distributed nodes**.
- Each node has a copy of the data, and changes need to be **approved by most nodes**.
- This setup boosts transparency, security, and tamper-resistance.
</details>

## Example of a database - School Filing System
- **Description of the database**
  - Imagine a physical filing cabinet at a school that houses folders for the students, teachers and courses
  - Each student has a file folder containing their personal details, grades and attendance records
  - Each teacher has a file folder containing their personal details, teaching schedules and performance reviews
  - Each course has a file folder with the syllabus, enrolled students, and grades.
- **How does this filing cabinet represent a database?**
  - To be fair, this isn't a perfect example
  - But the filing cabinet stores all the data makes sure it can be accessed
  - Each item is accurate, reliable and will remain that way over time (unless we lose the entire filing cabinet)
  - It doesn't really allow multiple users, probably why filing cabinets aren't great databases