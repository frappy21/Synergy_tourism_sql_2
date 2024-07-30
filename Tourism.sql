CREATE DATABASE Tourism;

USE Tourism;

CREATE TABLE Tours (
    TourID INT PRIMARY KEY,
    TourName VARCHAR(100),
    TourTypeID INT,
    LocationID INT,
    Description TEXT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (TourTypeID) REFERENCES TourTypes(TourTypeID),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(100),
    Description TEXT
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Guides (
    GuideID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Country VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE TourTypes (
    TourTypeID INT PRIMARY KEY,
    TourTypeName VARCHAR(100)
);

CREATE TABLE TourOrders (
    OrderID INT PRIMARY KEY,
    TourID INT,
    CustomerID INT,
    GuideID INT,
    OrderDate DATE,
    FOREIGN KEY (TourID) REFERENCES Tours(TourID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (GuideID) REFERENCES Guides(GuideID)
);
