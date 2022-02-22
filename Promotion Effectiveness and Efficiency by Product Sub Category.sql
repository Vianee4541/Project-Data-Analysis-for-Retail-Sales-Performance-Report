/*
    Pada bagian ini kita akan melakukan analisa terhadap efektifitas dan efisiensi dari promosi yang sudah dilakukan selama ini seperti pada bagian sebelumnya. 
    Akan tetapi, ada kolom yang harus ditambahkan, yaitu : product_sub_category dan product_category.
    Data yang ditampilkan hanya untuk tahun 2012
*/

SELECT YEAR(order_date) as years,
product_sub_category,
product_category,
SUM(sales) as sales, 
SUM(discount_value) as promotion_value,
ROUND(SUM(discount_value)/SUM(sales)*100,2) as burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status LIKE 'Order Finished' AND YEAR(order_date) LIKE '2012'
GROUP BY year(order_date), product_sub_category, product_category
ORDER BY sales DESC