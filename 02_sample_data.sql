-- 02_sample_data.sql
-- Sample Data for Supply Chain & Inventory Management

USE supply_chain_db;

-- 1. Suppliers
INSERT INTO Suppliers (supplier_name, contact_email, phone, location, reliability_score) VALUES
('GlobalTech Supplies', 'contact@globaltech.com', '+2348012345678', 'Lagos', 4.85),
('Medix Pharma Ltd', 'procurement@medix.com', '+2348098765432', 'Abuja', 4.92),
('AgroPack Industries', 'sales@agropack.ng', '+2348034567890', 'Port Harcourt', 4.65),
('SteelCore Manufacturing', 'info@steelcore.com', '+2348076543210', 'Kano', 4.78),
('FreshFarm Logistics', 'orders@freshfarm.ng', '+2348056789012', 'Ibadan', 4.95);

-- 2. Products
INSERT INTO Products (sku, product_name, category, unit_price, reorder_point, max_stock) VALUES
('SKU001', 'Wireless Headphones', 'Electronics', 12500.00, 50, 500),
('SKU002', 'Office Chair', 'Furniture', 45000.00, 20, 200),
('SKU003', '5L Cooking Oil', 'Groceries', 3200.00, 150, 1000),
('SKU004', 'Paracetamol 500mg', 'Pharmaceuticals', 850.00, 300, 2000),
('SKU005', 'Stainless Steel Pot', 'Kitchenware', 8500.00, 40, 300),
('SKU006', 'Laptop Stand', 'Electronics', 6500.00, 60, 400),
('SKU007', 'Rice 50kg Bag', 'Groceries', 28500.00, 80, 600);

-- 3. Warehouses
INSERT INTO Warehouses (warehouse_name, location, capacity) VALUES
('Main Warehouse', 'Port Harcourt', 5000),
('Lagos Hub', 'Lagos', 8000),
('Abuja Depot', 'Abuja', 3500),
('Kano Regional', 'Kano', 4000);

-- 4. Inventory
INSERT INTO Inventory (product_id, warehouse_id, quantity) VALUES
(1, 1, 245), (1, 2, 180),
(2, 1, 45),
(3, 2, 620), (3, 3, 310),
(4, 1, 1250), (4, 4, 890),
(5, 2, 95),
(6, 1, 320),
(7, 3, 145);

-- 5. Purchase Orders
INSERT INTO Purchase_Orders (supplier_id, product_id, quantity, order_date, expected_delivery, status) VALUES
(1, 1, 200, '2026-05-10', '2026-05-20', 'Received'),
(2, 4, 1500, '2026-05-15', '2026-05-25', 'Pending'),
(3, 3, 500, '2026-05-08', '2026-05-18', 'Received'),
(4, 5, 150, '2026-05-12', '2026-05-22', 'Received'),
(5, 7, 300, '2026-05-18', '2026-05-28', 'Pending');

-- 6. Sales Orders
INSERT INTO Sales_Orders (product_id, quantity, order_date, status) VALUES
(1, 180, '2026-05-01', 'Delivered'),
(3, 950, '2026-05-03', 'Delivered'),
(4, 2100, '2026-05-06', 'Delivered'),
(1, 210, '2026-05-12', 'Delivered'),
(7, 380, '2026-05-20', 'Delivered');

-- 7. Shipments
INSERT INTO Shipments (shipment_type, reference_id, product_id, warehouse_id, carrier, tracking_number, 
                       shipment_date, expected_arrival, actual_arrival, status, quantity, shipping_cost) VALUES
('Inbound', 1, 1, 1, 'DHL Nigeria', 'TRK100045', '2026-05-18', '2026-05-22', '2026-05-21', 'Delivered', 200, 45000),
('Inbound', 2, 4, 1, 'FedEx', 'TRK100092', '2026-05-20', '2026-05-26', NULL, 'In Transit', 1500, 85000),
('Outbound', 1, 1, 1, 'Nipost Express', 'TRK200034', '2026-05-25', '2026-05-28', '2026-05-27', 'Delivered', 180, 8500),
('Outbound', 2, 3, 2, 'GIG Logistics', 'TRK200056', '2026-05-26', '2026-05-29', NULL, 'In Transit', 120, 12400),
('Inbound', 3, 5, 2, 'GIG Logistics', 'TRK100110', '2026-05-22', '2026-05-28', NULL, 'In Transit', 150, 32000),
('Outbound', 4, 1, 1, 'DHL', 'TRK200105', '2026-05-27', '2026-05-30', NULL, 'Delayed', 80, 15000);

-- 8. Transactions
INSERT INTO Transactions (product_id, warehouse_id, quantity_change, trans_type, trans_date) VALUES
(1, 1, 200, 'Purchase', '2026-05-18 10:00:00'),
(1, 1, -180, 'Sale', '2026-05-01 14:30:00'),
(3, 2, 500, 'Purchase', '2026-05-08 09:00:00'),
(3, 2, -950, 'Sale', '2026-05-03 11:45:00'),
(4, 1, 1500, 'Purchase', '2026-05-15 08:20:00'),
(4, 1, -2100, 'Sale', '2026-05-06 16:30:00');