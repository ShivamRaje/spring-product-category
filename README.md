# Category-Product API

This is a Spring Boot-based API that manages categories and products. It demonstrates basic CRUD operations with server-side pagination, one-to-many relationships, and data retrieval with category and product associations.

## Features

- **Category CRUD Operations**:
  - Create, Read, Update, Delete categories..
  - Server-side pagination to retrieve categories.

- **Product CRUD Operations**:
  - Create, Read, Update, Delete products.
  - Each product is linked to a category..

- **Pagination**:
  - Supports pagination for both categories and products.

## Technologies Used

- **Spring Boot**: Backend framework
- **Spring Data JPA**: For database interaction
- **MySQL**: Relational database
- **Postman**: For testing API endpoints

## API Endpoints

### Categories

- **GET** `/api/categories?page=2` - Fetch all categories with pagination.
- **POST** `/api/categories` - Create a new category.
- **GET** `/api/categories/{id}` - Get category details by ID.
- **PUT** `/api/categories/{id}` - Update category details by ID.
- **DELETE** `/api/categories/{id}` - Delete category by ID.

### Products

- **GET** `/api/products?page=2` - Fetch all products with pagination.
- **POST** `/api/products` - Create a new product.
- **GET** `/api/products/{id}` - Get product details by ID, including category.
- **PUT** `/api/products/{id}` - Update product details by ID.
- **DELETE** `/api/products/{id}` - Delete product by ID.

## Getting Started

1. Clone this repository.
2. Set up a MySQL database with proper credentials in the `application.properties` file.
3. Run the Spring Boot application using your preferred IDE or the command line (`mvn spring-boot:run`).
4. Use Postman to interact with the API endpoints.

## Contribution

Feel free to fork this project and contribute by creating pull requests.
