SELECT Product.product_name, Sales.year, Sales.price
FROM SALES
LEFT JOIN Product
ON Product.product_id = Sales.product_id;