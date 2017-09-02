SELECT * FROM PRODUCT WHERE COST_PRICE = 50 AND NAME = 'toy123';


SELECT * FROM PRODUCT WHERE COST_PRICE < 50 AND ID = 1005;


SELECT * FROM PRODUCT WHERE ID > 1005 AND MANUFACTURER_NAME = 'someManufacturer';


SELECT * from PRODUCT;
-----------------------------------------------


UPDATE PRODUCT SET MANUFACTURER_NAME = 'chane' WHERE NAME = 't-shirt';
-----------------------------------------------


DELETE FROM PRODUCT WHERE ID < 1050;