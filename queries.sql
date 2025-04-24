-- Example Queries

-- 1. Get all products with their brand and category
SELECT 
    p.product_id, p.name AS product_name, 
    b.brand_name, 
    pc.category_name, 
    p.base_price
FROM product p
JOIN brand b ON p.brand_id = b.brand_id
JOIN product_category pc ON p.category_id = pc.category_id;

-- 2. Get product images for a specific product
SELECT image_url 
FROM product_image 
WHERE product_id = 1;

-- 3. Get all available variations for a product
SELECT 
    pv.variation_id, c.color_name, so.size_name 
FROM product_variation pv
JOIN color c ON pv.color_id = c.color_id
JOIN size_option so ON pv.size_option_id = so.size_option_id
WHERE pv.product_id = 1;

-- 4. Get all product items with SKU and stock
SELECT 
    pi.SKU, pi.price, pi.stock_quantity, 
    c.color_name, so.size_name 
FROM product_item pi
JOIN product_variation pv ON pi.variation_id = pv.variation_id
JOIN color c ON pv.color_id = c.color_id
JOIN size_option so ON pv.size_option_id = so.size_option_id;