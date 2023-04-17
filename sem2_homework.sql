CREATE TABLE sem2.sales (
	id SERIAL primary key,
	order_date date NOT NULL,
	count_product integer
);
insert into sem2.sales(order_date,count_product) values ('2022-01-02',156) ;
insert into sem2.sales(order_date,count_product) values ('2022-01-02',180) ;
insert into sem2.sales(order_date,count_product) values ('2022-01-03',21) ;
insert into sem2.sales(order_date,count_product) values ('2022-01-04',124) ;
insert into sem2.sales(order_date,count_product) values ('2022-01-05',341) ;
SELECT id,
	   CASE 
	   	WHEN count_product < 100 THEN 'small order'
	   	WHEN count_product BETWEEN 100 AND 300 THEN 'middle order'
		WHEN count_product > 300 THEN 'huge order'
		ELSE 'not signed'
	   END as order_type
FROM sem2.sales
CREATE TABLE sem2.orders (
	id SERIAL primary key,
	employee_id char(5) NOT NULL,
	amount real,
	order_status char (30) CHECK (order_status in ('OPEN','CLOSED','CANCELLED'))
);
insert into sem2.orders(employee_id,amount,order_status) values ('e03',15.00,'OPEN');
insert into sem2.orders(employee_id,amount,order_status) values ('e01',25.50,'OPEN');
insert into sem2.orders(employee_id,amount,order_status) values ('e05',100.70,'CLOSED');
insert into sem2.orders(employee_id,amount,order_status) values ('e02',22.18,'OPEN');
insert into sem2.orders(employee_id,amount,order_status) values ('e04',9.50,'CANCELLED');

SELECT  id,
		employee_id,
		amount,
		CASE order_status
			WHEN 'OPEN' THEN 'Order is in open state'
			WHEN 'CLOSED' THEN 'Order is closed'
			WHEN 'CANCELLED' THEN 'Order is cancelled'
			ELSE 'not signed'
		END AS "Order status"
FROM sem2.orders
