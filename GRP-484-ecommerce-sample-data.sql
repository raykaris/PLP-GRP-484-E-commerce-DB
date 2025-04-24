
-- Seed Data

-- Brands
INSERT INTO brand (brand_name) VALUES ('Nike'), ('Apple'), ('Samsung');

-- Product Categories
INSERT INTO product_category (category_name) VALUES ('Clothing'), ('Electronics');

-- Colors
INSERT INTO color (color_name, hex_code) VALUES ('Red', '#FF0000'), ('Blue', '#0000FF');

-- Size Categories
INSERT INTO size_category (category_name) VALUES ('Clothing Sizes'), ('Shoe Sizes');

-- Size Options
INSERT INTO size_option (size_name, size_category_id) VALUES 
('S', 1), ('M', 1), ('L', 1),
('42', 2), ('43', 2);

-- Products
INSERT INTO product (name, brand_id, category_id, base_price) VALUES 
('Running Shoes', 1, 1, 59.99),
('Smartphone X', 2, 2, 799.99);

-- Product Variations
INSERT INTO product_variation (product_id, color_id, size_option_id) VALUES
(1, 1, 4),  -- Running Shoes, Red, size 42
(1, 2, 5);  -- Running Shoes, Blue, size 43

-- Product Items
INSERT INTO product_item (product_id, variation_id, price, stock_quantity, SKU) VALUES
(1, 1, 59.99, 10, 'RS-RED-42'),
(1, 2, 59.99, 15, 'RS-BLUE-43');

-- Product Images
INSERT INTO product_image (product_id, image_url) VALUES
(1, 'https://example.com/images/running-shoes-red.jpg'),
(1, 'https://example.com/images/running-shoes-blue.jpg');

-- Attribute Categories
INSERT INTO attribute_category (category_name) VALUES ('Physical'), ('Technical');

-- Attribute Types
INSERT INTO attribute_type (type_name) VALUES ('text'), ('number'), ('boolean');

-- Product Attributes
INSERT INTO product_attribute (product_id, attribute_type_id, attribute_category_id, attribute_name, attribute_value) VALUES
(1, 1, 1, 'Material', 'Synthetic'),
(2, 2, 2, 'Battery Life', '20');
