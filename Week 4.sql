-- Name: ODUOR ROONEY OPONDO
-- Email: lilney205@gmail.com
-- Assignment: Week 4 Advanced SQL Queries-- Question 1: Top 5 customers with the highest total bill amount
SELECT 
    CustomerID, 
    SUM(TotalAmount) AS TotalBillAmount
FROM 
    bills
GROUP BY 
    CustomerID
ORDER BY 
    TotalBillAmount DESC
LIMIT 5;

-- Question 2: Average time taken to pay a bill for each customer
SELECT 
    CustomerID, 
    AVG(DATEDIFF(DueDate, BillDate)) AS AvgTimeToPay
FROM 
    bills
GROUP BY 
    CustomerID;

-- Question 3: Customers who have never made a late payment
SELECT 
    CustomerID
FROM 
    bills
WHERE 
    DATEDIFF(DueDate, BillDate) >= 0
GROUP BY 
    CustomerID
HAVING 
    COUNT(*) = COUNT(DueDate);

-- Question 4: Total amount generated
SELECT 
    SUM(LineTotal) AS TotalGenerated
FROM 
    Bill_Items;

-- Question 5a: Item with the highest LineTotal
SELECT 
    ItemID, 
    MAX(LineTotal) AS HighestLineTotal
FROM 
    Bill_Items;

-- Question 5b: Item with the lowest LineTotal
SELECT 
    ItemID, 
    MIN(LineTotal) AS LowestLineTotal
FROM 
    Bill_Items;

-- Question 6: Most popular payment method
SELECT 
    PaymentMethod, 
    COUNT(*) AS UsageCount
FROM 
    Payment
GROUP BY 
    PaymentMethod
ORDER BY 
    UsageCount DESC
LIMIT 1;

-- Question 7: Total revenue by payment method
SELECT 
    PaymentMethod, 
    SUM(PaymentAmount) AS TotalRevenue
FROM 
    Payment
GROUP BY 
    PaymentMethod;

-- Question 8: Average payment amount
SELECT 
    AVG(PaymentAmount) AS AvgPaymentAmount
FROM 
    Payment;

-- Question 9: Top 3 categories with the highest total revenue
SELECT 
    CategoryID, 
    SUM(TotalAmount) AS TotalRevenue
FROM 
    bills
GROUP BY 
    CategoryID
ORDER BY 
    TotalRevenue DESC
LIMIT 3;

-- Question 10: Customer with the highest number of unpaid bills
SELECT 
    CustomerID, 
    COUNT(*) AS UnpaidBills
FROM 
    bills
WHERE 
    Status = 'Unpaid'
GROUP BY 
    CustomerID
ORDER BY 
    UnpaidBills DESC
LIMIT 1;
