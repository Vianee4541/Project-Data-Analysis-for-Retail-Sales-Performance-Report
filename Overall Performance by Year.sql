SELECT year(order_date) AS "years", SUM(sales) AS "sales", COUNT(order_status) AS "number_of_order"
FROM dqlab_sales_store
WHERE order_status = "order finished"
GROUP BY year(order_date)