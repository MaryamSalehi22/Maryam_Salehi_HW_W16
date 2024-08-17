--SECTION1
SELECT P.product_id , P.product_name,B.brand_id ,B.brand_name
FROM production.products AS P 
JOIN production.brands  AS B ON B.brand_id = P.brand_id
WHERE P.list_price < 1000;
--SECTION2
SELECT P.product_name, SUM(S.quantity) AS TOTAL
FROM production.products AS P
JOIN production.stocks AS S
ON P.product_id = S.product_id
GROUP BY P.product_name;
--SECTION3
SELECT
s.store_id,b.brand_id,b.brand_name,SUM(st.quantity) AS total
FROM production.products AS P
JOIN production.stocks AS ST ON P.product_id = ST.product_id
JOIN sales.stores AS S ON ST.store_id = S.store_id
JOIN production.brands AS B ON P.brand_id = B.brand_id
GROUP BY S.store_id,B.brand_id, B.brand_name
ORDER BY S.store_id,B.brand_id;
--SECTION4
SELECT COUNT(OI.item_id) as total_items,
SUM(OI.quantity * OI.list_price) as total_amount
FROM sales.orders AS O
JOIN sales.order_items AS OI ON O.order_id = OI.order_id
WHERE O.customer_id = 114;
