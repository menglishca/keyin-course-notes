---
title: 2. Data Modelling in NoSQL
---

Data modeling in NoSQL differs significantly from relational databases. Instead of predefined schemas with rows and tables, NoSQL databases use models designed to fit their underlying data storage mechanism. Let's compare the four main types of NoSQL data models and then focus on MongoDB's document model.

## Key-Value Model
### Structure
- Simple key-value pairs.
  - Key: Unique identifier.
  - Value: Any kind of data (string, JSON, binary, etc.).
### Strengths
- High performance for direct lookups.
- Simple and scalable for basic use cases.
### Weaknesses
- No querying capabilities beyond key retrieval.
- Poor fit for complex or relational data.
### Example
- Imagine you are building a system to store user profiles. In a key-value store, the data might look like this:
  ```json
    "user123": {
      "name": "John Doe",
      "email": "john@example.com",
      "age": 30
    },
    "user124": {
      "name": "Jane Smith",
      "email": "jane@example.com",
      "age": 25
    }
    ```
- Each user is identified by a unique key (`user123`, `user124`), and the value contains the user’s profile information.
- **Scenario: Query by Value**
  - Suppose you want to find all users aged 25. In a key-value store:
    - You **cannot query directly** based on values (e.g., `age: 25`).
     - You would need to iterate over all keys and manually filter the values, which is computationally expensive and inefficient, especially with large datasets.
  - **Pseudocode for filtering in an application:**
    ```javascript
    for (const key in keyValueStore) {
        const user = keyValueStore[key];
        if (user.age === 25) {
            console.log(user);
        }
    }
    ```
- Contrast this with a relational or document-based model, where you could write a simple query like:
  ```sql
  SELECT * FROM users WHERE age = 25;
  ```
- Or in MongoDB:
  ```javascript
  db.users.find({ age: 25 });
  ```


## Column-Family Model
### Structure
- Data is stored in columns grouped into families, similar to a table but more flexible.
- Each row can have different columns.
### Example
- Imagine you are building an e-commerce application to store product catalog data. In a column-family model, the data might look like this:

| Row Key  | Column Family: Details          | Column Family: Inventory       |
|----------|---------------------------------|--------------------------------|
| `p123`   | `name: Laptop`, `brand: Dell`   | `stock: 15`, `warehouse: NY`   |
| `p124`   | `name: Phone`, `brand: Samsung` | `stock: 30`, `warehouse: CA`   |
| `p125`   | `name: TV`                      | `stock: 10`, `warehouse: TX`   |

  - Each **row key** (e.g., `p123`) uniquely identifies a product.
  - **Column families** group related data:
    - `Details` stores product metadata like name and brand.
    - `Inventory` stores stock and warehouse information.
- The column-family model allows you to efficiently fetch specific subsets of data. However, because each row can have a different set of columns, querying for columns across rows can result in inconsistent data structures.
- If you query the `Details` column family for all products:

| Row Key  | Column Family: Details                  |
|----------|-----------------------------------------|
| `p123`   | `name: Laptop`, `brand: Dell`           |
| `p124`   | `name: Phone`, `brand: Samsung`         |
| `p125`   | `name: TV` (no brand specified)         |

- Query:
  ```sql
  SELECT * FROM Details;
  ```
- Result:
| Row Key  | Name      | Brand    |
|----------|-----------|----------|
| `p123`   | Laptop    | Dell     |
| `p124`   | Phone     | Samsung  |
| `p125`   | TV        | NULL     |

#### **Implications of Varying Columns**

1. **Strength: Flexibility**
   - The model can handle missing fields (`NULL`) without requiring schema updates. For instance, `p125` does not have a brand, but the system stores the data seamlessly.

2. **Weakness: Inconsistent Data Structures**
   - When column data varies between rows, applications need to handle missing data explicitly. If you assume all rows have the `brand` column, you might encounter errors or unexpected results.

   Example issue:
   - Filtering products by brand (e.g., `WHERE brand = 'Samsung'`) will skip rows without a `brand` column, potentially leading to incomplete results unless special care is taken in the query logic.

3. **Weakness: Schema Design Complexity**  
   - The developer must carefully design column families and partition keys to avoid performance issues.
   - Bad design can lead to hotspots (e.g., all requests for `warehouse: NY` hitting the same node).

## Document Model
- In a document database, each product can be stored as a **JSON-like document**. 
- Each document can store a product's data, including variations, as a single entity:
  ```json
  [
    {
        "productId": "p123",
        "name": "Laptop",
        "brand": "Dell",
        "price": 1200,
        "specs": {
        "processor": "Intel i7",
        "RAM": "16GB",
        "storage": "512GB SSD"
        },
        "categories": ["Electronics", "Computers"]
    },
    {
        "productId": "p124",
        "name": "Smartphone",
        "brand": "Samsung",
        "price": 800,
        "specs": {
        "processor": "Exynos 2100",
        "RAM": "8GB",
        "storage": "128GB"
        },
        "categories": ["Electronics", "Mobile"]
    }
  ]
  ```
### Strengths:
  1. **Schema Flexibility**: Each document can include different fields as needed, such as varying specifications for different product types.
  2. **Nested Structures**: Related information is stored within the same document (e.g., specifications), reducing the need for joins.
  3. **Self-Contained Data**: Each document can be retrieved independently, making reads fast and efficient.

### Weaknesses
- If products are added without proper validation, documents may lack consistency:
  ```json
  [
    {
      "productId": "p125",
      "name": "TV",
      "price": 1500
    },
    {
      "productId": "p126",
      "name": "Gaming Console",
      "brand": "Sony",
      "specs": {
        "processor": "AMD Ryzen",
        "RAM": "16GB"
      },
      "categories": ["Electronics", "Gaming"]
    }
  ]
  ```

1. **Lack of Enforced Schema**: `p125` is missing `brand` and `specs` fields. This inconsistency could complicate queries expecting complete product data.
2. **Redundant Data**: Repeated fields (like `categories`) across documents can lead to higher storage costs.
3. **Querying Complexity**: Queries for nested data, like `specs.processor`, may require complex filtering.

### Trade-Off
- **Strength in Simplicity**: Documents make it easy to represent real-world entities with related attributes in one place, which is great for applications like catalogs.
- **Weakness in Control**: Without a well-defined schema or validation, data quality and structure can degrade, requiring additional application logic to handle inconsistencies. 