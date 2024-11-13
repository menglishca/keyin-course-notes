---
title: 4. Examples
---

For each of the following examples, the goal is to determine:
1. What data and data types do we need to store?
2. What are the relationships in the database?
3. What could our tables look like? What are the primary and foreign keys?

<ul>
  <li>
    <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 1: Employees and Departments</h2>
    <p>
      A company has several employees and departments. Each employee has a number and name, and each works in a specific department. Each department has a name, location and each department can have multiple employees.
    </p>
    <ul>
      <li>
        <details>
          <summary style="list-style: none;">Solution</summary>
          <ul style="margin-top: 0px;">
            <li>
              <details>
                <summary style="list-style: none;"><strong>Step 1: What data and data types do we have?</strong></summary>
                <ul style="margin-top: 0px;">
                  <li>Employee Number - integer</li>
                  <li>Employee Name - String</li>
                  <li>Employee Department - String</li>
                  <li>Department Name - String</li>
                  <li>Department Location - String</li>
                </ul>
              </details>
          </li>
          <li>
            <details>
              <summary style="list-style: none;">
                <strong>Step 2: What are the relationships between employees and departments?</strong>
              </summary>
              <ul style="margin-top: 0px;">
                <li>1:M, one department with many employees</li>
              </ul>
            </details>
          </li>
          <li>
            <details>
              <summary style="list-style: none;">
                <strong>Step 3: What do the tables for departments and employees look like? What are the primary and foreign keys?</strong>
              </summary>
              <ul style="margin-top: 0px;">
                <li>
                  <table>
                    <caption style="caption-side: top;">Departments</caption>
                    <tbody>
                      <tr><td>department_name (Primary Key) (String)</td></tr>
                      <tr><td>department_location (String)</td></tr>
                    </tbody>
                  </table>
                </li>
                <li>
                  <table>
                    <caption style="caption-side: top;">Employees</caption>
                    <tbody>
                      <tr><td>employee_number (Primary Key) (Integer</td></tr>
                      <tr><td>employee_name (String)</td></tr>
                      <tr><td>employee_department (Foreign Key - Departments.department_name) (String)</td></tr>
                    </tbody>
                  </table>
                </li>
              </ul>
            </details>
          </li>
        </details>
      </li>
    </ul>
  </li>
  <li>
    <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 2: Students and Courses</h2>
    <p>
      A university offers various courses, and students enroll in these courses. Each student has a name, an id, and can enroll in multiple courses. Each course has a name, id and can have multiple students.
    </p>
    <ul>
      <li>
        <details>
          <summary style="list-style: none;">Solution</summary>
          <ul style="margin-top: 0px;">
            <li>
              <details>
                <summary style="list-style: none;"><strong>Step 1: What data and data types do we have?</strong></summary>
                <ul style="margin-top: 0px;">
                  <li>Student ID - Integer</li>
                  <li>Student Name - String</li>
                  <li>Course ID - Integer</li>
                  <li>Course Name - String</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 2: What are the relationships between students and courses?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>M:M, many students can take many courses</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 3: What do the tables for students and courses look like? What are the primary and foreign keys?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>
                    <table>
                      <caption style="caption-side: top;">Students</caption>
                      <tbody>
                        <tr><td>student_id (Primary Key) (Integer)</td></tr>
                        <tr><td>student_name (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Courses</caption>
                      <tbody>
                        <tr><td>course_id (Primary Key) (Integer)</td></tr>
                        <tr><td>course_name (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Student_Course</caption>
                      <tbody>
                        <tr><td>student_id (Foreign Key - Students.student_id) (Integer)</td></tr>
                        <tr><td>course_id (Foreign Key - Courses.course_id) (Integer)</td></tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </details>
            </li>
          </ul>
        </details>
      </li>
    </ul>
  </li>
  <li>
    <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 3: Authors and Books</h2>
    <p>
      In a library, each book has an ID, a title and is written by a specific author. Each author has a name but one author may write multiple books.
    </p>
    <ul>
      <li>
        <details>
          <summary style="list-style: none;">Solution</summary>
          <ul style="margin-top: 0px;">
            <li>
              <details>
                <summary style="list-style: none;"><strong>Step 1: What data and data types do we have?</strong></summary>
                <ul style="margin-top: 0px;">
                  <li>Book ID - Integer</li>
                  <li>Book Title - String</li>
                  <li>Author Name - String</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 2: What are the relationships between books and authors?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>1:M, one author writes many books</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 3: What do the tables for books and authors look like? What are the primary and foreign keys?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>
                    <table>
                      <caption style="caption-side: top;">Authors</caption>
                      <tbody>
                        <tr><td>author_id (Primary Key) (Integer)</td></tr>
                        <tr><td>author_name (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Books</caption>
                      <tbody>
                        <tr><td>book_id (Primary Key) (Integer)</td></tr>
                        <tr><td>book_title (String)</td></tr>
                        <tr><td>author_id (Foreign Key - Authors.author_id) (Integer)</td></tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </details>
            </li>
          </ul>
        </details>
      </li>
    </ul>
  </li>
  <li>
    <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 4: Students and Advisors</h2>
    <p>
      Each student at a university has a name, an ID, and is assigned to an advisor, but an advisor (who just has a name) can oversee multiple students.
    </p>
    <ul>
      <li>
        <details>
          <summary style="list-style: none;">Solution</summary>
          <ul style="margin-top: 0px;">
            <li>
              <details>
                <summary style="list-style: none;"><strong>Step 1: What data and data types do we have?</strong></summary>
                <ul style="margin-top: 0px;">
                  <li>Student ID - Integer</li>
                  <li>Student Name - String</li>
                  <li>Advisor Name - String</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 2: What are the relationships between students and advisors?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>1:M, one advisor has many students</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 3: What do the tables for students and advisors look like? What are the primary and foreign keys?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>
                    <table>
                      <caption style="caption-side: top;">Advisors</caption>
                      <tbody>
                        <tr><td>advisor_id (Primary Key) (Integer)</td></tr>
                        <tr><td>advisor_name (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Students</caption>
                      <tbody>
                        <tr><td>student_id (Primary Key) (Integer)</td></tr>
                        <tr><td>student_name (String)</td></tr>
                        <tr><td>advisor_id (Foreign Key - Advisors.advisor_id) (Integer)</td></tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </details>
            </li>
          </ul>
        </details>
      </li>
    </ul>
  </li>
  <li>
    <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 5: Products and Categories</h2>
    <p>
      A store sells products, each product has a name, size price and id. Each product is categorized and can belong to one category. Each category (which can have multiple products) has a name.
    </p>
    <ul>
      <li>
        <details>
          <summary style="list-style: none;">Solution</summary>
          <ul style="margin-top: 0px;">
            <li>
              <details>
                <summary style="list-style: none;"><strong>Step 1: What data and data types do we have?</strong></summary>
                <ul style="margin-top: 0px;">
                  <li>Product ID - Integer</li>
                  <li>Product Name - String</li>
                  <li>Product Size - String</li>
                  <li>Product Price - Decimal</li>
                  <li>Category ID - Integer</li>
                  <li>Category Name - String</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 2: What are the relationships between products and categories?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>1:M, one category has many products</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 3: What do the tables for products and categories look like? What are the primary and foreign keys?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>
                    <table>
                      <caption style="caption-side: top;">Categories</caption>
                      <tbody>
                        <tr><td>category_id (Primary Key) (Integer)</td></tr>
                        <tr><td>category_name (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Products</caption>
                      <tbody>
                        <tr><td>product_id (Primary Key) (Integer)</td></tr>
                        <tr><td>product_name (String)</td></tr>
                        <tr><td>product_size (String)</td></tr>
                        <tr><td>product_price (Decimal)</td></tr>
                        <tr><td>category_id (Foreign Key - Categories.category_id) (Integer)</td></tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </details>
            </li>
          </ul>
        </details>
      </li>
    </ul>
  </li>
  <li>
    <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 6: Patients and Doctors</h2>
    <p>
      In a hospital, each patient has an ID, blood type and name. Each patient is treated by one or more doctors. Each doctor, who has a name, salary and ID, can treat multiple patients.
    </p>
    <ul>
      <li>
        <details>
          <summary style="list-style: none;">Solution</summary>
          <ul style="margin-top: 0px;">
            <li>
              <details>
                <summary style="list-style: none;"><strong>Step 1: What data and data types do we have?</strong></summary>
                <ul style="margin-top: 0px;">
                  <li>Patient ID - Integer</li>
                  <li>Patient Blood Type - String</li>
                  <li>Patient Name - String</li>
                  <li>Doctor ID - Integer</li>
                  <li>Doctor Name - String</li>
                  <li>Doctor Salary - Decimal</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 2: What are the relationships between patients and doctors?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>M:M, many patients can be treated by many doctors</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 3: What do the tables for patients and doctors look like? What are the primary and foreign keys?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>
                    <table>
                      <caption style="caption-side: top;">Patients</caption>
                      <tbody>
                        <tr><td>patient_id (Primary Key) (Integer)</td></tr>
                        <tr><td>patient_name (String)</td></tr>
                        <tr><td>patient_blood_type (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Doctors</caption>
                      <tbody>
                        <tr><td>doctor_id (Primary Key) (Integer)</td></tr>
                        <tr><td>doctor_name (String)</td></tr>
                        <tr><td>doctor_salary (Decimal)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Patient_Doctor</caption>
                      <tbody>
                        <tr><td>patient_id (Foreign Key - Patients.patient_id) (Integer)</td></tr>
                        <tr><td>doctor_id (Foreign Key - Doctors.doctor_id) (Integer)</td></tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </details>
            </li>
          </ul>
        </details>
      </li>
    </ul>
  </li>
  <li>
    <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 7: Courses and Instructors</h2>
    <p>
      Each course at a university, has an ID and a name, and is taught by one or more instructors. Each instructor (who also have an ID and a name) can teach multiple courses.
    </p>
    <ul>
      <li>
        <details>
          <summary style="list-style: none;">Solution</summary>
          <ul style="margin-top: 0px;">
            <li>
              <details>
                <summary style="list-style: none;"><strong>Step 1: What data and data types do we have?</strong></summary>
                <ul style="margin-top: 0px;">
                  <li>Course ID - Integer</li>
                  <li>Course Name - String</li>
                  <li>Instructor ID - Integer</li>
                  <li>Instructor Name - String</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 2: What are the relationships between courses and instructors?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>M:M, many courses can be taught by many instructors</li>
                </ul>
              </details>
            </li>
            <li>
              <details>
                <summary style="list-style: none;">
                  <strong>Step 3: What do the tables for courses and instructors look like? What are the primary and foreign keys?</strong>
                </summary>
                <ul style="margin-top: 0px;">
                  <li>
                    <table>
                      <caption style="caption-side: top;">Courses</caption>
                      <tbody>
                        <tr><td>course_id (Primary Key) (Integer)</td></tr>
                        <tr><td>course_name (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Instructors</caption>
                      <tbody>
                        <tr><td>instructor_id (Primary Key) (Integer)</td></tr>
                        <tr><td>instructor_name (String)</td></tr>
                      </tbody>
                    </table>
                  </li>
                  <li>
                    <table>
                      <caption style="caption-side: top;">Course_Instructor</caption>
                      <tbody>
                        <tr><td>course_id (Foreign Key - Courses.course_id) (Integer)</td></tr>
                        <tr><td>instructor_id (Foreign Key - Instructors.instructor_id) (Integer)</td></tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </details>
            </li>
          </ul>
        </details>
      </li>
    </ul>
  </li>
</ul>