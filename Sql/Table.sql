create database demo;
Use demo;
CREATE TABLE category (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id BIGINT,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
);
INSERT INTO category (name) VALUES
('Electronics'),
('Clothing'),
('Books');
INSERT INTO product (name, price, category_id) VALUES
('Laptop', 799.99, 1),  -- 'Electronics' category
('T-Shirt', 15.99, 2),  -- 'Clothing' category
('The Great Gatsby', 10.99, 3);  -- 'Books' category
SELECT * FROM category;
Select * from product;


INSERT INTO category (name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Furniture'),
('Toys'),
('Sports'),
('Food'),
('Beauty'),
('Health'),
('Automotive'),
('Music'),
('Movies'),
('Games'),
('Jewelry'),
('Home Improvement'),
('Art'),
('Garden');
INSERT INTO product (name, price, category_id) VALUES
('Laptop', 799.99, 1),        -- 'Electronics' category
('T-Shirt', 15.99, 2),        -- 'Clothing' category
('The Great Gatsby', 10.99, 3),  -- 'Books' category
('Sofa', 499.99, 4),         -- 'Furniture' category
('Action Figure', 19.99, 5), -- 'Toys' category
('Basketball', 25.99, 6),    -- 'Sports' category
('Pizza', 12.99, 7),         -- 'Food' category
('Lipstick', 10.99, 8),      -- 'Beauty' category
('Vitamins', 29.99, 9),      -- 'Health' category
('Car Tire', 99.99, 10),     -- 'Automotive' category
('Guitar', 150.99, 11),      -- 'Music' category
('DVD Player', 59.99, 12),   -- 'Movies' category
('Board Game', 34.99, 13),   -- 'Games' category
('Necklace', 120.99, 14),    -- 'Jewelry' category
('Drill Machine', 89.99, 15),-- 'Home Improvement' category
('Painting', 199.99, 16),    -- 'Art' category
('Garden Tools', 40.99, 17); -- 'Garden' category



