# Inventory Management System SQL Project

This project is a simple Inventory Management System developed using SQL. The system is designed to manage product inventory, track sales, and generate basic reports.

## Features

- **Product Management**: Add, update, and delete product information.
- **Category Management**: Organize products into categories for better management.
- **Sales Tracking**: Record and monitor sales transactions.
- **Reporting**: Generate basic reports on inventory status and sales performance.

## Database Schema

The system utilizes the following tables:

1. **Products**: Contains details about each product, including:
   - `ProductID`: Unique identifier for the product.
   - `ProductName`: Name of the product.
   - `CategoryID`: Identifier linking to the product's category.
   - `UnitPrice`: Price per unit of the product.
   - `UnitsInStock`: Quantity of the product available in inventory.

2. **Categories**: Holds information about product categories, including:
   - `CategoryID`: Unique identifier for the category.
   - `CategoryName`: Name of the category.

3. **Sales**: Records sales transactions, including:
   - `SaleID`: Unique identifier for the sale.
   - `ProductID`: Identifier linking to the sold product.
   - `SaleDate`: Date of the sale.
   - `QuantitySold`: Number of units sold.

## Data Integrity

To maintain data integrity, the following constraints are implemented:

- **Foreign Key Constraints**: Ensure that each product's `CategoryID` corresponds to a valid entry in the `Categories` table, and each sale's `ProductID` corresponds to a valid product in the `Products` table.

## Getting Started

To set up the Inventory Management System:

1. **Database Setup**:
   - Create a database named `InventoryDB`.
   - Execute the SQL scripts provided in the `schema.sql` file to create the necessary tables.
   - Populate the tables with sample data using the `data.sql` file.

2. **Basic Operations**:
   - Use the provided SQL queries to perform operations such as adding, updating, and deleting products.
   - Record sales transactions using the appropriate SQL insert statements.

3. **Reporting**:
   - Utilize the SQL scripts in the `reports.sql` file to generate reports on inventory levels and sales performance.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

*Note: This project is a simple implementation intended for educational purposes and may not encompass all features of a comprehensive inventory management system.*

