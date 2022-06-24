# Write your MySQL query statement below
SELECT product_id, store, price
FROM
	(SELECT product_id, 'store1' as store, store1 AS price
	FROM Products

	UNION

	SELECT	product_id ,'store2' as store, store2 AS price
	FROM Products

	UNION 

	SELECT product_id, 'store3' as store, store3 AS price
	FROM Products
	) A
WHERE price IS NOT NULL
