---
title: 5. Examples of Normalization
---

## Recap: What is Normalization?
- First Normal Form (1NF):
  - Each cell must contain only only one value
  - Each row must be unique
- Second Normal Form (2NF):
  - Data must depend on the entire primary key, and not just part of the primary key
- Third Normal Form (3NF):
  - There can be no transitive dependencies
    - A column cannot depend on another column, unless that other column is a primary key

<ul>
  <li>
    <details>
      <summary style="list-style: none;">
        <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 1: Annual Tennis Tournament Winners</h2>
      </summary>
      <ul>
        <li>
          <strong>Original Table</strong>
          <table>
            <caption style="caption-side: top;">Annual Tournament Winners Table (Composite Key)</caption>
            <thead>
              <tr>
                <th>tournament_name</th>
                <th>year</th>
                <th>winner</th>
                <th>winner_dob</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>St. John's Invitational</td>
                <td>2000</td>
                <td>Maxwell House</td>
                <td>July 21, 1990</td>
              </tr>
              <tr>
                <td>Toronto Open</td>
                <td>2010</td>
                <td>George Albertson</td>
                <td>May 1, 1987</td>
              </tr>
              <tr>
                <td>St. John's Invitational</td>
                <td>2010</td>
                <td>Tiffany Masterson</td>
                <td>November 19, 1988</td>
              </tr>
              <tr>
                <td>Vancouver Memorial</td>
                <td>2003</td>
                <td>Maxwell House</td>
                <td>July 21, 1990</td>
              </tr>
            </tbody>
          </table>
        </li>
        <li>
          <details>
            <summary style="list-style: none;">Steps to Normalize</summary>
            <ul style="margin-top: 0px;">
              <li>
                <strong>1NF: Ensure Atomic Values</strong>
                <ul>
                  <li>
                    <details>
                      <summary style="list-style: none;">Step 1: Identify and Remove Non-Atomic Values</summary>
                      <ul style="margin-top: 0px;">
                        <li>The table is in 1NF as each column contains atomic values. The primary key is a composite key of <strong>tournament_name</strong> and <strong>year</strong>.</li>
                      </ul>
                    </details>
                  </li>
                </ul>
              </li>
              <li>
                <strong>2NF: Remove Partial Dependencies</strong>
                <ul>
                  <li>
                    <details>
                      <summary style="list-style: none;">Step 2: Verify Partial Dependencies</summary>
                      <ul style="margin-top: 0px;">
                        <li>The table is in 2NF as all non-key attributes are fully functionally dependent on the composite primary key (<strong>tournament_name</strong> and <strong>year</strong>).</li>
                      </ul>
                    </details>
                  </li>
                </ul>
              </li>
              <li>
                <strong>3NF: Remove Transitive Dependencies</strong>
                <ul>
                  <li>
                    <details>
                      <summary style="list-style: none;">Step 3: Remove Transitive Dependencies</summary>
                      <ul style="margin-top: 0px;">
                        <li>The table is not in 3NF due to the transitive dependency between <strong>winner</strong> and <strong>winner_dob</strong>. To resolve this:</li>
                        <li>
                          <details>
                            <summary style="list-style: none;">Normalization Steps</summary>
                            <ul style="margin-top: 0px;">
                              <li><strong>Create a separate table for winners:</strong></li>
                              <li>
                                <table style="margin-top: 0.5rem;">
                                  <caption style="caption-side: top;">Winners Table</caption>
                                  <thead>
                                    <tr>
                                      <th>winner_id</th>
                                      <th>winner</th>
                                      <th>winner_dob</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td>1</td>
                                      <td>Maxwell House</td>
                                      <td>July 21, 1990</td>
                                    </tr>
                                    <tr>
                                      <td>2</td>
                                      <td>George Albertson</td>
                                      <td>May 1, 1987</td>
                                    </tr>
                                    <tr>
                                      <td>3</td>
                                      <td>Tiffany Masterson</td>
                                      <td>November 19, 1988</td>
                                    </tr>
                                    <tr>
                                      <td>4</td>
                                      <td>Steve Miller</td>
                                      <td>January 30, 1980</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </li>
                              <li><strong>Update the original table to use a foreign key:</strong></li>
                              <li>
                                <table style="margin-top: 0.5rem;">
                                  <caption style="caption-side: top;">Updated Annual Tournament Winners Table</caption>
                                  <thead>
                                    <tr>
                                      <th>tournament_name</th>
                                      <th>year</th>
                                      <th>winner</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td>St. John's Invitational</td>
                                      <td>2000</td>
                                      <td>Maxwell House</td>
                                    </tr>
                                    <tr>
                                      <td>Toronto Open</td>
                                      <td>2010</td>
                                      <td>George Albertson</td>
                                    </tr>
                                    <tr>
                                      <td>St. John's Invitational</td>
                                      <td>2011</td>
                                      <td>Tiffany Masterson</td>
                                    </tr>
                                    <tr>
                                      <td>Vancouver Memorial</td>
                                      <td>2003</td>
                                      <td>Steve Miller</td>
                                    </tr>
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
          </details>
        </li>
      </ul>
    </details>
  </li>
  <li>
    <details>
      <summary style="list-style: none;">
        <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 2: Student Courses</h2>
      </summary>
      <ul>
        <li>
          <strong>Original Table:</strong>
          <table>
            <caption style="caption-side: top;">Student Courses Table</caption>
            <thead>
              <tr>
                <th>student_id</th>
                <th>student_name</th>
                <th>courses</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>John Doe</td>
                <td>Math, Science, History</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Jane Smith</td>
                <td>Science, English</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Emily Johnson</td>
                <td>Math, History</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Michael Brown</td>
                <td>English, History</td>
              </tr>
            </tbody>
          </table>
        </li>
        <li>
          <details>
            <summary style="list-style: none;">Steps to Normalize</summary>
            <ul style="margin-top: 0px;">
              <li>
                <strong>1NF: Ensure Atomic Values</strong>
                <ul>
                  <li>
                    <details>
                      <summary style="list-style: none;">Step 1: Identify and Remove Non-Atomic Values</summary>
                      <ul style="margin-top: 0px;">
                        <li>The table is not in 1NF because the <strong>courses</strong> column contains a list of values. Each course should be in its own row.</li>
                        <li>
                          <strong>Normalized Table (1NF):</strong>
                          <table style="margin-top: 0.5rem;">
                            <caption style="caption-side: top;">Student Courses Table (1NF)</caption>
                            <thead>
                              <tr>
                                <th>student_id</th>
                                <th>student_name</th>
                                <th>course</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Math</td>
                              </tr>
                              <tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>Science</td>
                              </tr>
                              <tr>
                                <td>1</td>
                                <td>John Doe</td>
                                <td>History</td>
                              </tr>
                              <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>Science</td>
                              </tr>
                              <tr>
                                <td>2</td>
                                <td>Jane Smith</td>
                                <td>English</td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>Emily Johnson</td>
                                <td>Math</td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>Emily Johnson</td>
                                <td>History</td>
                              </tr>
                              <tr>
                                <td>4</td>
                                <td>Michael Brown</td>
                                <td>English</td>
                              </tr>
                              <tr>
                                <td>4</td>
                                <td>Michael Brown</td>
                                <td>History</td>
                              </tr>
                            </tbody>
                          </table>
                        </li>
                      </ul>
                    </details>
                  </li>
                </ul>
              </li>
              <li>
                <strong>2NF: Remove Partial Dependencies</strong>
                <ul>
                  <li>
                    <details>
                      <summary style="list-style: none;">Step 2: Identify and Remove Partial Dependencies</summary>
                      <ul style="margin-top: 0px;">
                        <li>The table is now in 1NF but not in 2NF. The <strong>student_name</strong> attribute is dependent only on <strong>student_id</strong> and not on the full composite key (<strong>student_id</strong>, <strong>course</strong>).</li>
                        <li>
                          <details>
                            <summary style="list-style: none;">Normalization Steps</summary>
                            <ul style="margin-top: 0px;">
                              <li><strong>Create a separate table for students:</strong></li>
                              <li>
                                <table style="margin-top: 0.5rem;">
                                  <caption style="caption-side: top;">Students Table</caption>
                                  <thead>
                                    <tr>
                                      <th>student_id</th>
                                      <th>student_name</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td>1</td>
                                      <td>John Doe</td>
                                    </tr>
                                    <tr>
                                      <td>2</td>
                                      <td>Jane Smith</td>
                                    </tr>
                                    <tr>
                                      <td>3</td>
                                      <td>Emily Johnson</td>
                                    </tr>
                                    <tr>
                                      <td>4</td>
                                      <td>Michael Brown</td>
                                    </tr>
                                  </tbody>
                                </table>
                              </li>
                              <li><strong>Update the courses table to use a foreign key:</strong></li>
                              <li>
                                <table style="margin-top: 0.5rem;">
                                  <caption style="caption-side: top;">Courses Table</caption>
                                  <thead>
                                    <tr>
                                      <th>student_id</th>
                                      <th>course</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      <td>1</td>
                                      <td>Math</td>
                                    </tr>
                                    <tr>
                                      <td>1</td>
                                      <td>Science</td>
                                    </tr>
                                    <tr>
                                      <td>1</td>
                                      <td>History</td>
                                    </tr>
                                    <tr>
                                      <td>2</td>
                                      <td>Science</td>
                                    </tr>
                                    <tr>
                                      <td>2</td>
                                      <td>English</td>
                                    </tr>
                                    <tr>
                                      <td>3</td>
                                      <td>Math</td>
                                    </tr>
                                    <tr>
                                      <td>3</td>
                                      <td>History</td>
                                    </tr>
                                    <tr>
                                      <td>4</td>
                                      <td>English</td>
                                    </tr>
                                    <tr>
                                      <td>4</td>
                                      <td>History</td>
                                    </tr>
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
                <strong>3NF: Remove Transitive Dependencies</strong>
                <ul>
                  <li>
                    <details>
                      <summary style="list-style: none;">Step 3: Remove Transitive Dependencies</summary>
                      <ul style="margin-top: 0px;">
                        <li>There are no transitive dependencies in the students and courses tables, so we are already in 3NF.</li>
                      </ul>
                    </details>
                  </li>
                </ul>
              </li>
            </ul>
          </details>
        </li>
      </ul>
    </details>
  </li>
  <li>
    <details>
      <summary style="list-style: none;">
        <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 3: Customer Orders Table</h2>
      </summary>
      <ul>
        <li>
          <strong>Original Table:</strong>
          <table>
            <caption style="caption-side: top;">Orders Table</caption>
            <thead>
              <tr>
                <th>Order_ID</th>
                <th>Customer_Name</th>
                <th>Customer_Address</th>
                <th>Order_Date</th>
                <th>Product</th>
                <th>Product_Price</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1001</td>
                <td>John Smith</td>
                <td>123 Elm St</td>
                <td>2024-01-15</td>
                <td>Laptop</td>
                <td>$1200</td>
              </tr>
              <tr>
                <td>1002</td>
                <td>Jane Doe</td>
                <td>456 Oak St</td>
                <td>2024-01-17</td>
                <td>Smartphone</td>
                <td>$800</td>
              </tr>
              <tr>
                <td>1003</td>
                <td>Emily Johnson</td>
                <td>789 Pine St</td>
                <td>2024-01-20</td>
                <td>Tablet</td>
                <td>$600</td>
              </tr>
              <tr>
                <td>1004</td>
                <td>Michael Brown</td>
                <td>101 Maple St</td>
                <td>2024-01-22</td>
                <td>Monitor</td>
                <td>$200</td>
              </tr>
            </tbody>
          </table>
        </li>
        <li>
          <strong>1NF: Ensure Atomic Values</strong>
          <ul>
            <li>
              <details>
                <summary style="list-style: none;">Step 1: Identify and Remove Non-Atomic Values</summary>
                <ul style="margin-top: 0px;">
                  <li>The table is already in 1NF as each cell contains only atomic values.</li>
                </ul>
              </details>
            </li>
          </ul>
        </li>
        <li>
          <strong>2NF: Remove Partial Dependencies</strong>
          <ul>
            <li>
              <details>
                <summary style="list-style: none;">Step 2: Verify and Remove Partial Dependencies</summary>
                <ul style="margin-top: 0px;">
                  <li>The table is in 2NF because all non-key attributes are fully dependent on the primary key, <strong>Order_ID</strong>.</li>
                </ul>
              </details>
            </li>
          </ul>
        </li>
        <li>
          <strong>3NF: Remove Transitive Dependencies</strong>
          <ul>
            <li>
              <details>
                <summary style="list-style: none;">Step 3: Remove Transitive Dependencies</summary>
                <ul style="margin-top: 0px;">
                  <li><strong>Product_Price</strong> depends on <strong>Product</strong>, not directly on <strong>Order_ID</strong>. As well, <strong>Customer_Address</strong> depends on <strong>Customer_Name</strong>. Thus, there are transitive dependencies.</li>
                  <li>
                    <details>
                      <summary style="list-style: none;">Normalization Steps</summary>
                      <ul style="margin-top: 0px;">
                        <li><strong>Create a separate table for Customers:</strong></li>
                        <li>
                          <table style="margin-top: 0.5rem;">
                            <caption style="caption-side: top;">Customers Table</caption>
                            <thead>
                              <tr>
                                <th>Customer_ID</th>
                                <th>Customer_Name</th>
                                <th>Customer_Address</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1001</td>
                                <td>John Smith</td>
                                <td>123 Elm St</td>
                              </tr>
                              <tr>
                                <td>1002</td>
                                <td>Jane Doe</td>
                                <td>456 Oak St</td>
                              </tr>
                              <tr>
                                <td>1003</td>
                                <td>Emily Johnson</td>
                                <td>789 Pine St</td>
                              </tr>
                              <tr>
                                <td>1004</td>
                                <td>Michael Brown</td>
                                <td>101 Maple St</td>
                              </tr>
                            </tbody>
                          </table>
                        </li>
                        <li><strong>Create a separate table for Products:</strong></li>
                        <li>
                          <table style="margin-top: 0.5rem;">
                            <caption style="caption-side: top;">Products Table</caption>
                            <thead>
                              <tr>
                                <th>Product_ID</th>
                                <th>Product</th>
                                <th>Product_Price</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>2001</td>
                                <td>Laptop</td>
                                <td>$1200</td>
                              </tr>
                              <tr>
                                <td>2002</td>
                                <td>Smartphone</td>
                                <td>$800</td>
                              </tr>
                              <tr>
                                <td>2003</td>
                                <td>Tablet</td>
                                <td>$600</td>
                              </tr>
                              <tr>
                                <td>2004</td>
                                <td>Monitor</td>
                                <td>$200</td>
                              </tr>
                            </tbody>
                          </table>
                        </li>
                        <li><strong>Update the Orders table to use foreign keys:</strong></li>
                        <li>
                          <table style="margin-top: 0.5rem;">
                            <caption style="caption-side: top;">Orders Table (3NF)</caption>
                            <thead>
                              <tr>
                                <th>Order_ID</th>
                                <th>Order_Date</th>
                                <th>Customer_ID</th>
                                <th>Product_ID</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1001</td>
                                <td>2024-01-15</td>
                                <td>1001</td>
                                <td>2001</td>
                              </tr>
                              <tr>
                                <td>1002</td>
                                <td>2024-01-17</td>
                                <td>1002</td>
                                <td>2002</td>
                              </tr>
                              <tr>
                                <td>1003</td>
                                <td>2024-01-20</td>
                                <td>1003</td>
                                <td>2003</td>
                              </tr>
                              <tr>
                                <td>1004</td>
                                <td>2024-01-22</td>
                                <td>1004</td>
                                <td>2004</td>
                              </tr>
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
    </details>
  </li>
  <li>
    <details>
      <summary style="list-style: none;">
        <h2 style="display: inline-flex; margin-top: 10px; padding-left: 5px;">Example 4: Library Book Loans (Normalization)</h2>
      </summary>
      <ul>
        <li>
          <strong>Original Table (Not in 1NF):</strong>
          <table>
            <caption style="caption-side: top;">Library Book Loans Table</caption>
            <thead>
              <tr>
                <th>Loan_ID</th>
                <th>Borrower_Name</th>
                <th>Books_Borrowed</th>
                <th>Loan_Date</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>2001</td>
                <td>Emily Clark</td>
                <td>"Introduction to Programming", "Data Structures"</td>
                <td>2024-02-01</td>
              </tr>
              <tr>
                <td>2002</td>
                <td>John Doe</td>
                <td>"Advanced Algorithms", "Computer Networks"</td>
                <td>2024-02-05</td>
              </tr>
              <tr>
                <td>2003</td>
                <td>Sophie Adams</td>
                <td>"Database Systems", "Operating Systems"</td>
                <td>2024-02-10</td>
              </tr>
              <tr>
                <td>2004</td>
                <td>Michael Lee</td>
                <td>"Web Development", "Software Engineering"</td>
                <td>2024-02-15</td>
              </tr>
            </tbody>
          </table>
        </li>
        <li>
          <strong>1NF: Ensure Atomic Values</strong>
          <ul>
            <li>
              <details>
                <summary style="list-style: none;">Step 1: Identify and Remove Non-Atomic Values</summary>
                <ul style="margin-top: 0px;">
                  <li>The table is not in 1NF because the <strong>Books_Borrowed</strong> column contains multiple values in a single cell.</li>
                  <li>
                    <details>
                      <summary style="list-style: none;">Normalization Steps</summary>
                      <ul style="margin-top: 0px;">
                        <li><strong>Normalize to 1NF:</strong> Separate each book into its own row.</li>
                        <li>
                          <table style="margin-top: 0.5rem;">
                            <caption style="caption-side: top;">Library Book Loans Table (1NF)</caption>
                            <thead>
                              <tr>
                                <th>Loan_ID</th>
                                <th>Borrower_Name</th>
                                <th>Book_Title</th>
                                <th>Loan_Date</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>2001</td>
                                <td>Emily Clark</td>
                                <td>Introduction to Programming</td>
                                <td>2024-02-01</td>
                              </tr>
                              <tr>
                                <td>2001</td>
                                <td>Emily Clark</td>
                                <td>Data Structures</td>
                                <td>2024-02-01</td>
                              </tr>
                              <tr>
                                <td>2002</td>
                                <td>John Doe</td>
                                <td>Advanced Algorithms</td>
                                <td>2024-02-05</td>
                              </tr>
                              <tr>
                                <td>2002</td>
                                <td>John Doe</td>
                                <td>Computer Networks</td>
                                <td>2024-02-05</td>
                              </tr>
                              <tr>
                                <td>2003</td>
                                <td>Sophie Adams</td>
                                <td>Database Systems</td>
                                <td>2024-02-10</td>
                              </tr>
                              <tr>
                                <td>2003</td>
                                <td>Sophie Adams</td>
                                <td>Operating Systems</td>
                                <td>2024-02-10</td>
                              </tr>
                              <tr>
                                <td>2004</td>
                                <td>Michael Lee</td>
                                <td>Web Development</td>
                                <td>2024-02-15</td>
                              </tr>
                              <tr>
                                <td>2004</td>
                                <td>Michael Lee</td>
                                <td>Software Engineering</td>
                                <td>2024-02-15</td>
                              </tr>
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
          <strong>2NF: Remove Partial Dependencies</strong>
          <ul>
            <li>
              <details>
                <summary style="list-style: none;">Step 2: Verify and Remove Partial Dependencies</summary>
                <ul style="margin-top: 0px;">
                  <li>The table is not in 2NF because the <strong>Borrower_Name</strong> is dependent only on part of the composite key (<strong>Loan_ID</strong>) and not on the entire composite key (<strong>Loan_ID, Book_Title</strong>).</li>
                  <li>
                    <details>
                      <summary style="list-style: none;">Normalization Steps</summary>
                      <ul style="margin-top: 0px;">
                        <li><strong>Create a separate table for Borrowers:</strong></li>
                        <li>
                          <table style="margin-top: 0.5rem;">
                            <caption style="caption-side: top;">Borrowers Table</caption>
                            <thead>
                              <tr>
                                <th>Borrower_ID</th>
                                <th>Borrower_Name</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>3001</td>
                                <td>Emily Clark</td>
                              </tr>
                              <tr>
                                <td>3002</td>
                                <td>John Doe</td>
                              </tr>
                              <tr>
                                <td>3003</td>
                                <td>Sophie Adams</td>
                              </tr>
                              <tr>
                                <td>3004</td>
                                <td>Michael Lee</td>
                              </tr>
                            </tbody>
                          </table>
                        </li>
                        <li><strong>Update the Loans table to use foreign keys:</strong></li>
                        <li>
                          <table style="margin-top: 0.5rem;">
                            <caption style="caption-side: top;">Loans Table (2NF)</caption>
                            <thead>
                              <tr>
                                <th>Loan_ID</th>
                                <th>Borrower_ID</th>
                                <th>Book_Title</th>
                                <th>Loan_Date</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>2001</td>
                                <td>3001</td>
                                <td>Introduction to Programming</td>
                                <td>2024-02-01</td>
                              </tr>
                              <tr>
                                <td>2001</td>
                                <td>3001</td>
                                <td>Data Structures</td>
                                <td>2024-02-01</td>
                              </tr>
                              <tr>
                                <td>2002</td>
                                <td>3002</td>
                                <td>Advanced Algorithms</td>
                                <td>2024-02-05</td>
                              </tr>
                              <tr>
                                <td>2002</td>
                                <td>3002</td>
                                <td>Computer Networks</td>
                                <td>2024-02-05</td>
                              </tr>
                              <tr>
                                <td>2003</td>
                                <td>3003</td>
                                <td>Database Systems</td>
                                <td>2024-02-10</td>
                              </tr>
                              <tr>
                                <td>2003</td>
                                <td>3003</td>
                                <td>Operating Systems</td>
                                <td>2024-02-10</td>
                              </tr>
                              <tr>
                                <td>2004</td>
                                <td>3004</td>
                                <td>Web Development</td>
                                <td>2024-02-15</td>
                              </tr>
                              <tr>
                                <td>2004</td>
                                <td>3004</td>
                                <td>Software Engineering</td>
                                <td>2024-02-15</td>
                              </tr>
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
          <strong>3NF: Remove Transitive Dependencies</strong>
          <ul>
            <li>
              <details>
                <summary style="list-style: none;">Step 3: Remove Transitive Dependencies</summary>
                <ul style="margin-top: 0px;">
                  <li>There are no transitive dependencies in the borrowers or the loans tables, so we are already in 3NF.</li>
                </ul>
              </details>
            </li>
          </ul>
        </li>
      </ul>
    </details>
  </li>
</ul>