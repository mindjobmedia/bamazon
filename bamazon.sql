CREATE DATABASE Bamazon;
USE Bamazon;

CREATE TABLE Products (
	ItemID INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    DepartmentName VARCHAR(255) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(ItemID)
);
INSERT INTO Products 
	(ProductName,DepartmentName,Price,StockQuantity)
VALUES
	('Burger','Fast Food',5.99,1000),
    ('Carrots','Veggies',7.99,4000),
    ('Jean Shorts','Clothing',39.99,300),
    ('Couch','Furniture',1299.99,100),
    ('Pillows','Decor',19.99,200),
    ('Audi','Car',45999.99,20),
    ('Toothpaste','Bathroom',1.99,60),
    ('Books','Education',12.99,12),
    ('Candyland','Games',29.99,600),
    ('Timex','Watches',199.99,1000);
    
CREATE TABLE Departments (
	DepartmentID INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    DepartmentName VARCHAR(255) NOT NULL,
    OverheadCosts DECIMAL(10,2) DEFAULT 0.00 NOT NULL,
    ProductSales DECIMAL(10,2) DEFAULT 0.00,
    PRIMARY KEY(DepartmentID)
);
INSERT INTO Departments 
	(DepartmentName,OverHeadCosts)
VALUES
	('Fast Food',1000),
    ('Furniture',100),
    ('Bathroom',60),
    ('Games',600),
    ('Watches',1000);