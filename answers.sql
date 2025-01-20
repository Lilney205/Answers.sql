-- Question 1: Create the categories table
CREATE TABLE categories (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL
);

-- Question 2: Insert 5 categories into the categories table
INSERT INTO categories (categoryName) 
VALUES 
('Electronics'),
('Furniture'),
('Groceries'),
('Clothing'),
('Appliances');

-- Question 3: Create the customer table
CREATE TABLE customer (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phoneNumber VARCHAR(11),
    customerAddress VARCHAR(20),
    dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Question 4: Insert 4 customers into the customer table
INSERT INTO customer (customerName, email, phoneNumber, customerAddress) 
VALUES 
('John Doe', 'john.doe@example.com', '0712345678', 'Kilimani'),
('Jane Smith', 'jane.smith@example.com', '0723456789', 'Westlands'),
('Peter Parker', 'peter.parker@example.com', '0734567890', 'Muthaiga'),
('Mary Jane', 'mary.jane@example.com', '0745678901', 'Karen');

-- Question 5: Update the customerAddress to "Lavington" for customerID 1 and 2
UPDATE customer
SET customerAddress = 'Lavington'
WHERE customerID IN (1, 2);

-- Question 6: Delete the category where categoryID is 2
DELETE FROM categories
WHERE categoryID = 2;
