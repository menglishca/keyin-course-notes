---
title: 4. CRUD Operations in Mongoose
---

## Create  
With `pg`, you insert data by running SQL commands:  
```javascript
pool.query(
  `INSERT INTO students (first_name, last_name, email, enrollment_date) VALUES ($1, $2, $3, $4)`,
  ['Alice', 'Johnson', 'alice.johnson@example.com', '2024-09-15']
);
```

In Mongoose, you create and save an instance of a model:  
```javascript
const newStudent = new Student({
  firstName: 'Alice',
  lastName: 'Johnson',
  email: 'alice.johnson@example.com',
  enrollmentDate: '2024-09-15',
});

newStudent.save()
  .then(student => console.log('Saved:', student))
  .catch(err => console.error('Error:', err));
```

---

## Read  
- **With `pg`:**  
  ```javascript
  pool.query(
    `SELECT * FROM students WHERE email = $1`,
    ['alice.johnson@example.com']
  );
  ```

- **With Mongoose:**  
  ```javascript
  Student.findOne({ email: 'alice.johnson@example.com' })
    .then(student => console.log('Found:', student))
    .catch(err => console.error('Error:', err));
  ```

---

## Update  
- **With `pg`:**  
  ```javascript
  pool.query(
    `UPDATE students SET email = $1 WHERE first_name = $2 AND last_name = $3`,
    ['alice.newemail@example.com', 'Alice', 'Johnson']
  );
  ```

- **With Mongoose:**  
  ```javascript
  Student.updateOne(
    { firstName: 'Alice', lastName: 'Johnson' },
    { email: 'alice.newemail@example.com' }
  )
  .then(res => console.log('Updated:', res))
  .catch(err => console.error('Error:', err));
  ```

---

## Delete  
- **With `pg`:**  
  ```javascript
  pool.query(
    `DELETE FROM students WHERE email = $1`,
    ['alice.johnson@example.com']
  );
  ```

- **With Mongoose:**  
  ```javascript
  Student.deleteOne({ email: 'alice.johnson@example.com' })
    .then(res => console.log('Deleted:', res))
    .catch(err => console.error('Error:', err));
  ```