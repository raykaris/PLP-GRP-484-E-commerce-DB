# 🛒 GRP-484 E-commerce Database Schema

This project contains the database schema and sample data for an e-commerce platform. The schema is designed to handle various aspects of an e-commerce system, including products, brands, categories, variations, inventory, and attributes.

## 📂 Project Structure

- **`GRP-484-ecommerce.sql`**: Contains the SQL script to create the database and its tables.
- **`GRP-484-ecommerce-sample-data.sql`**: Includes sample data to populate the database for testing and development purposes.
- **`queries.sql`**: Provides example SQL queries to interact with the database.
- **`dbdiagram-insert-data.txt`**: A DBML representation of the database schema for visualization purposes.
- **`GRP-484-ecommerce-ERD.png`**: An Entity-Relationship Diagram (ERD) of the database schema.

## 🛠️ Features

- **Products**: Manage product details, including variations, pricing, and inventory.
- **Brands and Categories**: Organize products by brand and category.
- **Product Variations**: Support for color and size variations.
- **Inventory Management**: Track stock quantities and SKUs for product items.
- **Attributes**: Define custom attributes for products, such as material or technical specifications.
- **Images**: Associate multiple images with products.

## 🔄 Relationships

- A product belongs to a brand and product_category.

- A product_variation is linked to product, color, and size_option.

- A product_item references a specific product and its variation.

- A size_option belongs to a size_category.

- A product_image is linked to a product.

- product_attribute links to a product, attribute_type, and attribute_category.


## 🚀 Getting Started

1. **Create the Database**:
   Run the SQL script in `GRP-484-ecommerce.sql` to create the database and its tables.

   ```bash
   mysql -u <username> -p GRP-484-ecommerce < GRP-484-ecommerce.sql

2. **Load sample data**:

    ```bash
    mysql -u <username> -p GRP-484-ecommerce < GRP-484-ecommerce-sample-data.sql

3. **Load Queries**:

    ```bash
    mysql -u <username> -p GRP-484-ecommerce < queries.sql

## Contributors

1. [Ryan](https://github.com/raykaris/)