
CREATE TABLE Customers (
Id INT NOT NULL,
Name TEXT NOT NULL,
PRIMARY KEY (Id)
);

INSERT INTO Customers
VALUES
(1, 'Max'),
(2, 'Pavel'),
(3, 'Ivan'),
(4, 'Leonid');

CREATE TABLE Orders (
Id INT NOT NULL,
CustomerId INT,
PRIMARY KEY (Id),
FOREIGN KEY (CustomerId)
REFERENCES Customers(Id)
);

INSERT INTO Orders
VALUES
(1, 2),
(2, 4);

SELECT C.Name Customers
FROM Customers C
LEFT JOIN Orders O
ON C.Id = O.CustomerId
WHERE O.CustomerId is NULL;