CREATE DATABASE test;
USE test;

CREATE TABLE Buku (
    Id BIGINT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    Price_rent NUMERIC CHECK (Price_rent>0),
    Book_category VARCHAR(10) CHECK (Book_category IN ('MANGA', 'NOVEL', 'MAGAZINE'))
);

CREATE TABLE Customer (
    Id BIGINT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    identity_card_number VARCHAR(50),
    address VARCHAR(50)
);

CREATE TABLE Rent (
    Id BIGINT PRIMARY KEY,
    Customer_id BIGINT,
    Book_id BIGINT,
    Date_Rent DATE NOT NULL,
    Date_Return DATE,
    CHECK (Date_Return > Date_Rent),

    FOREIGN KEY (Customer_id) REFERENCES Customer(Id),
    FOREIGN KEY (Book_id) REFERENCES Buku(Id)
);

INSERT INTO Buku (Id, Title, author, Price_rent, Book_category)
VALUES
(1, 'Buku1', 'izza', 5000, 'MANGA'),
(2, 'Buku2', 'qila', 6000, 'MANGA'),
(3, 'Buku3', 'rosi', 8000, 'NOVEL');
(4, 'Buku4', 'izza', 2000, 'MAGAZINE'),
(5, 'Buku5', 'qila', 3000, 'MAGAZINE'),
(6, 'Buku6', 'rosi', 8000, 'NOVEL');

INSERT INTO Customer (Id, Name, identity_card_number, address)
VALUES
(1, 'izza', '1_75', 'Bandung'),
(2, 'qila', '1_74', 'Bandung');

INSERT INTO Rent (Id, Customer_id, Book_id, Date_Rent, Date_Return)
VALUES
(1, 1, 3, '2023-09-12', '2023-09-30'),
(2, 2, 1, '2023-09-04', '2023-09-18');