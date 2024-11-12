---
title: 5.2. Pet Adoption API
---

## Creating the Pet Adoption API
- This example demonstrates building a REST API for managing pets available for adoption.
- A base repository can be found [here](https://github.com/menglishca/rest-api-examples/tree/main)

### Identify Resources in the Pet Adoption System

1. **Pets** (`/pets`)
   - Each pet available for adoption, identified by a unique ID.
   - Attributes:
     - `id`
     - `name`
     - `species`
     - `age`
     - `adopted` (boolean to indicate if the pet is adopted)

2. **Adopters** (`/adopters`)
   - People interested in adopting pets, identified by a unique ID.
   - Attributes:
     - `id`
     - `name`
     - `email`
     - `adoptedPets` (list of pets adopted by this adopter)

### Operations on Resources

1. **Pets Resource (`/pets`)**
   - `GET /pets`: Retrieve all pets currently in the adoption system.
     - Response: List of all pets, including details like name, species, age, and adoption status.
   - `GET /pets/:id`: Retrieve details about a specific pet by ID.
   - `POST /pets`: Add a new pet to the adoption list.
     - Request Body: JSON with pet details (name, species, age).
   - `PUT /pets/:id/adopt`: Mark a pet as adopted by updating its status.
     - Response: Updates the `adopted` status of the pet to true.
   - `DELETE /pets/:id`: Remove a pet from the adoption list by ID.
2. **Adopters Resource (`/adopters`)**
   - `GET /adopters`: Retrieve all registered adopters in the system.
   - `GET /adopters/:id`: Retrieve details of a specific adopter by ID.
   - `POST /adopters`: Register a new adopter in the system.
     - Request Body: JSON with adopter details (name, email).
   - `PUT /adopters/:id/adopt/:petId`: Assign a pet to an adopter’s record, indicating an adoption.
     - Response: Adds the pet ID to the adopter's `adoptedPets` list if the pet is available for adoption.
     Certainly! Here’s how we can add an endpoint to retrieve all pets adopted by a specific adopter. This will allow students to see how to handle related resources within the API.
- `GET /adopters/:id/pets`:
   - Retrieves all pets adopted by a specific adopter, using the adopter’s ID.

#### Example Code
```javascript
// GET /adopters/:id/pets
// Retrieves all pets adopted by a specific adopter based on the adopter's ID
app.get('/adopters/:id/pets', (request, response) => {
    const adopterId = parseInt(request.params.id);
    const adopter = adopters.find(a => a.id === adopterId);
    
    if (!adopter) {
        return response.status(404).json({ message: 'Adopter not found' });
    }

    const adoptedPets = pets.filter(pet => adopter.adoptedPets.includes(pet.id));
    response.json(adoptedPets);
});
```

#### Sample Usage
- **Request**: `GET /adopters/1/pets`
- **Response**:
  ```json
  [
    { "id": 2, "name": "Mittens", "species": "Cat", "age": 2, "adopted": true },
    { "id": 4, "name": "Bubbles", "species": "Fish", "age": 1, "adopted": true }
  ]
  ```

### Teaching Points
- **Relationship Management**: Shows how to query data based on related resources, linking adopters to pets.
- **Error Handling**: Example of handling cases where the adopter ID does not exist.
- **Filtering**: Demonstrates filtering an array based on relationships, showing only pets that match the adopter’s `adoptedPets` list.

This additional endpoint provides another useful layer for managing relationships within the API!

### Example Endpoints
1. **`GET /pets`**:
   - Retrieves the entire list of pets available for adoption.
   - Sample Response:
     ```json
     [
       { "id": 1, "name": "Buddy", "species": "Dog", "age": 3, "adopted": false },
       { "id": 2, "name": "Mittens", "species": "Cat", "age": 2, "adopted": true }
     ]
     ```
2. **`POST /pets`**:
   - Adds a new pet to the adoption list.
   - Request:
     ```json
     { "name": "Charlie", "species": "Dog", "age": 4 }
     ```
3. **`PUT /pets/:id/adopt`**:
   - Marks a specific pet as adopted.
   - Example: `PUT /pets/1/adopt` (marks the pet with ID 1 as adopted).
4. **`PUT /adopters/:id/adopt/:petId`**:
   - An adopter adopts a pet, linking the pet to the adopter’s record.
   - Example: `PUT /adopters/1/adopt/1` (adopter with ID 1 adopts the pet with ID 1).
