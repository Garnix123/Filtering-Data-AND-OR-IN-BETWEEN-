CREATE DATABASE IF NOT EXISTS Lucky_Shrub;
USE Lucky_Shrub;
CREATE TABLE Orders (OrderID INT NOT NULL PRIMARY KEY, ClientID VARCHAR(10),  ProductID VARCHAR(10),  Quantity   INT, Cost DECIMAL(6,2)); 
INSERT INTO Orders (OrderID, ClientID, ProductID , Quantity, Cost) VALUES (1, "Cl1", "P1", 10, 500), (2, "Cl2", "P2", 5, 100), (3, "Cl3", "P3", 20, 800), (4, "Cl4", "P4", 15, 150), (5, "Cl3", "P3", 10, 450), (6, "Cl2", "P2", 5, 800), (7, "Cl1", "P4", 22, 1200), (8, "Cl3", "P1", 15, 150), (9, "Cl1", "P1", 10, 500), (10, "Cl2", "P2", 5, 100); 
SHOW tables;
SELECT * FROM Orders
-- Task 1: Write a SQL statement to print all records of orders where the cost is $250 or less. The expected output result should be the same as the following screenshot (assuming that you have populated the Orders table with the same data set)
SELECT *
FROM Orders
WHERE Cost < 250
-- Task 2: Write a SQL statement to print all records of orders where the cost is between $50 and $750.
SELECT *
FROM Orders
WHERE Cost
BETWEEN 50 AND 750;
-- Task 3: Write a SQL statement to print all records of orders that have been placed by the client with the id of Cl3 and where the cost of the order is more than $100. 
SELECT *
FROM Orders
WHERE ClientID = 'Cl3' AND Cost > 100;
-- Task 4: Write a SQL statement to print all records of orders that have a product id of p1 or p2 and the order quantity is more than 2. 
SELECT *
FROM Orders
WHERE ProductID IN ('P1', 'P2') AND Quantity > 2

