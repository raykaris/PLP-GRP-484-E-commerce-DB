-- Create roles
CREATE ROLE ecommerce_admin;
CREATE ROLE ecommerce_staff;
CREATE ROLE ecommerce_viewer;

-- Grant privileges to roles
GRANT ALL PRIVILEGES ON GRP-484-ecommerce.* TO ecommerce_admin;
GRANT SELECT, INSERT, UPDATE ON GRP-484-ecommerce.* TO ecommerce_staff;
GRANT SELECT ON GRP-484-ecommerce.* TO ecommerce_viewer;

-- Create users
CREATE USER 'celestine'@'localhost' IDENTIFIED BY 'celestine123';
CREATE USER 'kariuki'@'localhost' IDENTIFIED BY 'kariuki456';
CREATE User 'martin'@'localhost' IDENTIFIED BY 'martin789';

-- Assign roles to users
GRANT ecommerce_admin TO 'celestine'@'localhost';
GRANT ecommerce_viewer TO 'kariuki'@'localhost';
GRANT ecommerce_staff TO 'martin'@'localhost';

-- Set default roles
SET DEFAULT ROLE ecommerce_admin TO 'celestine'@'localhost';
SET DEFAULT ROLE ecommerce_viewer TO 'kariuki'@'localhost';
SET DEFAULT ROLE ecommerce_staff TO 'martin'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;