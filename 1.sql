
Setting environment for using XAMPP for Windows.
yashg@YASH c:\xampp
# mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.28-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| argosy             |
| ctm_ems            |
| cybhr              |
| frames             |
| freshfoodie        |
| information_schema |
| litehaus           |
| ltca               |
| mysql              |
| performance_schema |
| phpmyadmin         |
| rememberedforever  |
| slidewar           |
| test               |
| workrooms          |
+--------------------+
15 rows in set (0.061 sec)

MariaDB [(none)]> use mysql;
Database changed
MariaDB [mysql]> desc dept;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Deptno | int(11)     | YES  |     | NULL    |       |
| dname  | varchar(25) | YES  |     | NULL    |       |
| loc    | varchar(30) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.050 sec)

MariaDB [mysql]> select * from dept;
Empty set (0.028 sec)

MariaDB [mysql]> insert into dept
    -> values(10, HR, Mumbai);
ERROR 1054 (42S22): Unknown column 'HR' in 'field list'
MariaDB [mysql]> insert into dept
    -> values(10, 'HR', Mumbai);
ERROR 1054 (42S22): Unknown column 'Mumbai' in 'field list'
MariaDB [mysql]> insert into dept
    -> values(10, 'HR', 'Mumbai');
Query OK, 1 row affected (0.016 sec)

MariaDB [mysql]> select * from dept;
+--------+-------+--------+
| Deptno | dname | loc    |
+--------+-------+--------+
|     10 | HR    | Mumbai |
+--------+-------+--------+
1 row in set (0.014 sec)

MariaDB [mysql]> insert into dept
    -> values(11, 'Head', 'Pune');
Query OK, 1 row affected (0.003 sec)

MariaDB [mysql]> select * from dept;
+--------+-------+--------+
| Deptno | dname | loc    |
+--------+-------+--------+
|     10 | HR    | Mumbai |
|     11 | Head  | Pune   |
+--------+-------+--------+
2 rows in set (0.001 sec)

MariaDB [mysql]> insert into dept
    -> values(12, 'Co-head','Banglore');
Query OK, 1 row affected (0.003 sec)

MariaDB [mysql]> select * from dept;
+--------+---------+----------+
| Deptno | dname   | loc      |
+--------+---------+----------+
|     10 | HR      | Mumbai   |
|     11 | Head    | Pune     |
|     12 | Co-head | Banglore |
+--------+---------+----------+
3 rows in set (0.001 sec)

MariaDB [mysql]> show tables;
+---------------------------+
| Tables_in_mysql           |
+---------------------------+
| column_stats              |
| columns_priv              |
| db                        |
| dept                      |
| event                     |
| func                      |
| general_log               |
| global_priv               |
| gtid_slave_pos            |
| help_category             |
| help_keyword              |
| help_relation             |
| help_topic                |
| index_stats               |
| innodb_index_stats        |
| innodb_table_stats        |
| plugin                    |
| proc                      |
| procs_priv                |
| proxies_priv              |
| roles_mapping             |
| servers                   |
| slow_log                  |
| table_stats               |
| tables_priv               |
| time_zone                 |
| time_zone_leap_second     |
| time_zone_name            |
| time_zone_transition      |
| time_zone_transition_type |
| transaction_registry      |
| user                      |
+---------------------------+
32 rows in set (0.003 sec)

MariaDB [mysql]> create table it
    -> (srno int(11), Name varchar(30), User varchar(30), Loc varchar(30), empno int(11));
Query OK, 0 rows affected (0.030 sec)

MariaDB [mysql]> desc it;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| srno  | int(11)     | YES  |     | NULL    |       |
| Name  | varchar(30) | YES  |     | NULL    |       |
| User  | varchar(30) | YES  |     | NULL    |       |
| Loc   | varchar(30) | YES  |     | NULL    |       |
| empno | int(11)     | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.038 sec)

MariaDB [mysql]> insert into it
    -> values(1, 'Drishti','DG','Mumbai',10);
Query OK, 1 row affected (0.016 sec)

MariaDB [mysql]> select * from it;
+------+---------+------+--------+-------+
| srno | Name    | User | Loc    | empno |
+------+---------+------+--------+-------+
|    1 | Drishti | DG   | Mumbai |    10 |
+------+---------+------+--------+-------+
1 row in set (0.001 sec)

MariaDB [mysql]> insert into it
    -> values(2, 'Mishti','MJ','Pune',20);
Query OK, 1 row affected (0.016 sec)

MariaDB [mysql]> select * from it;
+------+---------+------+--------+-------+
| srno | Name    | User | Loc    | empno |
+------+---------+------+--------+-------+
|    1 | Drishti | DG   | Mumbai |    10 |
|    2 | Mishti  | MJ   | Pune   |    20 |
+------+---------+------+--------+-------+
2 rows in set (0.001 sec)

MariaDB [mysql]> insert into it
    -> values(3, 'Saumya','SS','Banglore',30);
Query OK, 1 row affected (0.014 sec)

MariaDB [mysql]> select * from it;
+------+---------+------+----------+-------+
| srno | Name    | User | Loc      | empno |
+------+---------+------+----------+-------+
|    1 | Drishti | DG   | Mumbai   |    10 |
|    2 | Mishti  | MJ   | Pune     |    20 |
|    3 | Saumya  | SS   | Banglore |    30 |
+------+---------+------+----------+-------+
3 rows in set (0.001 sec)

MariaDB [mysql]> alter table
    -> add remarks varchar(30
    ->
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'add remarks varchar(30' at line 2
MariaDB [mysql]> alter table it
    -> add remarks varchar(30);
Query OK, 0 rows affected (0.035 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [mysql]> select * from it;
+------+---------+------+----------+-------+---------+
| srno | Name    | User | Loc      | empno | remarks |
+------+---------+------+----------+-------+---------+
|    1 | Drishti | DG   | Mumbai   |    10 | NULL    |
|    2 | Mishti  | MJ   | Pune     |    20 | NULL    |
|    3 | Saumya  | SS   | Banglore |    30 | NULL    |
+------+---------+------+----------+-------+---------+
3 rows in set (0.001 sec)

MariaDB [mysql]> insert into it
    -> values(1, 'Drishti','DG','Mumbai',10,'Good');
Query OK, 1 row affected (0.016 sec)

MariaDB [mysql]> select * from it;
+------+---------+------+----------+-------+---------+
| srno | Name    | User | Loc      | empno | remarks |
+------+---------+------+----------+-------+---------+
|    1 | Drishti | DG   | Mumbai   |    10 | NULL    |
|    2 | Mishti  | MJ   | Pune     |    20 | NULL    |
|    3 | Saumya  | SS   | Banglore |    30 | NULL    |
|    1 | Drishti | DG   | Mumbai   |    10 | Good    |
+------+---------+------+----------+-------+---------+
4 rows in set (0.001 sec)

MariaDB [mysql]> alter table it
    -> modify remarks
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 2
MariaDB [mysql]> select * from it
    -> where remarks='Good' ;
+------+---------+------+--------+-------+---------+
| srno | Name    | User | Loc    | empno | remarks |
+------+---------+------+--------+-------+---------+
|    1 | Drishti | DG   | Mumbai |    10 | Good    |
+------+---------+------+--------+-------+---------+
1 row in set (0.001 sec)

MariaDB [mysql]> select * from it
    -> where remarks='Good'
    -> where remarks='Good'
    -> where remarks='Good' ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where remarks='Good'
where remarks='Good'' at line 3
MariaDB [mysql]> select * from it
    -> where remarks='Good'
    -> where remarks='Good'
    -> where remarks='Good'
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where remarks='Good'
where remarks='Good'' at line 3
MariaDB [mysql]> select * from it
    -> where remarks='Good' or name='Drishti'
    -> where remarks='Good' or name='Mishti'
    -> where remarks='Good' or name='Saumya'
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where remarks='Good' or name='Mishti'
where remarks='Good' or name='Saumya'' at line 3
MariaDB [mysql]> select * from it
    -> where remarks='Good' or name='Drishti'
    -> or remarks='Good' or name='Mishti'
    -> or remarks='Good'or name='Saumya'
    -> ;
+------+---------+------+----------+-------+---------+
| srno | Name    | User | Loc      | empno | remarks |
+------+---------+------+----------+-------+---------+
|    1 | Drishti | DG   | Mumbai   |    10 | NULL    |
|    2 | Mishti  | MJ   | Pune     |    20 | NULL    |
|    3 | Saumya  | SS   | Banglore |    30 | NULL    |
|    1 | Drishti | DG   | Mumbai   |    10 | Good    |
+------+---------+------+----------+-------+---------+
4 rows in set (0.001 sec)

MariaDB [mysql]> alter table it
    ->