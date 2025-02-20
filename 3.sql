
Setting environment for using XAMPP for Windows.
yashg@YASH c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.28-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use mysql
Database changed
MariaDB [mysql]> desc salesman;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| salesman_id | int(11)       | YES  |     | NULL    |       |
| name        | varchar(30)   | YES  |     | NULL    |       |
| city        | varchar(30)   | YES  |     | NULL    |       |
| commission  | decimal(10,2) | YES  |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+
4 rows in set (0.027 sec)

MariaDB [mysql]> select * from salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hooq | New York |       0.15 |
|        5001 | Nail Knite | Paris    |       0.15 |
|        5003 | Pit Alex   | London   |       0.12 |
|        5005 | Mc Lyon    |          |       0.11 |
|        5001 | James Hooq | New York |       0.15 |
|        5003 | Lauson Hen | Rome     |       0.12 |
+-------------+------------+----------+------------+
6 rows in set (0.035 sec)

MariaDB [mysql]> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | int(11)     | YES  |     | NULL    |       |
| customer_name | varchar(30) | YES  |     | NULL    |       |
| city          | varchar(30) | YES  |     | NULL    |       |
| grade         | int(11)     | YES  |     | NULL    |       |
| salesman_id   | int(11)     | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.021 sec)

MariaDB [mysql]> select * from customer;
+-------------+---------------+------------+-------+-------------+
| customer_id | customer_name | city       | grade | salesman_id |
+-------------+---------------+------------+-------+-------------+
|        3002 | Nick Rimando  | New York   |   100 |        5001 |
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3001 | Brad Guran    | London     |  NULL |        NULL |
|        3004 | Fabian Johns  | Paris      |   300 |        5006 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
|        3009 | Geoff Camero  | Berlin     |   100 |        NULL |
|        3008 | Julian Green  | London     |   300 |        5002 |
|        3003 | Jozy Altidor  | Moncow     |   200 |        5007 |
+-------------+---------------+------------+-------+-------------+
8 rows in set (0.001 sec)

MariaDB [mysql]> desc `order`;
+-------------+----------+------+-----+---------+-------+
| Field       | Type     | Null | Key | Default | Extra |
+-------------+----------+------+-----+---------+-------+
| order_no    | int(11)  | YES  |     | NULL    |       |
| purch_amt   | int(11)  | YES  |     | NULL    |       |
| order_date  | datetime | YES  |     | NULL    |       |
| customer_id | int(11)  | YES  |     | NULL    |       |
| salesman_id | int(11)  | YES  |     | NULL    |       |
+-------------+----------+------+-----+---------+-------+
5 rows in set (0.019 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
+----------+-----------+---------------------+-------------+-------------+
3 rows in set (0.003 sec)

MariaDB [mysql]> select * from customer
    -> Bye

yashg@YASH c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.28-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use mysql
Database changed
MariaDB [mysql]> select * from `order`
    -> values(70004, 110.5, '2016-08-17', 3009, null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'values(70004, 110.5, '2016-08-17', 3009, null)' at line 2
MariaDB [mysql]> insert into `order`
    -> values(70004, 110.5, '2016-08-17', 3009, null);
Query OK, 1 row affected (0.024 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
+----------+-----------+---------------------+-------------+-------------+
4 rows in set (0.013 sec)

MariaDB [mysql]> insert into `order`
    -> values(70007, 948.5, '2016-09-10', 3005, 5002);
Query OK, 1 row affected (0.005 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
|    70007 |       949 | 2016-09-10 00:00:00 |        3005 |        5002 |
+----------+-----------+---------------------+-------------+-------------+
5 rows in set (0.001 sec)

MariaDB [mysql]> insert into `order`
    -> values(70005, 2400.6, '2016-07-27', 3007, 5001);
Query OK, 1 row affected (0.016 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
|    70007 |       949 | 2016-09-10 00:00:00 |        3005 |        5002 |
|    70005 |      2401 | 2016-07-27 00:00:00 |        3007 |        5001 |
+----------+-----------+---------------------+-------------+-------------+
6 rows in set (0.001 sec)

MariaDB [mysql]> insert into `order`
    -> values(70008, 5760, '2016-09-10', 3002, 5001);
Query OK, 1 row affected (0.003 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
|    70007 |       949 | 2016-09-10 00:00:00 |        3005 |        5002 |
|    70005 |      2401 | 2016-07-27 00:00:00 |        3007 |        5001 |
|    70008 |      5760 | 2016-09-10 00:00:00 |        3002 |        5001 |
+----------+-----------+---------------------+-------------+-------------+
7 rows in set (0.001 sec)

MariaDB [mysql]> insert into `order`
    -> values(70010, 1983.43, '2016-10-10', 3004, 5006);
Query OK, 1 row affected (0.015 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
|    70007 |       949 | 2016-09-10 00:00:00 |        3005 |        5002 |
|    70005 |      2401 | 2016-07-27 00:00:00 |        3007 |        5001 |
|    70008 |      5760 | 2016-09-10 00:00:00 |        3002 |        5001 |
|    70010 |      1983 | 2016-10-10 00:00:00 |        3004 |        5006 |
+----------+-----------+---------------------+-------------+-------------+
8 rows in set (0.001 sec)

MariaDB [mysql]> insert into `order`
    -> values(70003, 2480.4, '2016-10-10', 3009, null);
Query OK, 1 row affected (0.014 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
|    70007 |       949 | 2016-09-10 00:00:00 |        3005 |        5002 |
|    70005 |      2401 | 2016-07-27 00:00:00 |        3007 |        5001 |
|    70008 |      5760 | 2016-09-10 00:00:00 |        3002 |        5001 |
|    70010 |      1983 | 2016-10-10 00:00:00 |        3004 |        5006 |
|    70003 |      2480 | 2016-10-10 00:00:00 |        3009 |        NULL |
+----------+-----------+---------------------+-------------+-------------+
9 rows in set (0.001 sec)

MariaDB [mysql]> insert into `order`
    -> values(70012, 250.45, '2016-06-27', 3008, 5002);
Query OK, 1 row affected (0.015 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
|    70007 |       949 | 2016-09-10 00:00:00 |        3005 |        5002 |
|    70005 |      2401 | 2016-07-27 00:00:00 |        3007 |        5001 |
|    70008 |      5760 | 2016-09-10 00:00:00 |        3002 |        5001 |
|    70010 |      1983 | 2016-10-10 00:00:00 |        3004 |        5006 |
|    70003 |      2480 | 2016-10-10 00:00:00 |        3009 |        NULL |
|    70012 |       250 | 2016-06-27 00:00:00 |        3008 |        5002 |
+----------+-----------+---------------------+-------------+-------------+
10 rows in set (0.003 sec)

MariaDB [mysql]> insert into `order`
    -> values(70011, 75.29, '2016-08-17', 3003, 5007);
Query OK, 1 row affected (0.015 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
|    70004 |       111 | 2016-08-17 00:00:00 |        3009 |        NULL |
|    70007 |       949 | 2016-09-10 00:00:00 |        3005 |        5002 |
|    70005 |      2401 | 2016-07-27 00:00:00 |        3007 |        5001 |
|    70008 |      5760 | 2016-09-10 00:00:00 |        3002 |        5001 |
|    70010 |      1983 | 2016-10-10 00:00:00 |        3004 |        5006 |
|    70003 |      2480 | 2016-10-10 00:00:00 |        3009 |        NULL |
|    70012 |       250 | 2016-06-27 00:00:00 |        3008 |        5002 |
|    70011 |        75 | 2016-08-17 00:00:00 |        3003 |        5007 |
+----------+-----------+---------------------+-------------+-------------+
11 rows in set (0.001 sec)

MariaDB [mysql]> select * from salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hooq | New York |       0.15 |
|        5001 | Nail Knite | Paris    |       0.15 |
|        5003 | Pit Alex   | London   |       0.12 |
|        5005 | Mc Lyon    |          |       0.11 |
|        5001 | James Hooq | New York |       0.15 |
|        5003 | Lauson Hen | Rome     |       0.12 |
+-------------+------------+----------+------------+
6 rows in set (0.014 sec)

MariaDB [mysql]> select * from customer;
+-------------+---------------+------------+-------+-------------+
| customer_id | customer_name | city       | grade | salesman_id |
+-------------+---------------+------------+-------+-------------+
|        3002 | Nick Rimando  | New York   |   100 |        5001 |
|        3005 | Graham Zusi   | California |   200 |        5002 |
|        3001 | Brad Guran    | London     |  NULL |        NULL |
|        3004 | Fabian Johns  | Paris      |   300 |        5006 |
|        3007 | Brad Davis    | New York   |   200 |        5001 |
|        3009 | Geoff Camero  | Berlin     |   100 |        NULL |
|        3008 | Julian Green  | London     |   300 |        5002 |
|        3003 | Jozy Altidor  | Moncow     |   200 |        5007 |
+-------------+---------------+------------+-------+-------------+
8 rows in set (0.014 sec)

MariaDB [mysql]> select name, city, customer_id, salesman_id from salesman,customer
    -> where salesman.salesman_id = customer.salesman_id;
ERROR 1052 (23000): Column 'city' in field list is ambiguous
MariaDB [mysql]> select name,customer.city, customer_id, salesman_id from salesman,customer
    -> where salesman.salesman_id = customer.salesman_id;
ERROR 1052 (23000): Column 'salesman_id' in field list is ambiguous
MariaDB [mysql]> select name, customer.city, customer_id, customer.salesman_id from salesman,customer
    -> where salesman.salesman_id = customer.salesman_id;
+------------+----------+-------------+-------------+
| name       | city     | customer_id | salesman_id |
+------------+----------+-------------+-------------+
| James Hooq | New York |        3002 |        5001 |
| Nail Knite | New York |        3002 |        5001 |
| James Hooq | New York |        3002 |        5001 |
| James Hooq | New York |        3007 |        5001 |
| Nail Knite | New York |        3007 |        5001 |
| James Hooq | New York |        3007 |        5001 |
+------------+----------+-------------+-------------+
6 rows in set (0.001 sec)

MariaDB [mysql]> select name, customer.city, customer_id, customer.salesman_id from salesman,customer
    -> ;
+------------+------------+-------------+-------------+
| name       | city       | customer_id | salesman_id |
+------------+------------+-------------+-------------+
| James Hooq | New York   |        3002 |        5001 |
| Nail Knite | New York   |        3002 |        5001 |
| Pit Alex   | New York   |        3002 |        5001 |
| Mc Lyon    | New York   |        3002 |        5001 |
| James Hooq | New York   |        3002 |        5001 |
| Lauson Hen | New York   |        3002 |        5001 |
| James Hooq | California |        3005 |        5002 |
| Nail Knite | California |        3005 |        5002 |
| Pit Alex   | California |        3005 |        5002 |
| Mc Lyon    | California |        3005 |        5002 |
| James Hooq | California |        3005 |        5002 |
| Lauson Hen | California |        3005 |        5002 |
| James Hooq | London     |        3001 |        NULL |
| Nail Knite | London     |        3001 |        NULL |
| Pit Alex   | London     |        3001 |        NULL |
| Mc Lyon    | London     |        3001 |        NULL |
| James Hooq | London     |        3001 |        NULL |
| Lauson Hen | London     |        3001 |        NULL |
| James Hooq | Paris      |        3004 |        5006 |
| Nail Knite | Paris      |        3004 |        5006 |
| Pit Alex   | Paris      |        3004 |        5006 |
| Mc Lyon    | Paris      |        3004 |        5006 |
| James Hooq | Paris      |        3004 |        5006 |
| Lauson Hen | Paris      |        3004 |        5006 |
| James Hooq | New York   |        3007 |        5001 |
| Nail Knite | New York   |        3007 |        5001 |
| Pit Alex   | New York   |        3007 |        5001 |
| Mc Lyon    | New York   |        3007 |        5001 |
| James Hooq | New York   |        3007 |        5001 |
| Lauson Hen | New York   |        3007 |        5001 |
| James Hooq | Berlin     |        3009 |        NULL |
| Nail Knite | Berlin     |        3009 |        NULL |
| Pit Alex   | Berlin     |        3009 |        NULL |
| Mc Lyon    | Berlin     |        3009 |        NULL |
| James Hooq | Berlin     |        3009 |        NULL |
| Lauson Hen | Berlin     |        3009 |        NULL |
| James Hooq | London     |        3008 |        5002 |
| Nail Knite | London     |        3008 |        5002 |
| Pit Alex   | London     |        3008 |        5002 |
| Mc Lyon    | London     |        3008 |        5002 |
| James Hooq | London     |        3008 |        5002 |
| Lauson Hen | London     |        3008 |        5002 |
| James Hooq | Moncow     |        3003 |        5007 |
| Nail Knite | Moncow     |        3003 |        5007 |
| Pit Alex   | Moncow     |        3003 |        5007 |
| Mc Lyon    | Moncow     |        3003 |        5007 |
| James Hooq | Moncow     |        3003 |        5007 |
| Lauson Hen | Moncow     |        3003 |        5007 |
+------------+------------+-------------+-------------+
48 rows in set (0.001 sec)

MariaDB [mysql]> select name, customer.city, customer_id, customer.salesman_id from salesman joint customer
    -> on salesman.salesman_id = customer.salesman_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer
on salesman.salesman_id = customer.salesman_id' at line 1
MariaDB [mysql]> select name, customer.city, customer_id, customer.salesman_id from salesman joint customer
    -> on salesman.salesman_id = customer.salesman_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'customer
on salesman.salesman_id = customer.salesman_id' at line 1
MariaDB [mysql]> select name, customer.city, customer_id, customer.salesman_id from salesman join customer
    -> on salesman.salesman_id = customer.salesman_id;
+------------+----------+-------------+-------------+
| name       | city     | customer_id | salesman_id |
+------------+----------+-------------+-------------+
| James Hooq | New York |        3002 |        5001 |
| Nail Knite | New York |        3002 |        5001 |
| James Hooq | New York |        3002 |        5001 |
| James Hooq | New York |        3007 |        5001 |
| Nail Knite | New York |        3007 |        5001 |
| James Hooq | New York |        3007 |        5001 |
+------------+----------+-------------+-------------+
6 rows in set (0.001 sec)

MariaDB [mysql]> select name, customer.city, customer_id, customer.salesman_id from salesman left join customer
    -> on salesman.salesman_id = customer.salesman_id;
+------------+----------+-------------+-------------+
| name       | city     | customer_id | salesman_id |
+------------+----------+-------------+-------------+
| James Hooq | New York |        3002 |        5001 |
| Nail Knite | New York |        3002 |        5001 |
| James Hooq | New York |        3002 |        5001 |
| James Hooq | New York |        3007 |        5001 |
| Nail Knite | New York |        3007 |        5001 |
| James Hooq | New York |        3007 |        5001 |
| Pit Alex   | NULL     |        NULL |        NULL |
| Mc Lyon    | NULL     |        NULL |        NULL |
| Lauson Hen | NULL     |        NULL |        NULL |
+------------+----------+-------------+-------------+
9 rows in set (0.001 sec)

MariaDB [mysql]> select name, customer.city, customer_id, customer.salesman_id from salesman right join customer
    -> on salesman.salesman_id = customer.salesman_id;
+------------+------------+-------------+-------------+
| name       | city       | customer_id | salesman_id |
+------------+------------+-------------+-------------+
| James Hooq | New York   |        3002 |        5001 |
| James Hooq | New York   |        3007 |        5001 |
| Nail Knite | New York   |        3002 |        5001 |
| Nail Knite | New York   |        3007 |        5001 |
| James Hooq | New York   |        3002 |        5001 |
| James Hooq | New York   |        3007 |        5001 |
| NULL       | California |        3005 |        5002 |
| NULL       | London     |        3001 |        NULL |
| NULL       | Paris      |        3004 |        5006 |
| NULL       | Berlin     |        3009 |        NULL |
| NULL       | London     |        3008 |        5002 |
| NULL       | Moncow     |        3003 |        5007 |
+------------+------------+-------------+-------------+
12 rows in set (0.001 sec)

MariaDB [mysql]>