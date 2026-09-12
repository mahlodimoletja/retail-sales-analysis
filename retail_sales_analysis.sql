USE online_retail;	

CREATE TABLE sales (
InvoiceNo VARCHAR(20),
StockCode VARCHAR(20),
`Description` VARCHAR(255),
Quantity INT,
InvoiceDate DATETIME,
UnitPrice DECIMAL(10,2),
CustomerID VARCHAR(20),
Country VARCHAR(100)
);

SHOW TABLES;

SELECT * FROM online_retail.sales;

SELECT COUNT(*) AS total_rows
FROM sales;

DESCRIBE sales;

SELECT
    COUNT(*) AS total_rows,
    SUM(InvoiceNo IS NULL) AS missing_invoice,
    SUM(StockCode IS NULL) AS missing_stockcode,
    SUM(`Description` IS NULL) AS missing_description,
    SUM(Quantity IS NULL) AS missing_quantity,
    SUM(InvoiceDate IS NULL) AS missing_date,
    SUM(UnitPrice IS NULL) AS missing_price,
    SUM(CustomerID IS NULL) AS missing_customer,
    SUM(Country IS NULL) AS missing_country
FROM sales;

SELECT
	MIN(Quantity) AS minimum_quantity,
    MAX(Quantity) AS maximum_quantity
FROM sales;    
    
    SELECT COUNT(*) AS negative_quantity_rows
    FROM sales
    WHERE Quantity < 0;
    
    SELECT
    InvoiceNo,
    StockCode,
    `Description`,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country
FROM sales
WHERE Quantity < 0
LIMIT 10;

SELECT COUNT(*) AS cancelled_transactions
FROM sales
WHERE InvoiceNo LIKE 'C%';

SELECT COUNT(*) AS negative_not_cancelled
FROM sales
WHERE Quantity < 0
  AND InvoiceNo NOT LIKE 'C%';
  
  SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    InvoiceDate,
    UnitPrice,
    CustomerID,
    Country
FROM sales
WHERE Quantity < 0
  AND InvoiceNo NOT LIKE 'C%'
LIMIT 10;

SELECT
    COUNT(*) AS negative_cancellations
FROM sales
WHERE Quantity < 0
  AND InvoiceNo LIKE 'C%';
  
  SELECT
	SUM(Quantity * UnitPrice) AS total_sales_value
FROM sales;
  
 SELECT
    SUM(CASE
        WHEN Quantity > 0 THEN Quantity * UnitPrice
        ELSE 0
    END) AS positive_sales_value,

    SUM(CASE
        WHEN Quantity < 0 THEN Quantity * UnitPrice
        ELSE 0
    END) AS negative_transaction_value
FROM sales; 

SELECT
    SUM(Quantity * UnitPrice) AS total_transaction_value
FROM sales;

SELECT
    SUM(Quantity * UnitPrice) AS total_value,

    SUM(CASE
        WHEN Quantity > 0 THEN Quantity * UnitPrice
        ELSE 0
    END) AS positive_value,

    SUM(CASE
        WHEN Quantity < 0 THEN Quantity * UnitPrice
        ELSE 0
    END) AS negative_value,

    SUM(CASE
        WHEN Quantity = 0 THEN 1
        ELSE 0
    END) AS zero_quantity_rows
FROM sales;

SELECT
    StockCode,
    `Description`,
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Quantity > 0
GROUP BY StockCode, `Description`
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS sales_value
FROM sales
WHERE Description = 'Manual'
LIMIT 20;

SELECT
    COUNT(*) AS manual_transactions,
    SUM(Quantity * UnitPrice) AS manual_value,
    SUM(CASE
        WHEN Quantity > 0 THEN Quantity * UnitPrice
        ELSE 0
    END) AS manual_positive_value,
    SUM(CASE
        WHEN Quantity < 0 THEN Quantity * UnitPrice
        ELSE 0
    END) AS manual_negative_value
FROM sales
WHERE Description = 'Manual';

SELECT
    StockCode,
    Description,
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual'
GROUP BY StockCode, Description
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    StockCode,
    Description,
    SUM(Quantity) AS total_quantity
FROM sales
WHERE Description NOT LIKE '%MANUAL%'
  AND Quantity > 0
GROUP BY StockCode, Description
ORDER BY total_quantity DESC
LIMIT 10;

SELECT
    StockCode,
    Description,
    SUM(Quantity) AS total_quantity,
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Description NOT LIKE '%MANUAL%'
  AND Quantity > 0
GROUP BY StockCode, Description
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS sales_month,
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual'
GROUP BY sales_month
ORDER BY sales_month;

SELECT
    CustomerID,
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual'
  AND CustomerID IS NOT NULL
  AND TRIM(CustomerID) <> ''
GROUP BY CustomerID
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    Country,
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual'
GROUP BY Country
ORDER BY total_sales DESC
LIMIT 10;

SELECT
    SUM(Quantity) AS total_quantity_sold
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual';
  
  SELECT
	AVG(order_total) AS average_order_value
FROM (
	SELECT
		InvoiceNo,
		SUM(Quantity * UnitPrice) AS order_total
	FROM sales
    WHERE Quantity > 0
    AND Description <> 'Manual'
    GROUP BY InvoiceNo
    ) AS orders;
    
    SELECT
    COUNT(DISTINCT CustomerID) AS unique_customers
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual'
  AND CustomerID IS NOT NULL
  AND TRIM(CustomerID) <> '';
  
  SELECT
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual';
  
 SELECT
    StockCode,
    Description,
    SUM(Quantity) AS total_quantity_sold
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual'
GROUP BY StockCode, Description
ORDER BY total_quantity_sold DESC
LIMIT 10; 

SELECT
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS sales_month,
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual'
GROUP BY sales_month
ORDER BY total_sales DESC
LIMIT 1;

SELECT
    SUM(Quantity * UnitPrice) AS total_sales
FROM sales
WHERE Quantity > 0
  AND Description <> 'Manual';