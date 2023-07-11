CREATE TABLE sales (
    id INT,
    item VARCHAR(50),
    quantity INT
);

INSERT INTO sales (id, item, quantity)
VALUES (1, 'Item1', 50),
       (2, 'Item2', 150),
       (3, 'Item3', 250),
       (4, 'Item4', 350);
       
       SELECT
    item,
    quantity,
    IF(quantity < 100, 'Меньше 100',
       IF(quantity >= 100 AND quantity <= 300, '100-300',
       IF(quantity > 300, 'Больше 300', NULL))) AS segment
FROM sales;

CREATE TABLE orders (
    id INT,
    status INT
);

INSERT INTO orders (id, status)
VALUES (1, 0),
       (2, 1),
       (3, 2),
       (4, NULL);

SELECT
    id,
    CASE
        WHEN status = 0 THEN 'Заказ необработан'
        WHEN status = 1 THEN 'Заказ в процессе'
        WHEN status = 2 THEN 'Заказ выполнен'
        ELSE 'Статус неизвестен'
    END AS order_status
FROM orders;

NULL - это особое значение, которое указывает на отсутствие значения или неопределенное значение.

0 - это числовое значение, которое представляет ноль или отсутствие количественной величины
