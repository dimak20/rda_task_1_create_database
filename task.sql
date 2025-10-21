CREATE DATABASE ShopDB;
USE ShopDB;
CREATE TABLE IF NOT EXISTS Products (
    ID int auto_increment,
    Name varchar(50),
    Description varchar(100),
    Price int,
    WarehouseAmount int,
    PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS Customers (
    ID int auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Address varchar(100),
    PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS Orders (
    ID int auto_increment,
    CustomerID int null,
    Date DATE,
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL
);
CREATE TABLE IF NOT EXISTS OrderItems (
    ID int auto_increment,
    OrderID int null,
    ProductID int null,
    PRIMARY KEY (ID),
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL
);
