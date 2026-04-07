
mysql> CREATE DATABASE company;
Query OK, 1 row affected (0.01 sec)

mysql> USE company;
Database changed
mysql> CREATE TABLE employee(emp_name VARCHAR(50), department VARCHAR(50), salary INT,date_of_joining INT,email VARCHAR(100));
Query OK, 0 rows affected (0.05 sec)

mysql> DESC employee
    -> DESC employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DESC employee' at line 2
mysql> DESCRIBE employee;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| emp_name        | varchar(50)  | YES  |     | NULL    |       |
| department      | varchar(50)  | YES  |     | NULL    |       |
| salary          | int          | YES  |     | NULL    |       |
| date_of_joining | int          | YES  |     | NULL    |       |
| email           | varchar(100) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> ALTER TABLE employee Add phone_no  VARCHAR(50);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE employee;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| emp_name        | varchar(50)  | YES  |     | NULL    |       |
| department      | varchar(50)  | YES  |     | NULL    |       |
| salary          | int          | YES  |     | NULL    |       |
| date_of_joining | int          | YES  |     | NULL    |       |
| email           | varchar(100) | YES  |     | NULL    |       |
| phone_no        | varchar(50)  | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> ALTER TABLE employee DROP COLUMN email;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE employee;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| emp_name        | varchar(50) | YES  |     | NULL    |       |
| department      | varchar(50) | YES  |     | NULL    |       |
| salary          | int         | YES  |     | NULL    |       |
| date_of_joining | int         | YES  |     | NULL    |       |
| phone_no        | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE employee RENAME COLUMN emp_name TO name;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE employee;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| name            | varchar(50) | YES  |     | NULL    |       |
| department      | varchar(50) | YES  |     | NULL    |       |
| salary          | int         | YES  |     | NULL    |       |
| date_of_joining | int         | YES  |     | NULL    |       |
| phone_no        | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE employee MODIFY salary BIGINT;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE employee;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| name            | varchar(50) | YES  |     | NULL    |       |
| department      | varchar(50) | YES  |     | NULL    |       |
| salary          | bigint      | YES  |     | NULL    |       |
| date_of_joining | int         | YES  |     | NULL    |       |
| phone_no        | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> RENAME TABLE employee to emp;
Query OK, 0 rows affected (0.04 sec)

mysql> DESCRIBE emp;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| name            | varchar(50) | YES  |     | NULL    |       |
| department      | varchar(50) | YES  |     | NULL    |       |
| salary          | bigint      | YES  |     | NULL    |       |
| date_of_joining | int         | YES  |     | NULL    |       |
| phone_no        | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql>