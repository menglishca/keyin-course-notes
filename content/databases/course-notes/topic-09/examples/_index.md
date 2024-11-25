---
title: 1. Examples
---

## Example 1: Library Book Collection
You're tasked with creating a simple Library Book Collection to manage information about books in a library. Using MongoDB and a GUI like MongoDB Compass or the Mongo Shell, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **book data**:

| Title               | Author              | Genre       | Published Year |
|---------------------|---------------------|-------------|----------------|
| The Great Gatsby    | F. Scott Fitzgerald | Fiction     | 1925           |
| To Kill a Mockingbird | Harper Lee         | Fiction     | 1960           |
| 1984                | George Orwell       | Dystopian   | 1949           |

### Tasks
<ol>
    <li>
        <details>
            <summary>Create a collection and insert the book data</summary>

```javascript
// Connect to MongoDB
use LibraryCollection;

// Create a collection for books and insert data
db.books.insertMany([
    {
        title: "The Great Gatsby",
        author: "F. Scott Fitzgerald",
        genre: "Fiction",
        publishedYear: 1925
    },
    {
        title: "To Kill a Mockingbird",
        author: "Harper Lee",
        genre: "Fiction",
        publishedYear: 1960
    },
    {
        title: "1984",
        author: "George Orwell",
        genre: "Dystopian",
        publishedYear: 1949
    }
]);
```

</details>
    </li>
    <li>
        <p>Write MongoDB queries to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>titles</strong> of all books</summary>

```javascript
db.books.find({}, { title: 1, _id: 0 });
```

**Explanation:**
- `db.books.find()` is querying the `books` collection.
- `{}`: The empty object is the filter criteria, which means "select all documents" (no filter applied).
- `{ title: 1, _id: 0 }`: This is the projection. It includes only the `title` field in the result (`1` means include), and excludes the `_id` field (`0` means exclude).

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>authors</strong> of all books published after 1950</summary>

```javascript
db.books.find(
    { publishedYear: { $gt: 1950 } },
    { author: 1, _id: 0 }
);
```

**Explanation:**
- `{ publishedYear: { $gt: 1950 } }`: This is the filter condition. `$gt` stands for "greater than", so this will find books published after 1950.
- `{ author: 1, _id: 0 }`: The projection includes only the `author` field and excludes the `_id` field from the results.

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve all books of the <strong>"Fiction"</strong> genre</summary>

```javascript
db.books.find(
    { genre: "Fiction" }
);
```

**Explanation:**
- `{ genre: "Fiction" }`: This filter condition finds all books where the `genre` is exactly "Fiction".
- No projection is specified, so MongoDB will return all fields for the matching documents by default.

</details>
            </li>
        </ul>
    </li>
    <li>
            <details>
                <summary>Update the published year of "1984" to <code>1950</code></summary>

```javascript
db.books.updateOne(
    { title: "1984" },
    { $set: { publishedYear: 1950 } }
);
```

   **Explanation:**
   - `db.books.updateOne()`: This updates a **single** document in the `books` collection.
   - `{ title: "1984" }`: The filter to find the document with the title "1984".
   - `{ $set: { publishedYear: 1950 } }`: The `$set` operator updates the `publishedYear` field to `1950`. If the field doesn’t exist, it will be added.

</details>
        </li>
        <li>
            <details>
                <summary>Remove "To Kill a Mockingbird" from the collection</summary>

```javascript
db.books.deleteOne({ title: "To Kill a Mockingbird" });
```

   **Explanation:**
   - `db.books.deleteOne()`: This deletes a **single** document from the `books` collection.
   - `{ title: "To Kill a Mockingbird" }`: The filter condition that matches the document where the `title` is "To Kill a Mockingbird".

</details>
        </li>
    </ol>
</details>

## Example 2: Movie Collection
You're tasked with creating a simple Movie Collection to manage information about movies in a database. Using MongoDB and a GUI like MongoDB Compass or the Mongo Shell, build the system step-by-step.

<details>
    <summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **movie data**:

| Title             | Director         | Genre         | Release Year |
|-------------------|------------------|---------------|--------------|
| Inception         | Christopher Nolan| Sci-Fi        | 2010         |
| The Dark Knight   | Christopher Nolan| Action        | 2008         |
| Interstellar      | Christopher Nolan| Sci-Fi        | 2014         |

### Tasks
<ol>
    <li>
        <details>
            <summary>Create a collection and insert the movie data</summary>

```javascript
// Connect to MongoDB
use MovieCollection;

// Create a collection for movies and insert data
db.movies.insertMany([
    {
        title: "Inception",
        director: "Christopher Nolan",
        genre: "Sci-Fi",
        releaseYear: 2010
    },
    {
        title: "The Dark Knight",
        director: "Christopher Nolan",
        genre: "Action",
        releaseYear: 2008
    },
    {
        title: "Interstellar",
        director: "Christopher Nolan",
        genre: "Sci-Fi",
        releaseYear: 2014
    }
]);
```

</details>
    </li>
    <li>
        <p>Write MongoDB queries to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>titles</strong> of all movies</summary>

```javascript
db.movies.find({}, { title: 1, _id: 0 });
```

**Explanation:**
- `db.movies.find()` queries the `movies` collection.
- `{}`: The empty filter matches all documents in the collection.
- `{ title: 1, _id: 0 }`: The projection includes the `title` field and excludes the `_id` field in the result.

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>directors</strong> of all movies released after 2010</summary>

```javascript
db.movies.find(
    { releaseYear: { $gt: 2010 } },
    { director: 1, _id: 0 }
);
```

**Explanation:**
- `{ releaseYear: { $gt: 2010 } }`: This filter finds movies released after 2010 (`$gt` stands for "greater than").
- `{ director: 1, _id: 0 }`: The projection includes the `director` field and excludes the `_id` field.

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve all movies of the <strong>"Sci-Fi"</strong> genre</summary>

```javascript
db.movies.find(
    { genre: "Sci-Fi" }
);
```

**Explanation:**
- `{ genre: "Sci-Fi" }`: This filter finds movies where the `genre` field is "Sci-Fi".
- No projection is specified, so MongoDB will return all fields for the matching documents by default.

</details>
            </li>
        </ul>
    </li>
    <li>
        <details>
            <summary>Update the release year of "Interstellar" to <code>2015</code></summary>

```javascript
db.movies.updateOne(
    { title: "Interstellar" },
    { $set: { releaseYear: 2015 } }
);
```

**Explanation:**
- `db.movies.updateOne()`: This updates a single document in the `movies` collection.
- `{ title: "Interstellar" }`: The filter condition selects the movie "Interstellar".
- `{ $set: { releaseYear: 2015 } }`: The `$set` operator updates the `releaseYear` to 2015.

</details>
    </li>
    <li>
        <details>
            <summary>Remove "The Dark Knight" from the collection</summary>

```javascript
db.movies.deleteOne({ title: "The Dark Knight" });
```

**Explanation:**
- `db.movies.deleteOne()`: This deletes a single document from the `movies` collection.
- `{ title: "The Dark Knight" }`: The filter condition specifies that the document with the title "The Dark Knight" should be deleted.

</details>
    </li>
</ol>
</details>

## Example 3: School Enrollment System
You're tasked with creating a simple School Enrollment System to manage students, courses, and their enrollments in those courses. Using MongoDB and a GUI like MongoDB Compass or the Mongo Shell, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **student data**:

| First Name | Last Name  | Email                           | School Enrollment Date |
|------------|------------|---------------------------------|------------------------|
| Alice      | Johnson    | alice.johnson@example.com       | September 15, 2024     |
| Bob        | Smith      | bob.smith@example.com           | September 16, 2024     |
| Charlie    | Williams   | charlie.williams@example.com    | September 17, 2024     |

- Your database must store the following **course data**:

| Course Name    | Course Description               |
|----------------|----------------------------------|
| Physics 101    | Introduction to Physics          |
| Literature 201 | Basics of World Literature       |
| History 101    | A Survey of Historical Events    |

- Your database must store the following **course enrollments**:

| Student Name          | Course Name    | Enrollment Date     |
|-----------------------|----------------|---------------------|
| Alice Johnson         | Physics 101    | September 18, 2024  |
| Alice Johnson         | Literature 201 | September 18, 2024  |
| Bob Smith             | History 101    | September 19, 2024  |

### Tasks
<ol>
    <li>
        <details>
            <summary>Create the collections to store all of this data</summary>

```javascript
   // Create a collection for students
   db.students.insertMany([
       {
           firstName: "Alice",
           lastName: "Johnson",
           email: "alice.johnson@example.com",
           enrollmentDate: new Date("2024-09-15")
       },
       {
           firstName: "Bob",
           lastName: "Smith",
           email: "bob.smith@example.com",
           enrollmentDate: new Date("2024-09-16")
       },
       {
           firstName: "Charlie",
           lastName: "Williams",
           email: "charlie.williams@example.com",
           enrollmentDate: new Date("2024-09-17")
       }
   ]);

   // Create a collection for courses
   db.courses.insertMany([
       {
           courseName: "Physics 101",
           courseDescription: "Introduction to Physics"
       },
       {
           courseName: "Literature 201",
           courseDescription: "Basics of World Literature"
       },
       {
           courseName: "History 101",
           courseDescription: "A Survey of Historical Events"
       }
   ]);

   // Create a collection for enrollments
   db.enrollments.insertMany([
       {
           studentName: "Alice Johnson",
           courseName: "Physics 101",
           enrollmentDate: new Date("2024-09-18")
       },
       {
           studentName: "Alice Johnson",
           courseName: "Literature 201",
           enrollmentDate: new Date("2024-09-18")
       },
       {
           studentName: "Bob Smith",
           courseName: "History 101",
           enrollmentDate: new Date("2024-09-19")
       }
   ]);
   ```

   **Note:**
   We use three separate collections (`students`, `courses`, and `enrollments`) instead of combining all the data into one large collection because:
   - **Separation of Concerns:** Each collection has a specific purpose and avoids duplication of data. For example, the course details do not need to be repeated for every enrollment.
   - **Flexibility:** Adding or updating data in one collection (e.g., adding a new course) doesn’t require changes to unrelated data (e.g., students).
   - **Performance:** Queries targeting specific types of data (e.g., retrieving all courses) are faster because they don’t need to filter unrelated fields in a large collection.

</details>
    </li>
    <li>
        <p>Write MongoDB queries to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>full names</strong> of all students</summary>

```javascript
db.students.find({}, { firstName: 1, lastName: 1, _id: 0 });
```

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>course names</strong> of all of "Bob Smith"'s courses</summary>

```javascript
db.enrollments.find(
    { studentName: "Bob Smith" },
    { courseName: 1, _id: 0 }
);
```

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve all <strong>students</strong> enrolled in "Physics 101"</summary>

```javascript
db.enrollments.find(
    { courseName: "Physics 101" },
    { studentName: 1, _id: 0 }
);
```

</details>
            </li>
        </ul>
    </li>
    <li>
        <details>
            <summary>Change "Charlie William"'s email to <code>charlie.w.newemail@example.com</code></summary>

```javascript
db.students.updateOne(
    { firstName: "Charlie", lastName: "Williams" },
    { $set: { email: "charlie.w.newemail@example.com" } }
);
```

</details>
    </li>
    <li>
        <details>
            <summary>Remove "Alice Johnson" from "Literature 201"</summary>

```javascript
db.enrollments.deleteOne({
    studentName: "Alice Johnson",
    courseName: "Literature 201"
});
```

</details>
    </li>
</ol>
</details>