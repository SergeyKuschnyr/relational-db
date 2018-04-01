SELECT CUSTOMER.CUSTNAME, CUSTOMER.CITY, SALESMAN.NAME, SALESMAN.CITY, DEAL.AMOUNT
FROM CUSTOMER JOIN SALESMAN ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID
              JOIN DEAL     ON DEAL.AMOUNT > 10000 AND DEAL.CUSTOMERIDDEAL = CUSTOMER.CUSTOMER_ID;


SELECT CUSTOMER.CUSTNAME, DEAL.LOC_DATE FROM CUSTOMER JOIN DEAL
ON DEAL.CUSTOMERIDDEAL = CUSTOMER.CUSTOMER_ID AND (DEAL.LOC_DATE BETWEEN '01/01/2017' AND CURRENT_DATE);


SELECT * FROM (SELECT SALES_NAME, SUMA FROM (
SELECT SALESMAN.NAME AS SALES_NAME,  SUM (DEAL.AMOUNT) AS SUMA FROM SALESMAN
JOIN CUSTOMER ON CUSTOMER.SALESMAN_ID = SALESMAN.SALESMAN_ID
JOIN DEAL     ON DEAL.CUSTOMERIDDEAL  = CUSTOMER.CUSTOMER_ID AND (DEAL.LOC_DATE BETWEEN '01/08/2017' AND '30/08/2017')
GROUP BY SALESMAN.NAME
) ORDER BY SUMA DESC)
WHERE ROWNUM = 1;


SELECT SALERMAN_NAME FROM(
SELECT SALESMAN.NAME AS SALERMAN_NAME, SUM (DEAL.AMOUNT) AS SUMA, FIRST_VALUE (SUM(DEAL.AMOUNT)) OVER (ORDER BY SUM(DEAL.AMOUNT) DESC) AS MAX_SUMA
FROM SALESMAN INNER JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID
              INNER JOIN DEAL ON DEAL.CUSTOMERIDDEAL = CUSTOMER.CUSTOMER_ID
WHERE DEAL.LOC_DATE BETWEEN TO_DATE('01.08.2017', 'DD.MM.YYYY') AND TO_DATE('31.08.2017', 'DD.MM.YYYY')
GROUP BY SALESMAN.NAME)
WHERE SUMA = MAX_SUMA;





