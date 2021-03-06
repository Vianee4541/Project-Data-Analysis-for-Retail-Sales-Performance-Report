/*
    Buatlah Query dengan menggunakan SQL untuk mendapatkan total penjualan (sales) berdasarkan sub category dari produk (product_sub_category) pada tahun 2011 dan 2012 saja (years) 
*/

SELECT YEAR(order_date) AS years, product_sub_category, SUM(sales) as sales
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
AND (year(order_date) BETWEEN 2011 and 2012)
GROUP BY years, product_sub_category
ORDER BY years ASC, SUM(sales) DESC