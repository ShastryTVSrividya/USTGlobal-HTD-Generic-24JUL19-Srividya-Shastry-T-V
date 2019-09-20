1.How to create database?
mysql> create database UST_GLOBAl;
Query OK, 1 row affected (0.09 sec)
-------------------------------------------------------------------------------------------------------------------
2.How to make use of database created?
mysql> use UST_Global;
Database changed
-------------------------------------------------------------------------------------------------------------------
3.View tables in current databases?
mysql> show tables;
Empty set (0.03 sec)
-------------------------------------------------------------------------------------------------------------------
4.how to create a table?
mysql> create table student(id int,name varchar(120),emailId varchar(120));
Query OK, 0 rows affected (0.92 sec)
-------------------------------------------------------------------------------------------------------------------
3.
mysql> show tables;
+----------------------+
| Tables_in_ust_global |
+----------------------+
| student              |
+----------------------+
1 row in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
5.How to display the table?
mysql> desc student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | YES  |     | NULL    |       |
| name    | varchar(120) | YES  |     | NULL    |       |
| emailId | varchar(120) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.14 sec)
-------------------------------------------------------------------------------------------------------------------
6.Query to drop tabel
mysql> drop table student;
Query OK, 0 rows affected (0.13 sec)

mysql> show tables;
Empty set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
7.Query to drop database
mysql> drop database UST_Global;
Query OK, 0 rows affected (0.21 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
mysql> create database Company;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| company            |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------

mysql> use company;
Database changed

mysql> show tables;
Empty set (0.00 sec)

mysql> create table company(id int,name varchar(120),emailId var
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| company           |
+-------------------+
1 row in set (0.00 sec)

mysql> desc company;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | YES  |     | NULL    |       |
| name    | varchar(120) | YES  |     | NULL    |       |
| emailId | varchar(120) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)
-------------------------------------------------------------------------------------------------------------------
8.Alter- Add column to table
mysql> alter table company add column contactNo int;
Query OK, 0 rows affected (0.24 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc company;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(11)      | YES  |     | NULL    |       |
| name      | varchar(120) | YES  |     | NULL    |       |
| emailId   | varchar(120) | YES  |     | NULL    |       |
| contactNo | int(11)      | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
Alternate:
mysql> alter table company add Address varchar(120);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc company;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(11)      | YES  |     | NULL    |       |
| name      | varchar(120) | YES  |     | NULL    |       |
| emailId   | varchar(120) | YES  |     | NULL    |       |
| contactNo | int(11)      | YES  |     | NULL    |       |
| Address   | varchar(120) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
9.alter-Drop a column
mysql> alter table company drop address;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc company;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(11)      | YES  |     | NULL    |       |
| name      | varchar(120) | YES  |     | NULL    |       |
| emailId   | varchar(120) | YES  |     | NULL    |       |
| contactNo | int(11)      | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
Alternate:
mysql> alter table company drop column contactNo;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc company;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | YES  |     | NULL    |       |
| name    | varchar(120) | YES  |     | NULL    |       |
| emailId | varchar(120) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
mysql> alter table company add column contactNo int;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

10.alter- change column name
mysql> alter table company change contactNo mobileNo int;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc company;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| id       | int(11)      | YES  |     | NULL    |       |
| name     | varchar(120) | YES  |     | NULL    |       |
| emailId  | varchar(120) | YES  |     | NULL    |       |
| mobileNo | int(11)      | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
11.Rename table name
mysql> rename table company to company_info;
Query OK, 0 rows affected (0.05 sec)

mysql> desc company_info;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(11)      | YES  |     | NULL    |       |
| name      | varchar(120) | YES  |     | NULL    |       |
| emailId   | varchar(120) | YES  |     | NULL    |       |
| contactNo | int(11)      | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
12.Rename database name
mysql> rename database company to company_info;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'datab
ase company to company_info' at line 1
-------------------------------------------------------------------------------------------------------------------
13.Insert data into table
mysql> insert into company_info(id,name,emailId,contactNo) values(00
l,"UST_GLOBAl","ustglobal@gmail.com",1234);
Query OK, 1 row affected (0.00 sec)

mysql> desc company_info;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(11)      | YES  |     | NULL    |       |
| name      | varchar(120) | YES  |     | NULL    |       |
| emailId   | varchar(120) | YES  |     | NULL    |       |
| contactNo | int(11)      | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
14.To view records inserted
mysql> select * from company_info;
+------+------------+---------------------+-----------+
| id   | name       | emailId             | contactNo |
+------+------------+---------------------+-----------+
|    1 | UST_Global | ustglobal@gmail.com |      1234 |
+------+------------+---------------------+-----------+
1 row in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
alternate
mysql> insert into company_info values(001,'TEST YANTRA','testyantra@gmail.com'
4648);
Query OK, 1 row affected (0.02 sec)

mysql> select * from company_info;
+------+-------------+----------------------+-----------+
| id   | name        | emailId              | contactNo |
+------+-------------+----------------------+-----------+
|    1 | UST_Global  | ustglobal@gmail.com  |      1234 |
|    1 | TEST YANTRA | testyantra@gmail.com |      4648 |
+------+-------------+----------------------+-----------+
2 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
alternate
mysql> insert into company_info values(004,'LOWES','lowes@gmail.com',9876),(005,
'GOOGLE','google@gmail.com',6767);
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from company_info;
+------+-------------+----------------------+-----------+
| id   | name        | emailId              | contactNo |
+------+-------------+----------------------+-----------+
|    1 | UST_Global  | ustglobal@gmail.com  |      1234 |
|    1 | TEST YANTRA | testyantra@gmail.com |      4648 |
|    4 | LOWES       | lowes@gmail.com      |      9876 |
|    5 | GOOGLE      | google@gmail.com     |      6767 |
+------+-------------+----------------------+-----------+
4 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
mysql> insert into company_info(id,name) values(006,'ACCENTURE');
Query OK, 1 row affected (0.00 sec)

mysql> select * from company_info;
+------+-------------+----------------------+-----------+
| id   | name        | emailId              | contactNo |
+------+-------------+----------------------+-----------+
|    1 | UST_Global  | ustglobal@gmail.com  |      1234 |
|    1 | TEST YANTRA | testyantra@gmail.com |      4648 |
|    4 | LOWES       | lowes@gmail.com      |      9876 |
|    5 | GOOGLE      | google@gmail.com     |      6767 |
|    6 | ACCENTURE   | NULL                 |      NULL |
+------+-------------+----------------------+-----------+
5 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
15.Update whole column values
mysql> update company_info set contactNo=12345;
Query OK, 5 rows affected (0.41 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from company_info;
+------+-------------+----------------------+-----------+
| id   | name        | emailId              | contactNo |
+------+-------------+----------------------+-----------+
|    1 | UST_Global  | ustglobal@gmail.com  |     12345 |
|    1 | TEST YANTRA | testyantra@gmail.com |     12345 |
|    4 | LOWES       | lowes@gmail.com      |     12345 |
|    5 | GOOGLE      | google@gmail.com     |     12345 |
|    6 | ACCENTURE   | NULL                 |     12345 |
+------+-------------+----------------------+-----------+
5 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
16.delete
mysql> delete from company_info;
Query OK, 5 rows affected (0.11 sec)

mysql> select * from company_info;
Empty set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
17.TRUNCATE
mysql> truncate table company_info;
Query OK, 0 rows affected (0.60 sec)

mysql> select * from company_info;
Empty set (0.00 sec)

mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| company_info      |
+-------------------+
1 row in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
18.Projection
mysql> select * from company_info;
+------+-------------+-------------------+-----------+
| id   | name        | emailId           | contactNo |
+------+-------------+-------------------+-----------+
|    1 | UST Global  | global@gmail.com  |      1234 |
|    2 | TEST YANTRA | yantra@gmail.com  |      6746 |
|    3 | LOWES       | lowes@gmail.com   |      4563 |
|    4 | Q-SPIDERS   | spiders@gmail.com |    864728 |
|    5 | vipro       | vipro@gmail.com   |    637734 |
+------+-------------+-------------------+-----------+
5 rows in set (0.00 sec)

mysql> select id,name from company_info;
+------+-------------+
| id   | name        |
+------+-------------+
|    1 | UST Global  |
|    2 | TEST YANTRA |
|    3 | LOWES       |
|    4 | Q-SPIDERS   |
|    5 | vipro       |
+------+-------------+
5 rows in set (0.02 sec)
--------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
19.where
mysql> select * from company_info where id=1;
+------+------------+------------------+-----------+
| id   | name       | emailId          | contactNo |
+------+------------+------------------+-----------+
|    1 | UST Global | global@gmail.com |      1234 |
+------+------------+------------------+-----------+
1 row in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
mysql> select id,name from company_info where name='TEST YANTRA';
+------+-------------+
| id   | name        |
+------+-------------+
|    2 | TEST YANTRA |
+------+-------------+
1 row in set (0.03 sec)
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
20.update
mysql> update company_info set name='BOTCH'where id=3;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from company_info;
+------+-------------+-------------------+-----------+
| id   | name        | emailId           | contactNo |
+------+-------------+-------------------+-----------+
|    1 | UST Global  | global@gmail.com  |      1234 |
|    2 | TEST YANTRA | yantra@gmail.com  |      6746 |
|    3 | BOTCH       | lowes@gmail.com   |      4563 |
|    4 | Q-SPIDERS   | spiders@gmail.com |    864728 |
|    5 | vipro       | vipro@gmail.com   |    637734 |
+------+-------------+-------------------+-----------+
5 rows in set (0.00 sec)
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
21.delete perticular row
mysql> delete from company_info where id=3;
Query OK, 1 row affected (0.07 sec)

mysql> select * from company_info;
+------+-------------+-------------------+-----------+
| id   | name        | emailId           | contactNo |
+------+-------------+-------------------+-----------+
|    1 | UST Global  | global@gmail.com  |      1234 |
|    2 | TEST YANTRA | yantra@gmail.com  |      6746 |
|    4 | Q-SPIDERS   | spiders@gmail.com |    864728 |
|    5 | vipro       | vipro@gmail.com   |    637734 |
+------+-------------+-------------------+-----------+
4 rows in set (0.00 sec)

22.create primary key
mysql> create table student(id int,name varchar(120) not null,emailId varchar(12
0),primary key(id));
Query OK, 0 rows affected (0.40 sec)

mysql> desc student;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | NO   | PRI | NULL    |       |
| name    | varchar(120) | NO   |     | NULL    |       |
| emailId | varchar(120) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.02 sec)
mysql> insert into student values(1,'vidya','vidya@gmail.com')
    -> ;
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

mysql> create table employee_info(id int,name varchar(120) not null,emailId varc
har(120),designation varchar(120),mobileNo int,age int,DOB date,DOJ date,salary
double,dept_id int,blood_group varchar(30),primary key(id));
Query OK, 0 rows affected (0.07 sec)
-------------------------------------------------------------------------------------------------------------------
mysql> desc employee_info;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| id          | int(11)      | NO   | PRI | NULL    |       |
| name        | varchar(120) | NO   |     | NULL    |       |
| emailId     | varchar(120) | YES  |     | NULL    |       |
| designation | varchar(120) | YES  |     | NULL    |       |
| mobileNo    | int(11)      | YES  |     | NULL    |       |
| age         | int(11)      | YES  |     | NULL    |       |
| DOB         | date         | YES  |     | NULL    |       |
| DOJ         | date         | YES  |     | NULL    |       |
| salary      | double       | YES  |     | NULL    |       |
| dept_id     | int(11)      | YES  |     | NULL    |       |
| blood_group | varchar(30)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
11 rows in set (0.02 sec)

mysql> insert into employee_info values(116,'Slaney','slan@gmail.com','analyst',9934,27,'90-10-20','19-09-21',26000,50,'B+');
Query OK, 1 row affected (0.10 sec)

mysql> select * from employee_info;
+-----+----------+-----------------+-------------+----------+------+------------
+------------+--------+---------+-------------+
| id  | name     | emailId         | designation | mobileNo | age  | DOB
| DOJ        | salary | dept_id | blood_group |
+-----+----------+-----------------+-------------+----------+------+------------
+------------+--------+---------+-------------+
| 101 | Srividya | vidya@gmail.com | HR          |    99725 |   22 | 1997-10-22
| 2019-09-21 |  30000 |      10 | O+          |
+-----+----------+-----------------+-------------+----------+------+------------
+------------+--------+---------+-------------+
1 row in set (0.02 sec)

insert into employee_info values(115,'Chandana','chanduu@gmail.com','Clerk',9737,24,'86-10-01','13-01-22',33000,30,'AB+');

mysql> insert into employee_info values(110,'Vishesh','vish@gmail.com','Tester',4888,28,'94-08-10','18-10-06',55000,60,'0+'),(111,'Athreya Adiga','aathi@gmail.com','HR',7374,21,'99-08-24','20-06-30',46000,20,'A+'
),(112,'Priyanka S P','piaa@gmail.com','Selenium',8636,34,'95-12-23','19-11-22',48000,40,'B+'),(114,'Avinash Adiga','avii@gmail.com','Analyst',6372,37,'89-02-17','16-09-22',75000,50,'0+');

ALIASING
mysql> select id,blood_group as bg from employee_info;
+-----+------+
| id  | bg   |
+-----+------+
| 101 | O+   |
| 102 | AB+  |
| 103 | 0-   |
| 104 | B+   |
| 105 | AB-  |
| 106 | 0-   |
| 107 | 0-   |
| 108 | A+   |
| 109 | A+   |
| 110 | 0+   |
| 111 | A+   |
| 112 | B+   |
| 114 | 0+   |
| 115 | AB+  |
+-----+------+
>>query to display emplyee name,salary,designation and annual salary
mysql> select name,salary,designation,(salary*12) annual_salary from employee_info;
+-------------------+--------+-------------+---------------+
| name              | salary | designation | annual_salary |
+-------------------+--------+-------------+---------------+
| Srividya          |  30000 | HR          |        360000 |
| Vibha             |  35000 | Analyst     |        420000 |
| Siri              |  25000 | Tester      |        300000 |
| Praneetha Upadhya |  65000 | Software    |        780000 |
| Soundarya Kashyap |  45000 | salesman    |        540000 |
| Meghana B P       |  35000 | software    |        420000 |
| Supriya H P       |  20000 | Analyst     |        240000 |
| Ashwini M V       |  23000 | clerk       |        276000 |
| Laxmi Kashyap     |  35000 | salesman    |        420000 |
| Vishesh           |  55000 | Tester      |        660000 |
| Athreya Adiga     |  46000 | HR          |        552000 |
| Priyanka S P      |  48000 | salesman    |        576000 |
| Avinash Adiga     |  75000 | Analyst     |        900000 |
| Chandana          |  33000 | Clerk       |        396000 |
+-------------------+--------+-------------+---------------+
14 rows in set (0.00 sec)

>>query to give alias for all the columns in employee_info
mysql> select id id_no,name employee_name,emailId email,designation stream,mobileNo contactNo,age employee_age,dob dataOfdBirth,doj joining_date,salary sal,dept_id d_id
,blood_group bg from employee_info;
+-------+-------------------+---------------------+----------+-----------+--------------+--------------+--------------+-------+------+------+
| id_no | employee_name     | email               | stream   | contactNo | employee_age | dataOfdBirth | joining_date | sal   | d_id | bg   |
+-------+-------------------+---------------------+----------+-----------+--------------+--------------+--------------+-------+------+------+
|   101 | Srividya          | vidya@gmail.com     | HR       |     99725 |           22 | 1997-10-22   | 2019-09-21   | 30000 |   20 | O+   |
|   102 | Vibha             | vibha@gmail.com     | Analyst  |      9944 |           23 | 1995-07-29   | 2017-07-28   | 35000 |   50 | AB+  |
|   103 | Siri              | siri@gmail.com      | Tester   |      9684 |           36 | 1994-08-20   | 2016-12-19   | 25000 |   60 | 0-   |
|   104 | Praneetha Upadhya | praneetha@gmail.com | Software |      8874 |           36 | 1999-11-07   | 2028-10-16   | 65000 |   10 | B+   |
|   105 | Soundarya Kashyap | sumukha@gmail.com   | salesman |      8236 |           32 | 2006-09-17   | 2004-03-18   | 45000 |   40 | AB-  |
|   106 | Meghana B P       | meghuu@gmail.com    | software |      4887 |           30 | 1999-10-01   | 2022-12-19   | 35000 |   10 | 0-   |
|   107 | Supriya H P       | suppii@gmail.com    | Analyst  |      8773 |           25 | 1994-12-10   | 2011-12-19   | 20000 |   50 | 0-   |
|   108 | Ashwini M V       | ashuu@gmail.com     | clerk    |      4638 |           22 | 1992-10-06   | 2014-10-16   | 23000 |   30 | A+   |
|   109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman |      9238 |           33 | 1993-12-15   | 2004-03-18   | 35000 |   40 | A+   |
|   110 | Vishesh           | vish@gmail.com      | Tester   |      4888 |           28 | 1994-08-10   | 2018-10-06   | 55000 |   60 | 0+   |
|   111 | Athreya Adiga     | aathi@gmail.com     | HR       |      7374 |           21 | 1999-08-24   | 2020-06-30   | 46000 |   20 | A+   |
|   112 | Priyanka S P      | piaa@gmail.com      | salesman |      8636 |           34 | 1995-12-23   | 2019-11-22   | 48000 |   40 | B+   |
|   114 | Avinash Adiga     | avii@gmail.com      | Analyst  |      6372 |           37 | 1989-02-17   | 2016-09-22   | 75000 |   50 | 0+   |
|   115 | Chandana          | chanduu@gmail.com   | Clerk    |      9737 |           24 | 1986-10-01   | 2013-01-22   | 33000 |   30 | AB+  |
+-------+-------------------+---------------------+----------+-----------+--------------+--------------+--------------+-------+------+------+
14 rows in set (0.00 sec)

>>distinct
mysql> select distinct designation from employee_info;
+-------------+
| designation |
+-------------+
| HR          |
| Analyst     |
| Tester      |
| Software    |
| salesman    |
| clerk       |
+-------------+
>>query to display unique dept number from employee_info
mysql> select distinct dept_id from employee_info;
+---------+
| dept_id |
+---------+
|      20 |
|      50 |
|      60 |
|      10 |
|      40 |
|      30 |
+---------+

mysql> select distinct designation,dept_id from employee_info;
+-------------+---------+
| designation | dept_id |
+-------------+---------+
| HR          |      20 |
| Analyst     |      50 |
| Tester      |      60 |
| Software    |      10 |
| salesman    |      40 |
| clerk       |      30 |
+-------------+---------+


mysql> select distinct dept_id,age,designation from employee_info;
+---------+------+-------------+
| dept_id | age  | designation |
+---------+------+-------------+
|      20 |   22 | HR          |
|      50 |   23 | Analyst     |
|      60 |   36 | Tester      |
|      10 |   36 | Software    |
|      40 |   32 | salesman    |
|      10 |   30 | software    |
|      50 |   25 | Analyst     |
|      30 |   22 | clerk       |
|      40 |   33 | salesman    |
|      60 |   28 | Tester      |
|      20 |   21 | HR          |
|      40 |   34 | salesman    |
|      50 |   37 | Analyst     |
|      30 |   24 | Clerk       |
+---------+------+-------------+

query to display name,salary and salary incremented by 5000 and 
mysql> select name,salary,(salary+5000) incremented_salary from employee_info;
+-------------------+--------+--------------------+
| name              | salary | incremented_salary |
+-------------------+--------+--------------------+
| Srividya          |  30000 |              35000 |
| Vibha             |  35000 |              40000 |
| Siri              |  25000 |              30000 |
| Praneetha Upadhya |  65000 |              70000 |
| Soundarya Kashyap |  45000 |              50000 |
| Meghana B P       |  35000 |              40000 |
| Supriya H P       |  20000 |              25000 |
| Ashwini M V       |  23000 |              28000 |
| Laxmi Kashyap     |  35000 |              40000 |
| Vishesh           |  55000 |              60000 |
| Athreya Adiga     |  46000 |              51000 |
| Priyanka S P      |  48000 |              53000 |
| Avinash Adiga     |  75000 |              80000 |
| Chandana          |  33000 |              38000 |
+-------------------+--------+--------------------+
decremened by 5000
>>mysql> select name,salary,(salary-5000) decremented_salary from employee_info;
+-------------------+--------+--------------------+
| name              | salary | decremented_salary |
+-------------------+--------+--------------------+
| Srividya          |  30000 |              25000 |
| Vibha             |  35000 |              30000 |
| Siri              |  25000 |              20000 |
| Praneetha Upadhya |  65000 |              60000 |
| Soundarya Kashyap |  45000 |              40000 |
| Meghana B P       |  35000 |              30000 |
| Supriya H P       |  20000 |              15000 |
| Ashwini M V       |  23000 |              18000 |
| Laxmi Kashyap     |  35000 |              30000 |
| Vishesh           |  55000 |              50000 |
| Athreya Adiga     |  46000 |              41000 |
| Priyanka S P      |  48000 |              43000 |
| Avinash Adiga     |  75000 |              70000 |
| Chandana          |  33000 |              28000 |
+-------------------+--------+--------------------+
annual_salary
>>>mysql> select name,salary,(salary*12) annual_salary from employee_info;
+-------------------+--------+---------------+
| name              | salary | annual_salary |
+-------------------+--------+---------------+
| Srividya          |  30000 |        360000 |
| Vibha             |  35000 |        420000 |
| Siri              |  25000 |        300000 |
| Praneetha Upadhya |  65000 |        780000 |
| Soundarya Kashyap |  45000 |        540000 |
| Meghana B P       |  35000 |        420000 |
| Supriya H P       |  20000 |        240000 |
| Ashwini M V       |  23000 |        276000 |
| Laxmi Kashyap     |  35000 |        420000 |
| Vishesh           |  55000 |        660000 |
| Athreya Adiga     |  46000 |        552000 |
| Priyanka S P      |  48000 |        576000 |
| Avinash Adiga     |  75000 |        900000 |
| Chandana          |  33000 |        396000 |
+-------------------+--------+---------------+

>>>salary per-day
mysql> select name,salary,(salary*12) annual_salary,(salary*12/365) per_day from employee_info;
+-------------------+--------+---------------+--------------------+
| name              | salary | annual_salary | per_day            |
+-------------------+--------+---------------+--------------------+
| Srividya          |  30000 |        360000 |  986.3013698630137 |
| Vibha             |  35000 |        420000 | 1150.6849315068494 |
| Siri              |  25000 |        300000 |   821.917808219178 |
| Praneetha Upadhya |  65000 |        780000 |  2136.986301369863 |
| Soundarya Kashyap |  45000 |        540000 | 1479.4520547945206 |
| Meghana B P       |  35000 |        420000 | 1150.6849315068494 |
| Supriya H P       |  20000 |        240000 |  657.5342465753424 |
| Ashwini M V       |  23000 |        276000 |  756.1643835616438 |
| Laxmi Kashyap     |  35000 |        420000 | 1150.6849315068494 |
| Vishesh           |  55000 |        660000 | 1808.2191780821918 |
| Athreya Adiga     |  46000 |        552000 | 1512.3287671232877 |
| Priyanka S P      |  48000 |        576000 | 1578.0821917808219 |
| Avinash Adiga     |  75000 |        900000 |  2465.753424657534 |
| Chandana          |  33000 |        396000 | 1084.9315068493152 |
+-------------------+--------+---------------+--------------------+
>>>modulus
mysql> select 10%3;
+------+
| 10%3 |
+------+
|    1 |
+------+

>>query to display all the records excluding dept_id=10
mysql> select * from employee_info where dept_id!=10;
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com   | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com   | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com    | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 107 | Supriya H P       | suppii@gmail.com  | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com   | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com    | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga     | aathi@gmail.com   | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 112 | Priyanka S P      | piaa@gmail.com    | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com    | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
| 115 | Chandana          | chanduu@gmail.com | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
12 rows in set (0.00 sec)

mysql> select * from employee_info where dept_id<>10;
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com   | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com   | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com    | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 107 | Supriya H P       | suppii@gmail.com  | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com   | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com    | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga     | aathi@gmail.com   | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 112 | Priyanka S P      | piaa@gmail.com    | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com    | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
| 115 | Chandana          | chanduu@gmail.com | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>>query to display name,designation,mobileno,age,salary whose salary>25000
mysql> select name,designation,mobileNo,age,salary from employee_info where salary>25000;
+-------------------+-------------+----------+------+--------+
| name              | designation | mobileNo | age  | salary |
+-------------------+-------------+----------+------+--------+
| Srividya          | HR          |    99725 |   22 |  30000 |
| Vibha             | Analyst     |     9944 |   23 |  35000 |
| Praneetha Upadhya | Software    |     8874 |   36 |  65000 |
| Soundarya Kashyap | salesman    |     8236 |   32 |  45000 |
| Meghana B P       | software    |     4887 |   30 |  35000 |
| Laxmi Kashyap     | salesman    |     9238 |   33 |  35000 |
| Vishesh           | Tester      |     4888 |   28 |  55000 |
| Athreya Adiga     | HR          |     7374 |   21 |  46000 |
| Priyanka S P      | salesman    |     8636 |   34 |  48000 |
| Avinash Adiga     | Analyst     |     6372 |   37 |  75000 |
| Chandana          | Clerk       |     9737 |   24 |  33000 |
+-------------------+-------------+----------+------+--------+
-------------------------------------------------------------------------------------------------------------------
>>>>>>>query to display name,designation,mobileno,age,salary whose salary<25000;

mysql> select name,designation,mobileNo,age,salary from employee_info where salary<25000;
+-------------+-------------+----------+------+--------+
| name        | designation | mobileNo | age  | salary |
+-------------+-------------+----------+------+--------+
| Supriya H P | Analyst     |     8773 |   25 |  20000 |
| Ashwini M V | clerk       |     4638 |   22 |  23000 |
+-------------+-------------+----------+------+--------+
-------------------------------------------------------------------------------------------------------------------
>>>query to display salary <=25000
mysql> select salary from employee_info where salary<=25000;
+--------+
| salary |
+--------+
|  25000 |
|  20000 |
|  23000 |
+--------+
-------------------------------------------------------------------------------------------------------------------
>>>query to display salary >=25000
mysql> select salary from employee_info where salary>=25000;
+--------+
| salary |
+--------+
|  30000 |
|  35000 |
|  25000 |
|  65000 |
|  45000 |
|  35000 |
|  35000 |
|  55000 |
|  46000 |
|  48000 |
|  75000 |
|  33000 |
-------------------------------------------------------------------------------------------------------------------
>>query to display all the records who is working in dept_id =20 only if salary is >25000
mysql> select * from employee_info where dept_id=20 and salary>25000;
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name          | emailId         | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya      | vidya@gmail.com | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 111 | Athreya Adiga | aathi@gmail.com | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
-------------------------------------------------------------------------------------------------------------------
query to display all the records of employee_info table whose salary=10000 and job designation analyst
>>mysql> select * from employee_info where salary=35000 and designation='analyst';
+-----+-------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name  | emailId         | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 102 | Vibha | vibha@gmail.com | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
+-----+-------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
1 row in set (0.00 sec)

>>if the first condition is true it evaluates true without checking second operator
>>if the first condition is false results depends upon second condition
SYNTAX
   select * from table_name where column_name=value or column_name=value;
   
 >>query
 write a query to display all the records who is woking on dept 20 or 60
 
 mysql> select * from employee_info where dept_id=20 or dept_id=60;
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name          | emailId         | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya      | vidya@gmail.com | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 103 | Siri          | siri@gmail.com  | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 110 | Vishesh       | vish@gmail.com  | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga | aathi@gmail.com | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
4 rows in set (0.00 sec)
>>query to display name,salary,emailId who is working as a tester or age>25

mysql> select name,salary,emailId from employee_info where designation='tester' and age>=25;
+---------+--------+----------------+
| name    | salary | emailId        |
+---------+--------+----------------+
| Siri    |  25000 | siri@gmail.com |
| Vishesh |  55000 | vish@gmail.com |
+---------+--------+----------------+
2 rows in set (0.00 sec)

>>query to display the name of all employee who is working as a HR in dept 20 0r who is woking as clerk where salary>25000
mysql> select name from employee_info where designation='hr'and dept_id=20 or designation='clerk' and salary>=25000;
+---------------+
| name          |
+---------------+
| Srividya      |
| Athreya Adiga |
| Chandana      |
+---------------+
3 rows in set (0.00 sec)

mysql> select name,dept_id,designation,salary from employee_info where designation='clerk';
+-------------+---------+-------------+--------+
| name        | dept_id | designation | salary |
+-------------+---------+-------------+--------+
| Ashwini M V |      30 | clerk       |  23000 |
| Chandana    |      30 | Clerk       |  33000 |
+-------------+---------+-------------+--------+
2 rows in set (0.00 sec)

>>query to display salary=30000 and designation is software
mysql> select * from employee_info where designation='software' and salary=35000;
+-----+-------------+------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name        | emailId          | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------+------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 106 | Meghana B P | meghuu@gmail.com | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
+-----+-------------+------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
1 row in set (0.00 sec)

>>In a query conaining both and or operator and executes first and later or

NOT
syntax
   select * from tableName where not coloumnName=value;
 
 >>query to display
 
 mysql> select * from employee_info where not designation='software';
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com   | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com   | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com    | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 107 | Supriya H P       | suppii@gmail.com  | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com   | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com    | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga     | aathi@gmail.com   | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 112 | Priyanka S P      | piaa@gmail.com    | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com    | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
| 115 | Chandana          | chanduu@gmail.com | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
12 rows in set (0.03 sec)

>>query to display all employee excluding dept no 20 or 30

>>using NOT OPERATOR
mysql> select * from employee_info where not dept_id=20 or dept_id=30;
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 102 | Vibha             | vibha@gmail.com     | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com     | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com      | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

mysql> select * from employee_info where (dept_id<>20 and dept_id<>30);
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 102 | Vibha             | vibha@gmail.com     | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com      | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
10 rows in set (0.00 sec)

mysql> select * from employee_info where (dept_id!=20 and dept_id!=30);
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 102 | Vibha             | vibha@gmail.com     | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com      | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
>>query to display excluding salesman who are working in dept no 40

mysql> select * from employee_info where not (designation='salesman' and dept_id=40);
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com     | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com     | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com     | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga     | aathi@gmail.com     | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 114 | Avinash Adiga     | avii@gmail.com      | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>query to display all employee detail who is working as a salesman for dept no 20 or 30

mysql> update employee_info set dept_id=30 where id=105;
Query OK, 1 row affected (0.37 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee_info where designation='salesman' and (dept_id=20 or dept_id=30);
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      30 | AB-         |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>>Display employee details working in dept 20 only if salary>250000 and <45000 including 10000 and 25000
mysql> select * from employee_info where dept_id=40 and (salary>45000 and salary<50000) or (salary=45000);
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 112 | Priyanka S P      | piaa@gmail.com    | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+




>>query to display all records who is working as a software developer and dob is 1999


mysql> select * from employee_info where designation='software' and (dob>'98-01-01' and dob<'99-12-31');
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
>>query to display employee who is woking in dept 10,20 or 30

mysql> select * from employee_info where dept_id=10 or dept_id=20 or dept_id=30;
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com     | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com     | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 111 | Athreya Adiga     | aathi@gmail.com     | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

SPECIAL OPERATOR
>>IN
1.mutiple values for same operator
2.used for evaluating muliple values

>>syntax
   select * from tableName where column_name IN (value,value,value....)
   
mysql> select * from employee_info where dept_id in(10,20,30);
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com     | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com     | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 111 | Athreya Adiga     | aathi@gmail.com     | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>query to display all the employee details whose job designation is tester,hr,analyst

mysql> select * from employee_info where designation in('tester','hr','analyst');
+-----+---------------+------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name          | emailId          | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+---------------+------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya      | vidya@gmail.com  | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha         | vibha@gmail.com  | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri          | siri@gmail.com   | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 107 | Supriya H P   | suppii@gmail.com | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 110 | Vishesh       | vish@gmail.com   | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga | aathi@gmail.com  | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 114 | Avinash Adiga | avii@gmail.com   | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
+-----+---------------+------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>query to display all employee details who are working as a clerk in dept 20,30,40,60,50

mysql> select * from employee_info where designation='clerk' and dept_id in(20,30,40,50,60);
+-----+-------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name        | emailId           | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 108 | Ashwini M V | ashuu@gmail.com   | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 115 | Chandana    | chanduu@gmail.com | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>not in
multi value operator excludes condition given

select * from table_name where coloumnName not in(value,value...)

mysql> select * from employee_info where dept_id not in(20,30,40,50,60);
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>query to display all the details of employee whi is working in dept 20,40 and 60 excluding salesman or analyst

mysql> select * from employee_info where dept_id in(20,40,60) and designation not in('salesman','analyst');
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name          | emailId         | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya      | vidya@gmail.com | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 103 | Siri          | siri@gmail.com  | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 110 | Vishesh       | vish@gmail.com  | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga | aathi@gmail.com | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
+-----+---------------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>BETWEEN

   it is used for searching based on range of values;
   
   syntax:
      
	   select * from tableName where coloumnName between lower limit and upper limit;
	   
	 >>query to display employee details whose salary ranges from 20000 to 50000
	 
	 mysql> select * from employee_info where salary between 30000 and 50000;
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com   | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com   | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com  | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 111 | Athreya Adiga     | aathi@gmail.com   | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 112 | Priyanka S P      | piaa@gmail.com    | salesman    |     8636 |   34 | 1995-12-23 | 2019-11-22 |  48000 |      40 | B+          |
| 115 | Chandana          | chanduu@gmail.com | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+-------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>query to display all the details of an employee who hired in 2017

mysql> select * from employee_info where doj between '17-01-01' and '17-12-31';
+-----+-------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name  | emailId         | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 102 | Vibha | vibha@gmail.com | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
+-----+-------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
	   
>>display all records excluding who has hired in 2019

mysql> select * from employee_info where doj not between '19-01-01' and '19-12-31';
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 102 | Vibha             | vibha@gmail.com     | Analyst     |     9944 |   23 | 1995-07-29 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester      |     9684 |   36 | 1994-08-20 | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | 1999-11-07 | 2028-10-16 |  65000 |      10 | B+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman    |     8236 |   32 | 2006-09-17 | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | 1999-10-01 | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst     |     8773 |   25 | 1994-12-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com     | clerk       |     4638 |   22 | 1992-10-06 | 2014-10-16 |  23000 |      30 | A+          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman    |     9238 |   33 | 1993-12-15 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester      |     4888 |   28 | 1994-08-10 | 2018-10-06 |  55000 |      60 | 0+          |
| 111 | Athreya Adiga     | aathi@gmail.com     | HR          |     7374 |   21 | 1999-08-24 | 2020-06-30 |  46000 |      20 | A+          |
| 114 | Avinash Adiga     | avii@gmail.com      | Analyst     |     6372 |   37 | 1989-02-17 | 2016-09-22 |  75000 |      50 | 0+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk       |     9737 |   24 | 1986-10-01 | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-------------+

>>display employee name,salary and dept_id of all employees who is working in 10 or 20 excluding employee whose 
salary>=25000 and <=50000

mysql> select name,salary,dept_id from employee_info where dept_id in(10,20) and salary not between 30000 and 50000;
+-------------------+--------+---------+
| name              | salary | dept_id |
+-------------------+--------+---------+
| Praneetha Upadhya |  65000 |      10 |
+-------------------+--------+---------+

>>is operator
  >>>used to check null value
  >>>if record is null returns true otherwise false
  
  syntax:
     select * from tableName where column_name is null;
	 
display employee name and annual salary if designation=null;




>>>LIKE
   >>used to match pattern matching
   
   syntax
       select * from tableName where column_name like '%/_';
	   
	   characters: 1.Ordinary  
	               2.special
	 %-matches 0 or name
	 _-matches exactly one character
	 
	 >>query o display employee whose name starts with s
	 
	   mysql> select * from employee_info where name like 's%';
+-----+-------------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com   | HR          |    99725 |   22 | NULL | 2019-09-21 |  30000 |      20 | O+          |
| 103 | Siri              | siri@gmail.com    | Tester      |     9684 |   36 | NULL | 2016-12-19 |  25000 |      60 | 0-          |
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | NULL | 2004-03-18 |  45000 |      40 | AB-         |
| 107 | Supriya H P       | suppii@gmail.com  | Analyst     |     8773 |   25 | NULL | 2011-12-19 |  20000 |      50 | 0-          |
| 116 | Sinchana          | NULL              | NULL        |     NULL | NULL | NULL | NULL       |   NULL |    NULL | NULL        |
+-----+-------------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+
    >>query to display name having only 5 characters
	mysql> select * from employee_info where name like '_____';
+-----+-------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name  | emailId         | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+-------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 102 | Vibha | vibha@gmail.com | Analyst     |     9944 |   23 | NULL | 2017-07-28 |  35000 |      50 | AB+         |
+-----+-------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
>>name,salary,dob,doj whose name starts with s and end with s
   mysql> select * from employee_info where name like 'a%a';
+-----+---------------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name          | emailId         | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+---------------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 111 | Athreya Adiga | aathi@gmail.com | HR          |     7374 |   21 | NULL | 2020-06-30 |  46000 |      20 | A+          |
| 114 | Avinash Adiga | avii@gmail.com  | Analyst     |     6372 |   37 | NULL | 2016-09-22 |  75000 |      50 | 0+          |
+-----+---------------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+

>>query to display all the record of employee whose second character is t

mysql> select * from employee_info where name like '_t%';
+-----+---------------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name          | emailId         | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+---------------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 111 | Athreya Adiga | aathi@gmail.com | HR          |     7374 |   21 | NULL | 2020-06-30 |  46000 |      20 | A+          |
+-----+---------------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+

>>display employee details where designation have at least 2 e

mysql> select * from employee_info where designation like '%a%a%';
+-----+-------------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 102 | Vibha             | vibha@gmail.com   | Analyst     |     9944 |   23 | NULL | 2017-07-28 |  35000 |      50 | AB+         |
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman    |     8236 |   32 | NULL | 2004-03-18 |  45000 |      40 | AB-         |
| 107 | Supriya H P       | suppii@gmail.com  | Analyst     |     8773 |   25 | NULL | 2011-12-19 |  20000 |      50 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com | salesman    |     9238 |   33 | NULL | 2004-03-18 |  35000 |      40 | A+          |
| 112 | Priyanka S P      | piaa@gmail.com    | salesman    |     8636 |   34 | NULL | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com    | Analyst     |     6372 |   37 | NULL | 2016-09-22 |  75000 |      50 | 0+          |
+-----+-------------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+

>>select all the strings of length 5 the name starts with v and second last character is h

mysql> select * from employee_info where name like 'v__h_';
+-----+-------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name  | emailId         | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+-------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 102 | Vibha | vibha@gmail.com | Analyst     |     9944 |   23 | NULL | 2017-07-28 |  35000 |      50 | AB+         |
+-----+-------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+

>>display if name of employee starts with l or v
mysql> select * from employee_info where name like 'l%' or  name like 'v%';
+-----+---------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name          | emailId           | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+---------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 102 | Vibha         | vibha@gmail.com   | Analyst     |     9944 |   23 | NULL | 2017-07-28 |  35000 |      50 | AB+         |
| 109 | Laxmi Kashyap | lacchuu@gmail.com | salesman    |     9238 |   33 | NULL | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh       | vish@gmail.com    | Tester      |     4888 |   28 | NULL | 2018-10-06 |  55000 |      60 | 0+          |
+-----+---------------+-------------------+-------------+----------+------+------+------------+--------+---------+-------------+

>>display whose name 3rd characer is i and 6th should be d
mysql> select * from emp3loyee_info where name like '__i__d%';
+-----+----------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name     | emailId         | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+----------+-----------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 101 | Srividya | vidya@gmail.com | HR          |    99725 |   22 | NULL | 2019-09-21 |  30000 |      20 | O+          |

>>>NOT LIKE
   >>used to select all the string which do not match pattern
   
   syntax
       select * from tableName where column_name not like '%/_';
	   
>>display excluding whose name starts with a
mysql> select * from employee_info where name not like 'a%';
+-----+-------------------+---------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation | mobileNo | age  | DOB  | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+-------------+----------+------+------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com     | HR          |    99725 |   22 | NULL | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com     | Analyst     |     9944 |   23 | NULL | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester      |     9684 |   36 | NULL | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | Software    |     8874 |   36 | NULL | 2028-10-16 |  65000 |      10 | B+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman    |     8236 |   32 | NULL | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com    | software    |     4887 |   30 | NULL | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst     |     8773 |   25 | NULL | 2011-12-19 |  20000 |      50 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman    |     9238 |   33 | NULL | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester      |     4888 |   28 | NULL | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman    |     8636 |   34 | NULL | 2019-11-22 |  48000 |      40 | B+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk       |     9737 |   24 | NULL | 2013-01-22 |  33000 |      30 | AB+         |
+-----+-------------------+---------------------+-------------+----------+------+------+------------+--------+---------+-------------+

FUNCTION

  >>function is a block of code which performs specific task
  >>function attribute
      It has input argument, function name and return type
	>>pre-defined funcions	
	  >>Aggregate Functions - multi row functions - more than one input but output will be one
	      avg(),count(),max(),min(),sum()
		  syntax:
		     select avg(column_name) from employee_info 
			 
>>query to display avg salary of employee_info
			 
mysql> select avg(salary) average_salary from employee_info;
+-------------------+
| average_salary    |
+-------------------+
| 40714.28571428572 |
+-------------------+

>>query to display min,max and sum of all salary

mysql> select min(salary) Min_salary,max(salary) max_salary,sum(salary) total_salary from employee_info;
+------------+------------+--------------+
| Min_salary | max_salary | total_salary |
+------------+------------+--------------+
|      20000 |      75000 |       570000 |
+------------+------------+--------------+

>mysql> select min(salary) Min_salary,max(salary) max_salary,sum(salary) total_salary,avg(salary) avg_salary,count(name) total_employee from employee_info;
+------------+------------+--------------+-------------------+----------------+
| Min_salary | max_salary | total_salary | avg_salary        | total_employee |
+------------+------------+--------------+-------------------+----------------+
|      20000 |      75000 |       570000 | 40714.28571428572 |             14 |
+------------+------------+--------------+-------------------+----------------+


	  >>Scalar functions - single row functions - for each input corresponding output
	  
	    upper(),lower(),length(),concat(),reverse()
	
joins --> we can retrieve data from multiple table simultaneously
INNER Join		
>>mysql> select name from employee_info e,department_info d where e.dept_id=d.deptid and dname="accounting";
+-------------------+
| name              |
+-------------------+
| Praneetha Upadhya |
| Meghana B P       |
| Indiana Jones     |
+-------------------+
3 rows in set (0.00 sec)

mysql> select name from employee_info where dept_id in (select deptid from department_info where dname="accounting");
+-------------------+
| name              |
+-------------------+
| Praneetha Upadhya |
| Meghana B P       |
| Indiana Jones     |
+-------------------+
3 rows in set (0.00 sec)

outer join
left outer join - retrieve matched records along with unmatched records of left table
mysql> SELECT * FROM department_info d LEFT JOIN employee_info e ON d.deptid=e.dept_id;
+--------+--------------+-----------+------+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-----
--------+
| deptid | dname        | location  | id   | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | bloo
d_group |
+--------+--------------+-----------+------+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-----
--------+
|     20 | research     | pune      |  101 | Srividya          | vidya@gmail.com     | research    |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+
        |
|     50 | admin        | mumbai    |  102 | Vibha             | vibha@gmail.com     | admin       |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+
        |
|     10 | accounting   | bengaluru |  104 | Praneetha Upadhya | praneetha@gmail.com | accounting  |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+
        |
|     40 | operations   | chennai   |  105 | Soundarya Kashyap | sumukha@gmail.com   | operations  |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-
        |
|     10 | accounting   | bengaluru |  106 | Meghana B P       | meghuu@gmail.com    | accounting  |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-
        |
|     50 | admin        | mumbai    |  107 | Supriya H P       | suppii@gmail.com    | admin       |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-
        |
|     30 | sales        | delhi     |  108 | Ashwini M V       | ashuu@gmail.com     | sales       |     4638 |   22 | 2012-07-11 | 2014-10-16 |  23000 |      30 | A+
        |
|     40 | operations   | chennai   |  109 | Laxmi Kashyap     | lacchuu@gmail.com   | operations  |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+
        |
|     20 | research     | pune      |  111 | Athreya Adiga     | aathi@gmail.com     | research    |     7374 |   21 | 1989-05-21 | 2020-06-30 |  46000 |      20 | A+
        |
|     40 | operations   | chennai   |  112 | Priyanka S P      | piaa@gmail.com      | operations  |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+
        |
|     50 | admin        | mumbai    |  114 | Avinash Adiga     | avii@gmail.com      | admin       |     6372 |   37 | 1997-02-28 | 2016-09-22 |  75000 |      50 | 0+
        |
|     30 | sales        | delhi     |  115 | Chandana          | chanduu@gmail.com   | sales       |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+
        |
|     50 | admin        | mumbai    |  116 | Slaney            | slan@gmail.com      | admin       |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+
        |
|     10 | accounting   | bengaluru |  117 | Indiana Jones     | jones@gmail.com     | accounting  |     9343 |   30 | 1992-04-12 | 2018-11-20 |  46000 |      10 | AB+
        |
|     60 | maintainence | goa       | NULL | NULL              | NULL                | NULL        |     NULL | NULL | NULL       | NULL       |   NULL |    NULL | NULL
        |
+--------+--------------+-----------+------+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+-----
--------+
15 rows in set (0.00 sec)

right outer join
mysql> SELECT * FROM department_info d RIGHT JOIN employee_info e ON d.deptid=e.dept_id;
+--------+------------+-----------+-----+-------------------+---------------------+--------------+----------+------+------------+------------+--------+---------+-------
------+
| deptid | dname      | location  | id  | name              | emailId             | designation  | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_
group |
+--------+------------+-----------+-----+-------------------+---------------------+--------------+----------+------+------------+------------+--------+---------+-------
------+
|     20 | research   | pune      | 101 | Srividya          | vidya@gmail.com     | research     |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+
      |
|     50 | admin      | mumbai    | 102 | Vibha             | vibha@gmail.com     | admin        |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+
      |
|   NULL | NULL       | NULL      | 103 | Siri              | siri@gmail.com      | maintainence |     9684 |   36 | 1999-12-26 | 2016-12-19 |  25000 |    NULL | 0-
      |
|     10 | accounting | bengaluru | 104 | Praneetha Upadhya | praneetha@gmail.com | accounting   |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+
      |
|     40 | operations | chennai   | 105 | Soundarya Kashyap | sumukha@gmail.com   | operations   |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-
      |
|     10 | accounting | bengaluru | 106 | Meghana B P       | meghuu@gmail.com    | accounting   |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-
      |
|     50 | admin      | mumbai    | 107 | Supriya H P       | suppii@gmail.com    | admin        |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-
      |
|     30 | sales      | delhi     | 108 | Ashwini M V       | ashuu@gmail.com     | sales        |     4638 |   22 | 2012-07-11 | 2014-10-16 |  23000 |      30 | A+
      |
|     40 | operations | chennai   | 109 | Laxmi Kashyap     | lacchuu@gmail.com   | operations   |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+
      |
|   NULL | NULL       | NULL      | 110 | Vishesh           | vish@gmail.com      | maintainence |     4888 |   28 | 1994-11-22 | 2018-10-06 |  55000 |    NULL | 0+
      |
|     20 | research   | pune      | 111 | Athreya Adiga     | aathi@gmail.com     | research     |     7374 |   21 | 1989-05-21 | 2020-06-30 |  46000 |      20 | A+
      |
|     40 | operations | chennai   | 112 | Priyanka S P      | piaa@gmail.com      | operations   |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+
      |
|     50 | admin      | mumbai    | 114 | Avinash Adiga     | avii@gmail.com      | admin        |     6372 |   37 | 1997-02-28 | 2016-09-22 |  75000 |      50 | 0+
      |
|     30 | sales      | delhi     | 115 | Chandana          | chanduu@gmail.com   | sales        |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+
      |
|     50 | admin      | mumbai    | 116 | Slaney            | slan@gmail.com      | admin        |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+
      |
|     10 | accounting | bengaluru | 117 | Indiana Jones     | jones@gmail.com     | accounting   |     9343 |   30 | 1992-04-12 | 2018-11-20 |  46000 |      10 | AB+
      |
|   NULL | NULL       | NULL      | 118 | Anirudha          | NULL                | NULL         |     NULL | NULL | NULL       | NULL       |   NULL |    NULL | NULL
      |
+--------+------------+-----------+-----+-------------------+---------------------+--------------+----------+------+------------+------------+--------+---------+-------
------+
17 rows in set (0.00 sec)

inner join - retrieves only matched records
mysql> SELECT * FROM department_info d inner JOIN employee_info e ON d.deptid=e.dept_id;
+--------+------------+-----------+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+--------
-----+
| deptid | dname      | location  | id  | name              | emailId             | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_g
roup |
+--------+------------+-----------+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+--------
-----+
|     20 | research   | pune      | 101 | Srividya          | vidya@gmail.com     | research    |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+
     |
|     50 | admin      | mumbai    | 102 | Vibha             | vibha@gmail.com     | admin       |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+
     |
|     10 | accounting | bengaluru | 104 | Praneetha Upadhya | praneetha@gmail.com | accounting  |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+
     |
|     40 | operations | chennai   | 105 | Soundarya Kashyap | sumukha@gmail.com   | operations  |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-
     |
|     10 | accounting | bengaluru | 106 | Meghana B P       | meghuu@gmail.com    | accounting  |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-
     |
|     50 | admin      | mumbai    | 107 | Supriya H P       | suppii@gmail.com    | admin       |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-
     |
|     30 | sales      | delhi     | 108 | Ashwini M V       | ashuu@gmail.com     | sales       |     4638 |   22 | 2012-07-11 | 2014-10-16 |  23000 |      30 | A+
     |
|     40 | operations | chennai   | 109 | Laxmi Kashyap     | lacchuu@gmail.com   | operations  |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+
     |
|     20 | research   | pune      | 111 | Athreya Adiga     | aathi@gmail.com     | research    |     7374 |   21 | 1989-05-21 | 2020-06-30 |  46000 |      20 | A+
     |
|     40 | operations | chennai   | 112 | Priyanka S P      | piaa@gmail.com      | operations  |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+
     |
|     50 | admin      | mumbai    | 114 | Avinash Adiga     | avii@gmail.com      | admin       |     6372 |   37 | 1997-02-28 | 2016-09-22 |  75000 |      50 | 0+
     |
|     30 | sales      | delhi     | 115 | Chandana          | chanduu@gmail.com   | sales       |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+
     |
|     50 | admin      | mumbai    | 116 | Slaney            | slan@gmail.com      | admin       |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+
     |
|     10 | accounting | bengaluru | 117 | Indiana Jones     | jones@gmail.com     | accounting  |     9343 |   30 | 1992-04-12 | 2018-11-20 |  46000 |      10 | AB+
     |
+--------+------------+-----------+-----+-------------------+---------------------+-------------+----------+------+------------+------------+--------+---------+--------
-----+
14 rows in set (0.00 sec)==
	      
		  
view
create view emp_designation as select * from employee_info e where designation='sales';


update emp_designation set age=29 where id=108;

TCL:
mysql> set autocommit=0;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from department_info where deptid=80;
Query OK, 1 row affected (0.06 sec)

mysql> select * from department_info;
+--------+--------------+-----------+
| deptid | dname        | location  |
+--------+--------------+-----------+
|     10 | accounting   | bengaluru |
|     20 | research     | pune      |
|     30 | sales        | delhi     |
|     40 | operations   | chennai   |
|     50 | admin        | mumbai    |
|     60 | maintainence | goa       |
+--------+--------------+-----------+
6 rows in set (0.00 sec)

mysql> Rollback;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from department_info;
+--------+--------------+-----------+
| deptid | dname        | location  |
+--------+--------------+-----------+
|     10 | accounting   | bengaluru |
|     20 | research     | pune      |
|     30 | sales        | delhi     |
|     40 | operations   | chennai   |
|     50 | admin        | mumbai    |
|     60 | maintainence | goa       |
|     80 | user         | manali    |
+--------+--------------+-----------+
7 rows in set (0.00 sec)

>>savepoint
mysql> savepoint a;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into department_info values(90,'user','manali');
Query OK, 1 row affected (0.00 sec)

mysql> select * from department_info;
+--------+--------------+-----------+
| deptid | dname        | location  |
+--------+--------------+-----------+
|     10 | accounting   | bengaluru |
|     20 | research     | pune      |
|     30 | sales        | delhi     |
|     40 | operations   | chennai   |
|     50 | admin        | mumbai    |
|     60 | maintainence | goa       |
|     80 | user         | manali    |
|     90 | user         | manali    |
+--------+--------------+-----------+
8 rows in set (0.00 sec)

mysql> savepoint b;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into department_info values(100,'user','manali');
Query OK, 1 row affected (0.00 sec)

mysql> rollback to a;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from department_info;
+--------+--------------+-----------+
| deptid | dname        | location  |
+--------+--------------+-----------+
|     10 | accounting   | bengaluru |
|     20 | research     | pune      |
|     30 | sales        | delhi     |
|     40 | operations   | chennai   |
|     50 | admin        | mumbai    |
|     60 | maintainence | goa       |
|     80 | user         | manali    |
+--------+--------------+-----------+
7 rows in set (0.00 sec)