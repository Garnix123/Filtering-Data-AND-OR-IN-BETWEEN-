# 🌱 Lucky Shrub – SQL Filtering Lab

## 📌 Overview
This lab simulates a database for **Lucky Shrub**, a medium-sized garden design firm selling indoor and outdoor plants.  
The objective is to **filter and retrieve relevant order data** using the `WHERE` clause and logical operators in MySQL.

---

## 🗂 Prerequisites
- MySQL installed and running
- Lucky Shrub database created
- Orders table populated with sample data

---

## 🛠 Database Setup

```sql
-- 1. Create database
CREATE DATABASE IF NOT EXISTS Lucky_Shrub;

-- 2. Use database
USE Lucky_Shrub;

-- 3. Create Orders table
CREATE TABLE Orders (
    OrderID INT NOT NULL PRIMARY KEY,
    ClientID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    Cost DECIMAL(6,2)
);

-- 4. Insert sample data
INSERT INTO Orders (OrderID, ClientID, ProductID, Quantity, Cost) VALUES
(1, "Cl1", "P1", 10, 500),
(2, "Cl2", "P2", 5, 100),
(3, "Cl3", "P3", 20, 800),
(4, "Cl4", "P4", 15, 150),
(5, "Cl3", "P3", 10, 450),
(6, "Cl2", "P2", 5, 800),
(7, "Cl1", "P4", 22, 1200),
(8, "Cl3", "P1", 15, 150),
(9, "Cl1", "P1", 10, 500),
(10, "Cl2", "P2", 5, 100);
