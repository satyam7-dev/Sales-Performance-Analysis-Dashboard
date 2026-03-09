-- ==========================================
-- Sales Performance Analysis Database Setup
-- ==========================================

-- 1. Create Products Table
CREATE TABLE IF NOT EXISTS Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    cost DECIMAL(10, 2)
);

-- 2. Create Customers Table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    region VARCHAR(50)
);

-- 3. Create Orders Table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    unit_price DECIMAL(10, 2),
    discount DECIMAL(3, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- ==========================================
-- 4. Insert Sample Data
-- ==========================================

-- Products Data
INSERT INTO Products (product_id, product_name, category, sub_category, cost) VALUES
(1, 'Laptop Pro', 'Electronics', 'Computers', 800.00),
(2, 'Office Chair', 'Furniture', 'Chairs', 150.00),
(3, 'Wireless Mouse', 'Electronics', 'Accessories', 25.00),
(4, 'Standing Desk', 'Furniture', 'Tables', 400.00),
(5, 'Monitor 27"', 'Electronics', 'Monitors', 300.00),
(6, 'Notebook Pack', 'Office Supplies', 'Paper', 10.00),
(7, 'Desk Lamp', 'Furniture', 'Lighting', 45.00);

-- Customers Data
INSERT INTO Customers (customer_id, customer_name, segment, region) VALUES
(1, 'Alice Smith', 'Consumer', 'North'),
(2, 'Bob Corp', 'Corporate', 'South'),
(3, 'Charlie LLC', 'Corporate', 'East'),
(4, 'Diana Jones', 'Consumer', 'West'),
(5, 'Eve Tech', 'Consumer', 'North'),
(6, 'Frank Inc', 'Corporate', 'South'),
(7, 'Grace Home', 'Consumer', 'East');

-- Orders Data (Expanded for better visualization)
INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity, unit_price, discount) VALUES
(101, 1, 1, '2023-01-15', 2, 1200.00, 0.05),
(102, 2, 2, '2023-01-20', 5, 200.00, 0.10),
(103, 3, 4, '2023-02-10', 1, 500.00, 0.00),
(104, 4, 3, '2023-02-15', 10, 30.00, 0.00),
(105, 5, 5, '2023-03-01', 3, 350.00, 0.05),
(106, 1, 3, '2023-03-10', 5, 30.00, 0.00),
(107, 2, 1, '2023-04-05', 1, 1200.00, 0.10),
(108, 3, 2, '2023-04-12', 2, 200.00, 0.05),
(109, 4, 4, '2023-05-01', 1, 500.00, 0.00),
(110, 5, 5, '2023-05-15', 2, 350.00, 0.00),
(111, 6, 6, '2023-06-01', 20, 15.00, 0.00),
(112, 7, 7, '2023-06-15', 4, 50.00, 0.10),
(113, 1, 2, '2023-07-01', 1, 200.00, 0.00),
(114, 2, 5, '2023-07-10', 2, 350.00, 0.05),
(115, 3, 1, '2023-08-05', 1, 1200.00, 0.00);
