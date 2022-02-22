/*
    DQLab Store ingin mengetahui jumlah customer (number_of_customer) yang bertransaksi setiap tahun dari 2009 sampai 2012 (years).
*/

SELECT 
	year(order_date) as years, 
	COUNT(DISTINCT customer) as number_of_customer
FROM dqlab_sales_store
WHERE order_status LIKE 'Order Finished'
GROUP BY year(order_date)