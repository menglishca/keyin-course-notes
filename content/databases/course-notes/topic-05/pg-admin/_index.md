---
title: 2. Working with pgAdmin
---

To reinforce some of the earlier concepts of SQL and Postgres, we'll be working through some examples using the pgAdmin tool to interact with our PostgreSQL database

## What is pgAdmin?
- pgAdmin is a graphical interface for interacting with and managing PostgreSQL databases
- You can do things like create tables, insert data, update data, etc. everything you would expect from a command line
- It also can be a little bit easier to use, depending on your preferences

## Example 1: School Enrollment System
You're tasked with creating a simple School Enrollment System to manage students, courses, and their enrollments in those courses. Using PostgreSQL and pgAdmin, build the system step-by-step.

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
            <summary>Create the tables to store all of this data</summary>

```sql
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    enrollment_date DATE
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name TEXT,
    course_description TEXT
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    enrollment_date DATE
);
```
</details>
    </li>
    <li>
        <details>
            <summary>Insert the data provided into the tables</summary>

```sql
INSERT INTO students (first_name, last_name, email, enrollment_date) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '2024-09-15'),
('Bob', 'Smith', 'bob.smith@example.com', '2024-09-16'),
('Charlie', 'Williams', 'charlie.williams@example.com', '2024-09-17');

INSERT INTO courses (course_name, course_description) VALUES
('Physics 101', 'Introduction to Physics'),
('Literature 201', 'Basics of World Literature'),
('History 101', 'A Survey of Historical Events');

INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
((SELECT student_id FROM students WHERE first_name = 'Alice' AND last_name = 'Johnson'), (SELECT course_id FROM courses WHERE course_name = 'Physics 101'), '2024-09-18'),
((SELECT student_id FROM students WHERE first_name = 'Alice' AND last_name = 'Johnson'), (SELECT course_id FROM courses WHERE course_name = 'Literature 201'), '2024-09-18'),
((SELECT student_id FROM students WHERE first_name = 'Bob' AND last_name = 'Smith'), (SELECT course_id FROM courses WHERE course_name = 'History 101'), '2024-09-19');
```
</details>
    </li>
    <li>
        <p>Write <code>SELECT</code> statements to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>full names</strong> of all students</summary>

```sql
SELECT first_name || ' ' || last_name AS full_name FROM students;
```
</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>course names</strong> of all of "Bob Smith"'s courses</summary>

```sql
SELECT course_name FROM courses
JOIN enrollments ON courses.course_id = enrollments.course_id
JOIN students ON students.student_id = enrollments.student_id
WHERE students.first_name = 'Bob' AND students.last_name = 'Smith';
```
</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve all <strong>students</strong> enrolled in "Physics 101"</summary>

```sql
SELECT first_name || ' ' || last_name AS full_name FROM students
JOIN enrollments ON students.student_id = enrollments.student_id
JOIN courses ON courses.course_id = enrollments.course_id
WHERE courses.course_name = 'Physics 101';
```
</details>
            </li>
        </ul>
    </li>
    <li>
        <details>
            <summary>Change "Charlie William"'s email to <code>charlie.w.newemail@example.com</code></summary>

```sql
UPDATE students
SET email = 'charlie.w.newemail@example.com'
WHERE first_name = 'Charlie' AND last_name = 'Williams';
```
</details>
    </li>
    <li>
        <details>
            <summary>Remove "Alice Johnson" from "Literature 201"</summary>

```sql
DELETE FROM enrollments
WHERE student_id = (SELECT student_id FROM students WHERE first_name = 'Alice' AND last_name = 'Johnson')
AND course_id = (SELECT course_id FROM courses WHERE course_name = 'Literature 201');
```
</details>
    </li>
</ol>
</details>

## Example 2: Library Management System
You're tasked with creating a simple Library Management System to manage books, authors, and the books' availability for checkout. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **author data**:

| First Name | Last Name  | Date of Birth     | Nationality |
|------------|------------|-------------------|-------------|
| George     | Orwell     | June 25, 1903     | British     |
| Jane       | Austen     | December 16, 1775 | British     |
| Mark       | Twain      | November 30, 1835 | American    |

- Your database must store the following **book data**:

| Title                              | Genre      | Publication Year | Author        |
|------------------------------------|------------|------------------|---------------|
| 1984                               | Dystopian  | 1949             | George Orwell |
| Pride and Prejudice                 | Romance    | 1813             | Jane Austen   |
| The Adventures of Huckleberry Finn  | Adventure  | 1884             | Mark Twain    |

- Your database must store the following **book availability data**:

| Book Title                         | Available  | Last Checkout Date |
|------------------------------------|------------|--------------------|
| 1984                               | Yes        | September 10, 2024 |
| Pride and Prejudice                 | No         | August 25, 2024    |
| The Adventures of Huckleberry Finn  | Yes        | September 15, 2024 |

### Tasks
<ol>
    <li>
        <details>
            <summary>Create the tables to store all of this data</summary>

```sql
CREATE TABLE authors (
    author_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    date_of_birth DATE,
    nationality TEXT
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    publication_year INT,
    author_id INT REFERENCES authors(author_id)
);

CREATE TABLE book_availability (
    availability_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES books(book_id),
    available BOOLEAN,
    last_checkout_date DATE
);
```
</details>
    </li>
    <li>
        <details>
            <summary>Insert the data provided into the tables</summary>

```sql
INSERT INTO authors (first_name, last_name, date_of_birth, nationality) VALUES
('George', 'Orwell', '1903-06-25', 'British'),
('Jane', 'Austen', '1775-12-16', 'British'),
('Mark', 'Twain', '1835-11-30', 'American');

INSERT INTO books (title, genre, publication_year, author_id) VALUES
('1984', 'Dystopian', 1949, (SELECT author_id FROM authors WHERE first_name = 'George' AND last_name = 'Orwell')),
('Pride and Prejudice', 'Romance', 1813, (SELECT author_id FROM authors WHERE first_name = 'Jane' AND last_name = 'Austen')),
('The Adventures of Huckleberry Finn', 'Adventure', 1884, (SELECT author_id FROM authors WHERE first_name = 'Mark' AND last_name = 'Twain'));

INSERT INTO book_availability (book_id, available, last_checkout_date) VALUES
((SELECT book_id FROM books WHERE title = '1984'), TRUE, '2024-09-10'),
((SELECT book_id FROM books WHERE title = 'Pride and Prejudice'), FALSE, '2024-08-25'),
((SELECT book_id FROM books WHERE title = 'The Adventures of Huckleberry Finn'), TRUE, '2024-09-15');
```
</details>
    </li>
    <li>
        <p>Write <code>SELECT</code> statements to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>full names</strong> of all authors</summary>

```sql
SELECT first_name || ' ' || last_name AS full_name FROM authors;
```
</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>titles</strong> of all available books</summary>

```sql
SELECT title FROM books
JOIN book_availability ON books.book_id = book_availability.book_id
WHERE available = TRUE;
```
</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>titles</strong> of all books by "George Orwell"</summary>

```sql
SELECT title FROM books
JOIN authors ON books.author_id = authors.author_id
WHERE authors.first_name = 'George' AND authors.last_name = 'Orwell';
```
</details>
            </li>
        </ul>
    </li>
    <li>
        <details>
            <summary>Update the <strong>availability</strong> of "Pride and Prejudice" to "Yes"</summary>

```sql
UPDATE book_availability
SET available = TRUE
WHERE book_id = (SELECT book_id FROM books WHERE title = 'Pride and Prejudice');
```
</details>
    </li>
    <li>
        <details>
            <summary>Remove "The Adventures of Huckleberry Finn" from the available books list</summary>

```sql
UPDATE book_availability
SET available = FALSE
WHERE book_id = (SELECT book_id FROM books WHERE title = 'The Adventures of Huckleberry Finn');
```
</details>
    </li>
</ol>
</details>

## Example 3: Employee Management System
You're tasked with creating an Employee Management System to manage employees, departments, and their salaries. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **employee data**:

| First Name | Last Name  | Email                           | Hire Date        |
|------------|------------|---------------------------------|------------------|
| Sarah      | Connor     | sarah.connor@example.com        | January 5, 2023  |
| John       | Doe        | john.doe@example.com            | March 12, 2022   |
| Jane       | Smith      | jane.smith@example.com          | May 15, 2023     |

- Your database must store the following **department data**:

| Department Name    | Department Head |
|--------------------|-----------------|
| Human Resources    | Sarah Connor    |
| Engineering        | John Doe        |
| Marketing          | Jane Smith      |

- Your database must store the following **salary data**:

| Employee Name    | Department         | Salary      |
|------------------|--------------------|-------------|
| Sarah Connor     | Human Resources    | $75,000     |
| John Doe         | Engineering        | $85,000     |
| Jane Smith       | Marketing          | $70,000     |

### Tasks

<ol>
    <li>
        <details>
            <summary>Create the tables to store all of this data</summary>

```sql
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    hire_date DATE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name TEXT,
    department_head TEXT
);

CREATE TABLE salaries (
    employee_id INT REFERENCES employees(employee_id),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    PRIMARY KEY (employee_id, department_id)  -- Composite primary key
);
```

</details>
    </li>
    <li>
        <details>
            <summary>Insert the data provided into the tables</summary>

```sql
INSERT INTO employees (first_name, last_name, email, hire_date) VALUES
('Sarah', 'Connor', 'sarah.connor@example.com', '2023-01-05'),
('John', 'Doe', 'john.doe@example.com', '2022-03-12'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-05-15');

INSERT INTO departments (department_name, department_head) VALUES
('Human Resources', 'Sarah Connor'),
('Engineering', 'John Doe'),
('Marketing', 'Jane Smith');

INSERT INTO salaries (employee_id, department_id, salary) VALUES
(1, 1, 75000),
(2, 2, 85000), 
(3, 3, 70000);
```

</details>
    </li>
    <li>
        <p>Write <code>SELECT</code> statements to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>full names</strong> of all employees</summary>

```sql
SELECT first_name || ' ' || last_name AS full_name FROM employees;
```

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>department names</strong> which have an employee with a salary greated than $70,000</summary>

```sql
SELECT DISTINCT department_name
FROM departments
JOIN salaries ON departments.department_id = salaries.department_id
WHERE salary > 70000;
```

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>department head</strong> of "Engineering"</summary>

```sql
SELECT department_head FROM departments WHERE department_name = 'Engineering';
```

</details>
            </li>
        </ul>
    </li>
    <li>
        <details>
            <summary>Increase <strong>Jane Smith's salary</strong> to $75,000</summary>

```sql
UPDATE salaries
SET salary = 75000
WHERE employee_id = (SELECT employee_id FROM employees WHERE first_name = 'Jane' AND last_name = 'Smith');
```

</details>
    </li>
    <li>
        <details>
            <summary>Remove "John Doe" from the "Engineering" department</summary>

```sql
DELETE FROM salaries WHERE employee_id = (SELECT employee_id FROM employees WHERE first_name = 'John' AND last_name = 'Doe');
DELETE FROM employees WHERE first_name = 'John' AND last_name = 'Doe';
```

</details>
    </li>
</ol>
</details>

## Example 4: E-Commerce Order Management System
You're tasked with creating an E-Commerce Order Management System to manage customers, products, orders, and order details. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **customer data**:

| First Name | Last Name  | Email                           | Address                     | City         | Country     |
|------------|------------|---------------------------------|-----------------------------|--------------|-------------|
| Emily      | Brown      | emily.brown@example.com         | 1234 Elm Street              | New York     | USA         |
| Michael    | Green      | michael.green@example.com       | 5678 Maple Avenue            | Los Angeles  | USA         |
| Sarah      | White      | sarah.white@example.com         | 246 Oak Street               | London       | UK          |

- Your database must store the following **product data**:

| Product Name     | Description       | Price       | Stock Quantity |
|------------------|-------------------|-------------|----------------|
| Laptop           | 15" gaming laptop | $1,500      | 20             |
| Smartphone       | Latest model      | $800        | 50             |
| Headphones       | Wireless headset  | $100        | 100            |

- Your database must store the following **order data**:

| Order ID | Customer Name  | Order Date         | Total Amount  |
|----------|----------------|--------------------|---------------|
| 1        | Emily Brown    | September 1, 2024  | $2,400        |
| 2        | Michael Green  | September 5, 2024  | $800          |

- Your database must store the following **order details data**:

| Order ID | Product Name  | Quantity | Line Total |
|----------|---------------|----------|------------|
| 1        | Laptop        | 1        | $1,500     |
| 1        | Headphones    | 3        | $300       |
| 2        | Smartphone    | 1        | $800       |

### Tasks

<ol>
    <li>
        <details>
            <summary>Create the tables to store all of this data</summary>

```sql
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    address TEXT,
    city TEXT,
    country TEXT
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    description TEXT,
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

CREATE TABLE order_details (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    line_total DECIMAL(10, 2)
);
```

</details>
    </li>
    <li>
        <details>
            <summary>Insert the data provided into the tables</summary>

```sql
INSERT INTO customers (first_name, last_name, email, address, city, country) VALUES
('Emily', 'Brown', 'emily.brown@example.com', '1234 Elm Street', 'New York', 'USA'),
('Michael', 'Green', 'michael.green@example.com', '5678 Maple Avenue', 'Los Angeles', 'USA'),
('Sarah', 'White', 'sarah.white@example.com', '246 Oak Street', 'London', 'UK');

INSERT INTO products (product_name, description, price, stock_quantity) VALUES
('Laptop', '15" gaming laptop', 1500, 20),
('Smartphone', 'Latest model', 800, 50),
('Headphones', 'Wireless headset', 100, 100);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2024-09-01', 2400),
(2, '2024-09-05', 800);

INSERT INTO order_details (order_id, product_id, quantity, line_total) VALUES
(1, 1, 1, 1500),
(1, 3, 3, 300),
(2, 2, 1, 800);
```

</details>
    </li>
    <li>
        <p>Write <code>SELECT</code> statements to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>full names</strong> of all customers</summary>

```sql
SELECT first_name || ' ' || last_name AS full_name FROM customers;
```

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve the <strong>products</strong> purchased by "Emily Brown"</summary>

```sql
SELECT product_name FROM products
JOIN order_details ON products.product_id = order_details.product_id
JOIN orders ON order_details.order_id = orders.order_id
JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.first_name = 'Emily' AND customers.last_name = 'Brown';
```

</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve all <strong>customers</strong> who ordered a product costing more than $1,000</summary>

```sql
SELECT first_name, last_name FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
JOIN products ON order_details.product_id = products.product_id
WHERE products.price > 1000;
```

</details>
            </li>
        </ul>
    </li>
    <li>
        <details>
            <summary>Update the <strong>stock quantity</strong> for "Headphones" after Emily Brown's purchase</summary>

```sql
UPDATE products
SET stock_quantity = stock_quantity - 3
WHERE product_name = 'Headphones';
```

</details>
    </li>
    <li>
        <details>
            <summary>Cancel Michael Green’s order by deleting all <strong>order details</strong> and the corresponding <strong>order</strong></summary>

```sql
DELETE FROM order_details WHERE order_id = (SELECT order_id FROM orders WHERE customer_id = (SELECT customer_id FROM customers WHERE first_name = 'Michael' AND last_name = 'Green'));

DELETE FROM orders WHERE customer_id = (SELECT customer_id FROM customers WHERE first_name = 'Michael' AND last_name = 'Green');
```

</details>
    </li>
</ol>
</details>

## Example 5: Hospital Management System
You're tasked with creating a Hospital Management System to manage patients, doctors, treatments, and prescriptions. Using PostgreSQL and pgAdmin, build the system step-by-step.

<details>
<summary>Requirements and Tasks</summary>

### Requirements
- Your database must store the following **patient data**:

| First Name | Last Name  | Date of Birth     | Address        | Phone Number |
|------------|------------|-------------------|----------------|--------------|
| John       | Miller     | May 15, 1985      | 789 Pine Street| 555-1234     |
| Laura      | Turner     | February 28, 1992 | 987 Cedar Lane | 555-5678     |
| Daniel     | Lewis      | July 8, 1975      | 456 Oak Avenue | 555-8765     |

- Your database must store the following **doctor data**:

| First Name | Last Name  | Specialty           | Email                        |
|------------|------------|---------------------|------------------------------|
| David      | Adams      | Cardiologist        | david.adams@hospital.com      |
| Susan      | Martinez   | Neurologist         | susan.martinez@hospital.com   |
| Emily      | Johnson    | General Practitioner| emily.johnson@hospital.com    |

- Your database must store the following **treatment data**:

| Patient Name  | Doctor Name       | Treatment        | Treatment Date |
|---------------|-------------------|------------------|----------------|
| John Miller   | David Adams       | Heart Surgery    | August 15, 2024|
| Laura Turner  | Emily Johnson     | Flu Treatment    | September 10, 2024|
| Daniel Lewis  | Susan Martinez    | Brain Scan       | September 20, 2024|

- Your database must store the following **prescription data**:

| Patient Name  | Doctor Name       | Medication       | Dosage  | Prescription Date |
|---------------|-------------------|------------------|---------|-------------------|
| John Miller   | David Adams       | Beta Blockers    | 50mg    | August 20, 2024   |
| Laura Turner  | Emily Johnson     | Ibuprofen        | 200mg   | September 11, 2024|
| Daniel Lewis  | Susan Martinez    | Antidepressants  | 10mg    | September 22, 2024|

### Tasks
<ol>
    <li>
        <details>
            <summary>Create the tables to store all of this data</summary>

```sql
CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    date_of_birth DATE,
    address TEXT,
    phone_number TEXT
);

CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    specialty TEXT,
    email TEXT
);

CREATE TABLE treatments (
    treatment_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id),
    doctor_id INT REFERENCES doctors(doctor_id),
    treatment TEXT,
    treatment_date DATE
);

CREATE TABLE prescriptions (
    prescription_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(patient_id),
    doctor_id INT REFERENCES doctors(doctor_id),
    medication TEXT,
    dosage TEXT,
    prescription_date DATE
);
```
</details>
    </li>
    <li>
        <details>
            <summary>Insert the data provided into the tables</summary>

```sql
INSERT INTO patients (first_name, last_name, date_of_birth, address, phone_number) VALUES
('John', 'Miller', '1985-05-15', '789 Pine Street', '555-1234'),
('Laura', 'Turner', '1992-02-28', '987 Cedar Lane', '555-5678'),
('Daniel', 'Lewis', '1975-07-08', '456 Oak Avenue', '555-8765');

INSERT INTO doctors (first_name, last_name, specialty, email) VALUES
('David', 'Adams', 'Cardiologist', 'david.adams@hospital.com'),
('Susan', 'Martinez', 'Neurologist', 'susan.martinez@hospital.com'),
('Emily', 'Johnson', 'General Practitioner', 'emily.johnson@hospital.com');

INSERT INTO treatments (patient_id, doctor_id, treatment, treatment_date) VALUES
(1, 1, 'Heart Surgery', '2024-08-15'),
(2, 3, 'Flu Treatment', '2024-09-10'),
(3, 2, 'Brain Scan', '2024-09-20');

INSERT INTO prescriptions (patient_id, doctor_id, medication, dosage, prescription_date) VALUES
(1, 1, 'Beta Blockers', '50mg', '2024-08-20'),
(2, 3, 'Ibuprofen', '200mg', '2024-09-11'),
(3, 2, 'Antidepressants', '10mg', '2024-09-22');
```
</details>
    </li>
    <li>
        <p>Write <code>SELECT</code> statements to do the following:</p>
        <ul>
            <li>
                <details>
                    <summary>Retrieve the <strong>full names</strong> of all doctors</summary>

```sql
SELECT first_name || ' ' || last_name AS full_name FROM doctors;
```
</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve all <strong>patients</strong> treated by "Emily Johnson"</summary>

```sql
SELECT first_name, last_name FROM patients
JOIN treatments ON patients.patient_id = treatments.patient_id
JOIN doctors ON treatments.doctor_id = doctors.doctor_id
WHERE doctors.first_name = 'Emily' AND doctors.last_name = 'Johnson';
```
</details>
            </li>
            <li>
                <details>
                    <summary>Retrieve all <strong>prescriptions</strong> for "John Miller"</summary>

```sql
SELECT medication, dosage, prescription_date FROM prescriptions
JOIN patients ON prescriptions.patient_id = patients.patient_id
WHERE patients.first_name = 'John' AND patients.last_name = 'Miller';
```
</details>
            </li>
        </ul>
    </li>
    <li>
        <details>
            <summary>Update the <strong>dosage</strong> for Laura Turner’s "Ibuprofen" prescription to 400mg</summary>

```sql
UPDATE prescriptions
SET dosage = '400mg'
WHERE patient_id = (SELECT patient_id FROM patients WHERE first_name = 'Laura' AND last_name = 'Turner')
AND medication = 'Ibuprofen';
```
</details>
    </li>
    <li>
        <details>
            <summary>Remove <strong>Daniel Lewis' Brain Scan treatment</strong> from the system</summary>

```sql
DELETE FROM treatments
WHERE patient_id = (SELECT patient_id FROM patients WHERE first_name = 'Daniel' AND last_name = 'Lewis')
AND treatment = 'Brain Scan';
```
</details>
    </li>
</ol>
</details>
