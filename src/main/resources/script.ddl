SELECT * FROM "product_type";
 
DELETE FROM ADMIN."order" WHERE "id" IS NOT NULL;
-- SELECT * FROM Admin."order";
 
DELETE FROM ADMIN."order_state" WHERE "id" IS NOT NULL;
-- SELECT * FROM Admin."order_state";
 
INSERT INTO ADMIN."order_state"
("id", "name")
VALUES
(0, 'initialized'),
(1, 'confirmed'),
(2, 'delivered'),
(3, 'canceled');
 
SELECT * FROM ADMIN."user";