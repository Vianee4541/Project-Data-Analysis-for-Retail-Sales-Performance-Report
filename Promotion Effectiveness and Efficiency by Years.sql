/*
    Pada bagian ini kita akan melakukan analisa terhadap efektifitas dan efisiensi dari promosi yang sudah dilakukan selama ini

Efektifitas dan efisiensi dari promosi yang dilakukan akan dianalisa berdasarkan Burn Rate yaitu dengan membandigkan total value promosi yang dikeluarkan terhadap total sales yang diperoleh

DQLab berharap bahwa burn rate tetap berada diangka maskimum 4.5%

Formula untuk burn rate : (total discount / total sales) * 100

Buatkan Derived Tables untuk menghitung total sales (sales) dan total discount (promotion_value) berdasarkan tahun(years) dan formulasikan persentase burn rate nya (burn_rate_percentage)
*/

SELECT YEAR(order_date) as years, 
SUM(sales) as sales, 
SUM(discount_value) as promotion_value,
ROUND (SUM(discount_value)/SUM(sales) * 100,2) as burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status LIKE 'order finished'
GROUP BY years