mysql> create db

mysql> CREATE DATABASE DB1;
Query OK, 1 row affected (0.03 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| collage            |
| db                 |
| db1                |
| information_schema |
| mydb               |
| mysql              |
| performance_schema |
+--------------------+
7 rows in set (0.04 sec)

mysql> USE DB1;
Database changed
mysql> SELECT * FROM EMPLOYYE_RECORDS;
Empty set (0.02 sec)


mysql> SELECT * FROM EMPLOYEE_RECORDS;
+----+------------+-----------+--------+------------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       |
+----+------------+-----------+--------+------------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 |
+----+------------+-----------+--------+------------+
3 rows in set (0.00 sec)

mysql> SELECT SALARY FROM EMPLOYEE_RECORDS;
+--------+
| SALARY |
+--------+
|  15000 |
|  15000 |
|  16000 |
+--------+
3 rows in set (0.00 sec)

mysql> SELECT SALARY FROM EMPLOYEE_RECORDS WHERE FIRST_NAME = "HIMANSHI";
+--------+
| SALARY |
+--------+
|  15000 |
+--------+
1 row in set (0.01 sec)

mysql> ALTER TABLE EMPLOYEE_RECORDS ADD GENDER VARCHAR(10);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET GENDER = 'F' WHERE FIRST_NAME = 'HIMANSHI';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET GENDER = 'M' WHERE FIRST_NAME = 'KAMAL';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET GENDER = 'M' WHERE FIRST_NAME = 'NITISH';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE_RECORDS;
+----+------------+-----------+--------+------------+--------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER |
+----+------------+-----------+--------+------------+--------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      |
+----+------------+-----------+--------+------------+--------+
3 rows in set (0.00 sec)

mysql> select sum(salary) from EMPLOYEE_RECORDS;
+-------------+
| sum(salary) |
+-------------+
|       46000 |
+-------------+
1 row in set (0.02 sec)

mysql> SELECT MAX(SALARY) FROM EMPLOYEE_RECORDS ;
+-------------+
| MAX(SALARY) |
+-------------+
|       16000 |
+-------------+
1 row in set (0.01 sec)

mysql> SELECT SUM(SALARY) FROM EMPLOYEE_RECORDS WHERE GENDER = 'M';
+-------------+
| SUM(SALARY) |
+-------------+
|       31000 |
+-------------+
1 row in set (0.00 sec)


mysql> SELECT MIN(SALARY) FROM EMPLOYEE_RECORDS;
+-------------+
| MIN(SALARY) |
+-------------+
|       15000 |
+-------------+
1 row in set (0.00 sec)


mysql> SELECT COUNT(*) FROM EMPLOYEE_RECORDS;
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> DESCRIBE EMPLOYEE_RECORDS
    -> ;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| ID         | int          | NO   | PRI | NULL    | auto_increment |
| FIRST_NAME | varchar(255) | NO   |     | NULL    |                |
| LAST_NAME  | varchar(255) | YES  |     | NULL    |                |
| SALARY     | int          | YES  |     | NULL    |                |
| DATE       | date         | YES  |     | NULL    |                |
| GENDER     | varchar(10)  | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
6 rows in set (0.03 sec)

mysql> SELECT FIRST_NAME AS RAHUL FROM EMPLOYEE_RECORDS;
+----------+
| RAHUL    |
+----------+
| HIMANSHI |
| KAMAL    |
| NITISH   |
+----------+
3 rows in set (0.00 sec)


--UC 8
mysql> ALTER TABLE EMPLOYEE_RECORDS ADD EMPLOYEE_PHONE VARCHAR(10);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET EMLOYEE_PHONE("6483629279") WHERE FIRST_NAME = "HIMANSHI";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '("6483629279") WHERE FIRST_NAME = "HIMANSHI"' at line 1
mysql> UPDATE EMPLOYEE_RECORDS SET EMPLOYEE_PHONE("6483629279") WHERE FIRST_NAME = "HIMANSHI";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '("6483629279") WHERE FIRST_NAME = "HIMANSHI"' at line 1
mysql> UPDATE EMPLOYEE_RECORDS SET EMPLOYEE_PHONE("648362927") WHERE FIRST_NAME = "HIMANSHI";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '("648362927") WHERE FIRST_NAME = "HIMANSHI"' at line 1
mysql> UPDATE EMPLOYEE_RECORDS SET EMPLOYEE_PHONE = "648362927" WHERE FIRST_NAME = "HIMANSHI";
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET EMPLOYEE_PHONE = "748363447" WHERE FIRST_NAME = "KAMAL";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET EMPLOYEE_PHONE = "827382629" WHERE FIRST_NAME = "NITISH";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE_RECORDS;
+----+------------+-----------+--------+------------+--------+----------------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER | EMPLOYEE_PHONE |
+----+------------+-----------+--------+------------+--------+----------------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      | 648362927      |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      | 748363447      |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      | 827382629      |
+----+------------+-----------+--------+------------+--------+----------------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE EMPLOYEE_RECORDS ADD ADDRESS VARCHAR(500);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET ADDRESS = "RAJPURA PB" WHERE FIRST_NAME = "HIMANSHI";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET ADDRESS = "PATNA BH" WHERE FIRST_NAME = "KAMAL";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS SET ADDRESS = "DELHI DL" WHERE FIRST_NAME = "NITISH";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE_RECORDS;
+----+------------+-----------+--------+------------+--------+----------------+------------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER | EMPLOYEE_PHONE | ADDRESS    |
+----+------------+-----------+--------+------------+--------+----------------+------------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      | 648362927      | RAJPURA PB |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      | 748363447      | PATNA BH   |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      | 827382629      | DELHI DL   |
+----+------------+-----------+--------+------------+--------+----------------+------------+
3 rows in set (0.00 sec)

--UC 9
mysql> ALTER TABLE EMPLOYEE_RECORDS
    -> ADD basic_Pay INT,
    -> ADD deductions INT,
    -> ADD Taxable_Pay INT,
    -> ADD Income_Tax INT,
    -> ADD net_pay INT;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS
    -> SET basic_Pay = 20000,
    ->     deductions = 2000,
    ->     Taxable_Pay = 18000,
    ->     Income_Tax = 1800,
    ->     net_pay = 16200
    -> WHERE FIRST_NAME = 'HIMANSHI';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS
    -> SET basic_Pay = 19000,
    ->     deductions = 1000,
    ->     Taxable_Pay = 18000,
    ->     Income_Tax = 1700,
    ->     net_pay = 16300
    -> WHERE FIRST_NAME = 'KAMAL';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYEE_RECORDS
    -> SET basic_Pay = 19000,
    ->     deductions = 1000,
    ->     Taxable_Pay = 18000,
    ->     Income_Tax = 1700,
    ->     net_pay = 16300
    -> WHERE FIRST_NAME = 'NITISH';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEE_RECORDS
    -> ;
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER | EMPLOYEE_PHONE | ADDRESS    | basic_Pay | deductions | Taxable_Pay | Income_Tax | net_pay |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      | 648362927      | RAJPURA PB |     20000 |       2000 |       18000 |       1800 |   16200 |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      | 748363447      | PATNA BH   |     19000 |       1000 |       18000 |       1700 |   16300 |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      | 827382629      | DELHI DL   |     19000 |       1000 |       18000 |       1700 |   16300 |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+
3 rows in set (0.00 sec)



--UC 10

mysql> use db1;
Database changed
mysql> select * from employee_records;
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER | EMPLOYEE_PHONE | ADDRESS    | basic_Pay | deductions | Taxable_Pay | Income_Tax | net_pay |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      | 648362927      | RAJPURA PB |     20000 |       2000 |       18000 |       1800 |   16200 |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      | 748363447      | PATNA BH   |     19000 |       1000 |       18000 |       1700 |   16300 |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      | 827382629      | DELHI DL   |     19000 |       1000 |       18000 |       1700 |   16300 |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+
3 rows in set (0.08 sec)

mysql> ATLER TABLE employee_records add role varchar(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ATLER TABLE employee_records add role varchar(50)' at line 1
mysql> ALTER TABLE employee_records ADD role VARCHAR(50);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> UPDATE employee_records SET role = "manager" WHERE FIRST_NAME = "HIMANSHI";
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_records SET role = "frontend-developer" WHERE FIRST_NAME = "kamal";
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employee_records SET role = "backend-developer" WHERE FIRST_NAME = "nitish";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_records;
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER | EMPLOYEE_PHONE | ADDRESS    | basic_Pay | deductions | Taxable_Pay | Income_Tax | net_pay | role               |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      | 648362927      | RAJPURA PB |     20000 |       2000 |       18000 |       1800 |   16200 | manager            |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      | 748363447      | PATNA BH   |     19000 |       1000 |       18000 |       1700 |   16300 | frontend-developer |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      | 827382629      | DELHI DL   |     19000 |       1000 |       18000 |       1700 |   16300 | backend-developer  |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO employee_records
    -> (first_name, last_name, salary, `date`, gender, employee_phone, address, basic_pay, deductions, taxable_pay, income_tax, net_pay, role)
    -> VALUES
    -> ('terissa', 'smith', 23000, '2002-12-21', 'F', '9283072927', 'australia', 2400, 1000, 20000, 1700, 15000, 'data-analyst');
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee_records;
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER | EMPLOYEE_PHONE | ADDRESS    | basic_Pay | deductions | Taxable_Pay | Income_Tax | net_pay | role               |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      | 648362927      | RAJPURA PB |     20000 |       2000 |       18000 |       1800 |   16200 | manager            |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      | 748363447      | PATNA BH   |     19000 |       1000 |       18000 |       1700 |   16300 | frontend-developer |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      | 827382629      | DELHI DL   |     19000 |       1000 |       18000 |       1700 |   16300 | backend-developer  |
|  4 | terissa    | smith     |  23000 | 2002-12-21 | F      | 9283072927     | australia  |      2400 |       1000 |       20000 |       1700 |   15000 | data-analyst       |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO employee_records
    -> (first_name, last_name, salary, `date`, gender, employee_phone, address, basic_pay, deductions, taxable_pay, income_tax, net_pay, role)
    -> VALUES
    -> ('terissa', 'smith', 23000, '2002-12-21', 'F', '9283072927', 'australia', 2400, 1000, 20000, 1700, 15000, 'data-analyst');
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee_records;
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
| ID | FIRST_NAME | LAST_NAME | SALARY | DATE       | GENDER | EMPLOYEE_PHONE | ADDRESS    | basic_Pay | deductions | Taxable_Pay | Income_Tax | net_pay | role               |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
|  1 | HIMANSHI   | JAIN      |  15000 | 2023-04-25 | F      | 648362927      | RAJPURA PB |     20000 |       2000 |       18000 |       1800 |   16200 | manager            |
|  2 | KAMAL      | HUSAIN    |  15000 | 2023-04-25 | M      | 748363447      | PATNA BH   |     19000 |       1000 |       18000 |       1700 |   16300 | frontend-developer |
|  3 | NITISH     | MISHRA    |  16000 | 2021-06-02 | M      | 827382629      | DELHI DL   |     19000 |       1000 |       18000 |       1700 |   16300 | backend-developer  |
|  4 | terissa    | smith     |  23000 | 2002-12-21 | F      | 9283072927     | australia  |      2400 |       1000 |       20000 |       1700 |   15000 | data-analyst       |
|  5 | terissa    | smith     |  23000 | 2002-12-21 | F      | 9283072927     | australia  |      2400 |       1000 |       20000 |       1700 |   15000 | data-analyst       |
+----+------------+-----------+--------+------------+--------+----------------+------------+-----------+------------+-------------+------------+---------+--------------------+
5 rows in set (0.00 sec)