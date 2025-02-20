
Setting environment for using XAMPP for Windows.
yashg@YASH c:\xampp
# use mysql -u root
'use' is not recognized as an internal or external command,
operable program or batch file.

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
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| salesman_id | int(11)     | YES  |     | NULL    |       |
| name        | varchar(30) | YES  |     | NULL    |       |
| city        | varchar(30) | YES  |     | NULL    |       |
| commission  | int(11)     | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.028 sec)

MariaDB [mysql]> select * from salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hooq | New York |          0 |
|        5001 | Nail Knite | Paris    |          0 |
|        5003 | Pit Alex   | London   |          0 |
|        5005 | Mc Lyon    |          |          0 |
|        5001 | James Hooq | New York |          0 |
|        5003 | Lauson Hen | Rome     |          0 |
+-------------+------------+----------+------------+
6 rows in set (0.022 sec)

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
5 rows in set (0.040 sec)

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
5 rows in set (0.033 sec)

MariaDB [mysql]> select * from `order`;
+----------+-----------+---------------------+-------------+-------------+
| order_no | purch_amt | order_date          | customer_id | salesman_id |
+----------+-----------+---------------------+-------------+-------------+
|    70001 |       151 | 2016-10-05 00:00:00 |        3005 |        5002 |
|    70009 |       271 | 2016-09-10 00:00:00 |        3001 |        NULL |
|    70002 |        65 | 2016-10-05 00:00:00 |        3002 |        5001 |
+----------+-----------+---------------------+-------------+-------------+
3 rows in set (0.001 sec)

MariaDB [mysql]> insert into `order`
    -> Bye

yashg@YASH c:\xampp
#  mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.28-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use mysql
Database changed
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
5 rows in set (0.035 sec)

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

MariaDB [mysql]> desc salesman;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| salesman_id | int(11)     | YES  |     | NULL    |       |
| name        | varchar(30) | YES  |     | NULL    |       |
| city        | varchar(30) | YES  |     | NULL    |       |
| commission  | int(11)     | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.034 sec)

MariaDB [mysql]> select * from salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hooq | New York |          0 |
|        5001 | Nail Knite | Paris    |          0 |
|        5003 | Pit Alex   | London   |          0 |
|        5005 | Mc Lyon    |          |          0 |
|        5001 | James Hooq | New York |          0 |
|        5003 | Lauson Hen | Rome     |          0 |
+-------------+------------+----------+------------+
6 rows in set (0.000 sec)

MariaDB [mysql]> alter table salesman
    -> modify commision numeric(10,2);
ERROR 1054 (42S22): Unknown column 'commision' in 'salesman'
MariaDB [mysql]> desc salesman;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| salesman_id | int(11)     | YES  |     | NULL    |       |
| name        | varchar(30) | YES  |     | NULL    |       |
| city        | varchar(30) | YES  |     | NULL    |       |
| commission  | int(11)     | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.034 sec)

MariaDB [mysql]> alter table salesman
    -> modify commission numeric(10,2);
Query OK, 6 rows affected (0.069 sec)
Records: 6  Duplicates: 0  Warnings: 0

MariaDB [mysql]> update table salesman
    -> set commission=150.5 where salesman_id=5001;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'table salesman
set commission=150.5 where salesman_id=5001' at line 1
MariaDB [mysql]> update salesman
    -> set commission=150.5 where salesman_id=5001;
Query OK, 3 rows affected (0.024 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [mysql]> select * from salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hooq | New York |     150.50 |
|        5001 | Nail Knite | Paris    |     150.50 |
|        5003 | Pit Alex   | London   |       0.00 |
|        5005 | Mc Lyon    |          |       0.00 |
|        5001 | James Hooq | New York |     150.50 |
|        5003 | Lauson Hen | Rome     |       0.00 |
+-------------+------------+----------+------------+
6 rows in set (0.001 sec)

MariaDB [mysql]> update salesman
    -> set commission=0.15 where salesman_id=5001;
Query OK, 3 rows affected (0.014 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [mysql]> select * from salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hooq | New York |       0.15 |
|        5001 | Nail Knite | Paris    |       0.15 |
|        5003 | Pit Alex   | London   |       0.00 |
|        5005 | Mc Lyon    |          |       0.00 |
|        5001 | James Hooq | New York |       0.15 |
|        5003 | Lauson Hen | Rome     |       0.00 |
+-------------+------------+----------+------------+
6 rows in set (0.000 sec)

MariaDB [mysql]> update salesman
    -> set commission=0.11 where salesman_id=5005;
Query OK, 1 row affected (0.018 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [mysql]> select * from salesman;
+-------------+------------+----------+------------+
| salesman_id | name       | city     | commission |
+-------------+------------+----------+------------+
|        5001 | James Hooq | New York |       0.15 |
|        5001 | Nail Knite | Paris    |       0.15 |
|        5003 | Pit Alex   | London   |       0.00 |
|        5005 | Mc Lyon    |          |       0.11 |
|        5001 | James Hooq | New York |       0.15 |
|        5003 | Lauson Hen | Rome     |       0.00 |
+-------------+------------+----------+------------+
6 rows in set (0.001 sec)

MariaDB [mysql]> update salesman
    -> set commission=0.12 where salesman_id=5003;
Query OK, 2 rows affected (0.014 sec)
Rows matched: 2  Changed: 2  Warnings: 0

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
6 rows in set (0.001 sec)

MariaDB [mysql]> select salesman_id, name, city, customer_id from salesman,customer
    -> where salesman.salesman_id=customer.salesman_id;
ERROR 1052 (23000): Column 'salesman_id' in field list is ambiguous
MariaDB [mysql]> select salesman_id, name, city, customer_id from salesman,customer
    -> where salesman.salesman_id;
ERROR 1052 (23000): Column 'salesman_id' in field list is ambiguous
MariaDB [mysql]> select salesman_id, name, city, customer_id from salesman,customer
    -> where salesman.salesman_id=customer.salesman_id;
ERROR 1052 (23000): Column 'salesman_id' in field list is ambiguous
MariaDB [mysql]> select customer.salesman_id, name, city, customer_id from salesman,customer
    -> where salesman.salesman_id=customer.salesman_id;
ERROR 1052 (23000): Column 'city' in field list is ambiguous
MariaDB [mysql]> select customer.salesman_id, name, customer_id from salesman,customer
    -> where salesman.salesman_id=customer.salesman_id;
+-------------+------------+-------------+
| salesman_id | name       | customer_id |
+-------------+------------+-------------+
|        5001 | James Hooq |        3002 |
|        5001 | Nail Knite |        3002 |
|        5001 | James Hooq |        3002 |
|        5001 | James Hooq |        3007 |
|        5001 | Nail Knite |        3007 |
|        5001 | James Hooq |        3007 |
+-------------+------------+-------------+
6 rows in set (0.017 sec)

MariaDB [mysql]> select customer.salesman_id, name, salesman_id.city, customer_id from salesman join customer
    -> on salesman.salesman_id=customer.salesman_id;
ERROR 1054 (42S22): Unknown column 'salesman_id.city' in 'field list'
MariaDB [mysql]> select customer.salesman_id, name, salesman_id.city, customer_id from salesman join customer
    -> on salesman.salesman_id=customer.salesman_id;
ERROR 1054 (42S22): Unknown column 'salesman_id.city' in 'field list'
MariaDB [mysql]> select customer.salesman_id, name, customer_id.city, customer_id from salesman join customer
    -> on salesman.salesman_id=customer.salesman_id;
ERROR 1054 (42S22): Unknown column 'customer_id.city' in 'field list'
MariaDB [mysql]> select customer.salesman_id, name, city, customer_id from salesman join customer
    -> on salesman.salesman_id=customer.salesman_id;
ERROR 1052 (23000): Column 'city' in field list is ambiguous
MariaDB [mysql]> select customer.salesman_id, name, salesman.city, customer_id from salesman join customer
    -> on salesman.salesman_id=customer.salesman_id;
+-------------+------------+----------+-------------+
| salesman_id | name       | city     | customer_id |
+-------------+------------+----------+-------------+
|        5001 | James Hooq | New York |        3002 |
|        5001 | Nail Knite | Paris    |        3002 |
|        5001 | James Hooq | New York |        3002 |
|        5001 | James Hooq | New York |        3007 |
|        5001 | Nail Knite | Paris    |        3007 |
|        5001 | James Hooq | New York |        3007 |
+-------------+------------+----------+-------------+
6 rows in set (0.001 sec)

MariaDB [mysql]> select customer.salesman_id, name, salesman.city, customer_id from salesman left join customer
    -> on salesman.salesman_id=customer.salesman_id;
+-------------+------------+----------+-------------+
| salesman_id | name       | city     | customer_id |
+-------------+------------+----------+-------------+
|        5001 | James Hooq | New York |        3002 |
|        5001 | Nail Knite | Paris    |        3002 |
|        5001 | James Hooq | New York |        3002 |
|        5001 | James Hooq | New York |        3007 |
|        5001 | Nail Knite | Paris    |        3007 |
|        5001 | James Hooq | New York |        3007 |
|        NULL | Pit Alex   | London   |        NULL |
|        NULL | Mc Lyon    |          |        NULL |
|        NULL | Lauson Hen | Rome     |        NULL |
+-------------+------------+----------+-------------+
9 rows in set (0.012 sec)

MariaDB [mysql]> select customer.salesman_id, name, salesman.city, customer_id from salesman right join customer
    -> on salesman.salesman_id=customer.salesman_id;
+-------------+------------+----------+-------------+
| salesman_id | name       | city     | customer_id |
+-------------+------------+----------+-------------+
|        5001 | James Hooq | New York |        3002 |
|        5001 | James Hooq | New York |        3007 |
|        5001 | Nail Knite | Paris    |        3002 |
|        5001 | Nail Knite | Paris    |        3007 |
|        5001 | James Hooq | New York |        3002 |
|        5001 | James Hooq | New York |        3007 |
|        5002 | NULL       | NULL     |        3005 |
|        NULL | NULL       | NULL     |        3001 |
|        5006 | NULL       | NULL     |        3004 |
|        NULL | NULL       | NULL     |        3009 |
|        5002 | NULL       | NULL     |        3008 |
|        5007 | NULL       | NULL     |        3003 |
+-------------+------------+----------+-------------+
12 rows in set (0.001 sec)

MariaDB [mysql]> select customer.salesman_id, name, salesman.city, customer_id from salesman left join customer
    -> on salesman.salesman_id=customer.salesman_id
    -> select customer.salesman_id, name, salesman.city, customer_id from salesman right join customer
    -> on salesman.salesman_id=customer.salesman_id;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select customer.salesman_id, name, salesman.city, customer_id from salesman r...' at line 3
ERROR: No query specified

MariaDB [mysql]> select customer.salesman_id, name, salesman.city, customer_id from salesman left join customer
    -> on salesman.salesman_id=customer.salesman_id
    -> union
    -> select customer.salesman_id, name, salesman.city, customer_id from salesman right join customer
    -> on salesman.salesman_id=customer.salesman_id;
+-------------+------------+----------+-------------+
| salesman_id | name       | city     | customer_id |
+-------------+------------+----------+-------------+
|        5001 | James Hooq | New York |        3002 |
|        5001 | Nail Knite | Paris    |        3002 |
|        5001 | James Hooq | New York |        3007 |
|        5001 | Nail Knite | Paris    |        3007 |
|        NULL | Pit Alex   | London   |        NULL |
|        NULL | Mc Lyon    |          |        NULL |
|        NULL | Lauson Hen | Rome     |        NULL |
|        5002 | NULL       | NULL     |        3005 |
|        NULL | NULL       | NULL     |        3001 |
|        5006 | NULL       | NULL     |        3004 |
|        NULL | NULL       | NULL     |        3009 |
|        5002 | NULL       | NULL     |        3008 |
|        5007 | NULL       | NULL     |        3003 |
+-------------+------------+----------+-------------+
13 rows in set (0.013 sec)

MariaDB [mysql]>