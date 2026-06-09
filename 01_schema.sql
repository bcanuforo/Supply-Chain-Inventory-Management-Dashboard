-- 01_schema.sql
-- Supply Chain & Inventory Management Database Schema

CREATE DATABASE IF NOT EXISTS supply_chain_db;
USE supply_chain_db;

-- Suppliers Table
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(100),
    phone VARCHAR(20),
    location VARCHAR(100),
    reliability_score DECIMAL(3,2) DEFAULT 5.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    sku VARCHAR(50) UNIQUE NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    unit_price DECIMAL(10,2) NOT NULL,
    reorder_point INT DEFAULT 50,
    max_stock INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Warehouses Table
CREATE TABLE Warehouses (
    warehouse_id INT PRIMARY KEY AUTO_INCREMENT,
    warehouse_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    capacity INT
);

-- Inventory Table
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    warehouse_id INT,
    quantity INT DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);

-- Purchase Orders
CREATE TABLE Purchase_Orders (
    po_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_id INT,
    product_id INT,
    quantity INT NOT NULL,
    order_date DATE,
    expected_delivery DATE,
    status ENUM('Pending', 'Received', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Sales Orders
CREATE TABLE Sales_Orders (
    so_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity INT NOT NULL,
    order_date DATE,
    status ENUM('Pending', 'Shipped', 'Delivered') DEFAULT 'Pending',
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Shipments
CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY AUTO_INCREMENT,
    shipment_type ENUM('Inbound', 'Outbound') NOT NULL,
    reference_id INT,
    product_id INT,
    warehouse_id INT,
    carrier VARCHAR(100),
    tracking_number VARCHAR(100),
    shipment_date DATE,
    expected_arrival DATE,
    actual_arrival DATE NULL,
    status ENUM('Prepared', 'In Transit', 'Delivered', 'Delayed', 'Cancelled') DEFAULT 'Prepared',
    quantity INT NOT NULL,
    shipping_cost DECIMAL(10,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);

-- Transactions (Movement History)
CREATE TABLE Transactions (
    trans_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    warehouse_id INT,
    quantity_change INT,
    trans_type ENUM('Purchase', 'Sale', 'Adjustment', 'Return'),
    trans_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);