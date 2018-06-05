-- LABORATORY WORK 2
-- BY Kanievskyi_Vladyslav
SELECT PRODUCTS.PROD_NAME,COUNT(ORDERITEMS.ORDER_NUM),COUNT(PRODUCTS.VEND_ID)
FROM PRODUCTS LEFT JOIN ORDERITEMS 
ON PRODUCTS.PROD_ID=ORDERITEMS.PROD_ID
GROUP BY PRODUCTS.PROD_NAME;

SELECT PRODUCTS.VEND_ID,COUNT(ORDERITEMS.ORDER_NUM)
FROM PRODUCTS LEFT JOIN ORDERITEMS
ON  PRODUCTS.PROD_ID=ORDERITEMS.PROD_ID
JOIN VENDORS
ON VENDORS.VEND_ID=PRODUCTS.VEND_ID
GROUP BY PRODUCTS.VEND_ID
having COUNT(ORDERITEMS.ORDER_NUM)>2
and
COUNT(PRODUCTS.PROD_ID)=3;
