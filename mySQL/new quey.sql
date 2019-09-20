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
mysql> select * from employee_info where name like '__i__d%';
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
>>display number of employees joining after 2016
mysql> select count(*) employees from employee_info where doj>'16-12-31';
+-----------+
| employees |
+-----------+
|         9 |
+-----------+
1 row in set (0.00 sec)

>>display avg salary and highest salary of dept(20,30,40,60)
mysql> select avg(salary) avg_salary,max(salary) max_in_specific from employee_info where dept_id in(20,30,40);
+--------------------+-----------------+
| avg_salary         | max_in_specific |
+--------------------+-----------------+
| 37142.857142857145 |           48000 |
+--------------------+-----------------+
1 row in set (0.05 sec)

>>display first and last hired employee

mysql> select min(doj) First_hired,max(doj) Last_hired from employee_info;
+-------------+------------+
| First_hired | Last_hired |
+-------------+------------+
| 2004-03-18  | 2028-10-16 |
+-------------+------------+
1 row in set (0.00 sec)

mysql> select upper(name) from employee_info;
+-------------------+
| upper(name)       |
+-------------------+
| SRIVIDYA          |
| VIBHA             |
| SIRI              |
| PRANEETHA UPADHYA |
| SOUNDARYA KASHYAP |
| MEGHANA B P       |
| SUPRIYA H P       |
| ASHWINI M V       |
| LAXMI KASHYAP     |
| VISHESH           |
| ATHREYA ADIGA     |
| PRIYANKA S P      |
| AVINASH ADIGA     |
| CHANDANA          |
| SLANEY            |
| INDIANA JONES     |
+-------------------+
16 rows in set (0.03 sec)

mysql> select lower(name) from employee_info;
+-------------------+
| lower(name)       |
+-------------------+
| srividya          |
| vibha             |
| siri              |
| praneetha upadhya |
| soundarya kashyap |
| meghana b p       |
| supriya h p       |
| ashwini m v       |
| laxmi kashyap     |
| vishesh           |
| athreya adiga     |
| priyanka s p      |
| avinash adiga     |
| chandana          |
| slaney            |
| indiana jones     |
+-------------------+
16 rows in set (0.02 sec)

mysql> select initcap(name) from employee_info;
ERROR 1305 (42000): FUNCTION company.initcap does not exist

>>characer manipulation
mysql> select name,length(name) name_length from employee_info;
+-------------------+-------------+
| name              | name_length |
+-------------------+-------------+
| Srividya          |           8 |
| Vibha             |           5 |
| Siri              |           4 |
| Praneetha Upadhya |          17 |
| Soundarya Kashyap |          17 |
| Meghana B P       |          11 |
| Supriya H P       |          11 |
| Ashwini M V       |          11 |
| Laxmi Kashyap     |          13 |
| Vishesh           |           7 |
| Athreya Adiga     |          13 |
| Priyanka S P      |          12 |
| Avinash Adiga     |          13 |
| Chandana          |           8 |
| Slaney            |           6 |
| Indiana Jones     |          13 |
+-------------------+-------------+
16 rows in set (0.00 sec)

>>query to merge name,salary

mysql> insert into employee_info (id,name) values (118,'Anirudha');
Query OK, 1 row affected (0.09 sec)

mysql> select concat(name,salary) from employee_info;
+------------------------+
| concat(name,salary)    |
+------------------------+               
| Srividya30000          |
| Vibha35000             |
| Siri25000              |
| Praneetha Upadhya65000 |
| Soundarya Kashyap45000 |
| Meghana B P35000       |
| Supriya H P20000       |
| Ashwini M V23000       |
| Laxmi Kashyap35000     |
| Vishesh55000           |
| Athreya Adiga46000     |
| Priyanka S P48000      |
| Avinash Adiga75000     |
| Chandana33000          |
| Slaney26000            |
| Indiana Jones46000     |
|           null         |
+------------------------+
17 rows in set (0.00 sec)

>>substr()
  query to display name of all employee with only 3 characer
  
  mysql> select substr(name,1,3) from employee_info;
+------------------+
| substr(name,1,3) |
+------------------+              
| Sri              |
| Vib              |
| Sir              |
| Pra              |
| Sou              |
| Meg              |
| Sup              |
| Ash              |
| Lax              |
| Vis              |
| Ath              |
| Pri              |
| Avi              |
| Cha              |
| Sla              |
| Ind              |
| Ani              | 
+------------------+
17 rows in set (0.00 sec)

>>replace()

mysql> select replace(name,'a','e') from employee_info;
+-----------------------+
| replace(name,'a','e') |
+-----------------------+
| Srividye              |
| Vibhe                 |
| Siri                  |
| Preneethe Upedhye     |
| Sounderye Keshyep     |
| Meghene B P           |
| Supriye H P           |
| Ashwini M V           |
| Lexmi Keshyep         |
| Vishesh               |
| Athreye Adige         |
| Priyenke S P          |
| Avinesh Adige         |
| Chendene              |
| Sleney                |
| Indiene Jones         |
| Anirudhe              |
+-----------------------+
17 rows in set (0.00 sec)

mysql> select name ,replace(replace(name,'a','z'),'A','Z') from employee_info;
+-------------------+----------------------------------------+
| name              | replace(replace(name,'a','z'),'A','Z') |
+-------------------+----------------------------------------+
| Srividya          | Srividyz                               |
| Vibha             | Vibhz                                  |
| Siri              | Siri                                   |
| Praneetha Upadhya | Przneethz Upzdhyz                      |
| Soundarya Kashyap | Soundzryz Kzshyzp                      |
| Meghana B P       | Meghznz B P                            |
| Supriya H P       | Supriyz H P                            |
| Ashwini M V       | Zshwini M V                            |
| Laxmi Kashyap     | Lzxmi Kzshyzp                          |
| Vishesh           | Vishesh                                |
| Athreya Adiga     | Zthreyz Zdigz                          |
| Priyanka S P      | Priyznkz S P                           |
| Avinash Adiga     | Zvinzsh Zdigz                          |
| Chandana          | Chzndznz                               |
| Slaney            | Slzney                                 |
| Indiana Jones     | Indiznz Jones                          |
| Anirudha          | Znirudhz                               |
+-------------------+----------------------------------------+
17 rows in set (0.00 sec)

>>query to display number of employee who is working in dept 20 and salary 30000
mysql> select count(*) employees from employee_info where dept_id=20 and salary=30000;
+-----------+
| employees |
+-----------+
|         1 |
+-----------+
1 row in set (0.00 sec)

>>query to display all details of employee whose name begin witth consonants
mysql> select * from employee_info where name not like'a%' and name not like'e%' and name not like'i%' and name not like'o%' and name not like'u%';
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com     | HR                 |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com     | Analyst            |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester             |     9684 |   36 | 1999-12-26 | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | software developer |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman           |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com    | software developer |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst            |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman           |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester             |     4888 |   28 | 1994-11-22 | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman           |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk              |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+         |
| 116 | Slaney            | slan@gmail.com      | analyst            |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+          |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
12 rows in set (0.00 sec)

mysql> select * from employee_info where substr(name,1,1) not in('a','e','i','o','u');;
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya          | vidya@gmail.com     | HR                 |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 102 | Vibha             | vibha@gmail.com     | Analyst            |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com      | Tester             |     9684 |   36 | 1999-12-26 | 2016-12-19 |  25000 |      60 | 0-          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | software developer |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman           |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-         |
| 106 | Meghana B P       | meghuu@gmail.com    | software developer |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst            |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman           |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com      | Tester             |     4888 |   28 | 1994-11-22 | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman           |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk              |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+         |
| 116 | Slaney            | slan@gmail.com      | analyst            |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+          |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
12 rows in set (0.00 sec)

>>query to search position of a in name column
mysql> select instr(name,'a') from employee_info;
+-----------------+
| instr(name,'a') |
+-----------------+
|               8 |
|               5 |
|               0 |
|               3 |
|               6 |
|               5 |
|               7 |
|               1 |
|               2 |
|               0 |
|               1 |
|               5 |
|               1 |
|               3 |
|               3 |
|               5 |
|               1 |
+-----------------+
17 rows in set (0.00 sec)

>>query to max salary at each department
>>mysql> select dept_id,max(salary) max_salary from employee_info group by dept_id;
+---------+------------+
| dept_id | max_salary |
+---------+------------+
|    NULL |       NULL |
|      10 |      65000 |
|      20 |      46000 |
|      30 |      33000 |
|      40 |      48000 |
|      50 |      75000 |
|      60 |      55000 |
+---------+------------+
7 rows in set (0.01 sec)

>>query to display number of Software in each department
mysql> select designation,count(*) employees from employee_info where designation='software developer' group by designation;
+--------------------+-----------+
| designation        | employees |
+--------------------+-----------+
| software developer |         3 |
+--------------------+-----------+
1 row in set (0.00 sec)

>>query to display no of employees hired on each date

mysql> select name,count(*) employees,doj from employee_info group by doj;
+-------------------+-----------+------------+
| name              | employees | doj        |
+-------------------+-----------+------------+
| Anirudha          |         1 | NULL       |
| Soundarya Kashyap |         2 | 2004-03-18 |
| Supriya H P       |         1 | 2011-12-19 |
| Chandana          |         1 | 2013-01-22 |
| Ashwini M V       |         1 | 2014-10-16 |
| Avinash Adiga     |         1 | 2016-09-22 |
| Siri              |         1 | 2016-12-19 |
| Vibha             |         1 | 2017-07-28 |
| Vishesh           |         1 | 2018-10-06 |
| Indiana Jones     |         1 | 2018-11-20 |
| Srividya          |         2 | 2019-09-21 |
| Priyanka S P      |         1 | 2019-11-22 |
| Athreya Adiga     |         1 | 2020-06-30 |
| Meghana B P       |         1 | 2022-12-19 |
| Praneetha Upadhya |         1 | 2028-10-16 |
+-------------------+-----------+------------+
15 rows in set (0.00 sec)

>>query to display min salary in each designation

mysql> select min(salary) min_salary,designation from employee_info group by designation;
+------------+--------------------+
| min_salary | designation        |
+------------+--------------------+
|       NULL | NULL               |
|      20000 | Analyst            |
|      23000 | clerk              |
|      30000 | HR                 |
|      35000 | salesman           |
|      35000 | software developer |
|      25000 | Tester             |
+------------+--------------------+
7 rows in set (0.00 sec)

>>query to display dept no which has atleast 4 working employees

mysql> select  dept_id,designation from employee_info group by dept_id having count(*)>=4;
+---------+-------------+
| dept_id | designation |
+---------+-------------+
|      50 | Analyst     |
+---------+-------------+
1 row in set (0.00 sec)

>>query to display dept_no which has total_salary>20000

mysql> select  dept_id from employee_info group by salary having salary>25000;

mysql> select  dept_id,salary from employee_info group by salary having salary>25000;
+---------+--------+
| dept_id | salary |
+---------+--------+
|      50 |  26000 |
|      20 |  30000 |
|      30 |  33000 |
|      50 |  35000 |
|      40 |  45000 |
|      20 |  46000 |
|      40 |  48000 |
|      60 |  55000 |
|      10 |  65000 |
|      50 |  75000 |
+---------+--------+
10 rows in set (0.00 sec)

>>display department and avg salary of all departments whose average_salary>20000 excluding th employee whose name begins with s
mysql> select dept_id,avg(salary) average,name,salary from employee_info where name not like's%' group by dept_id having salary>30000;
+---------+--------------------+-------------------+--------+
| dept_id | average            | name              | salary |
+---------+--------------------+-------------------+--------+
|      10 | 48666.666666666664 | Praneetha Upadhya |  65000 |
|      20 |              46000 | Athreya Adiga     |  46000 |
|      40 |              41500 | Laxmi Kashyap     |  35000 |
|      50 |              55000 | Vibha             |  35000 |
|      60 |              55000 | Vishesh           |  55000 |
+---------+--------------------+-------------------+--------+
5 rows in set (0.00 sec)
>>query to display all employees where salary should be arranged in asc and desc
mysql> select * from employee_info order by salary;
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 118 | Anirudha          | NULL                | NULL               |     NULL | NULL | NULL       | NULL       |   NULL |    NULL | NULL        |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst            |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com     | clerk              |     4638 |   22 | 2012-07-11 | 2014-10-16 |  23000 |      30 | A+          |
| 103 | Siri              | siri@gmail.com      | Tester             |     9684 |   36 | 1999-12-26 | 2016-12-19 |  25000 |      60 | 0-          |
| 116 | Slaney            | slan@gmail.com      | analyst            |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+          |
| 101 | Srividya          | vidya@gmail.com     | HR                 |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk              |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+         |
| 102 | Vibha             | vibha@gmail.com     | Analyst            |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+         |
| 106 | Meghana B P       | meghuu@gmail.com    | software developer |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman           |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+          |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman           |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-         |
| 111 | Athreya Adiga     | aathi@gmail.com     | HR                 |     7374 |   21 | 1989-05-21 | 2020-06-30 |  46000 |      20 | A+          |
| 117 | Indiana Jones     | jones@gmail.com     | Software developer |     9343 |   30 | 1992-04-12 | 2018-11-20 |  46000 |      10 | AB+         |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman           |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+          |
| 110 | Vishesh           | vish@gmail.com      | Tester             |     4888 |   28 | 1994-11-22 | 2018-10-06 |  55000 |      60 | 0+          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | software developer |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com      | Analyst            |     6372 |   37 | 1997-02-28 | 2016-09-22 |  75000 |      50 | 0+          |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
17 rows in set (0.03 sec)

mysql> select * from employee_info order by salary desc;
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 114 | Avinash Adiga     | avii@gmail.com      | Analyst            |     6372 |   37 | 1997-02-28 | 2016-09-22 |  75000 |      50 | 0+          |
| 104 | Praneetha Upadhya | praneetha@gmail.com | software developer |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+          |
| 110 | Vishesh           | vish@gmail.com      | Tester             |     4888 |   28 | 1994-11-22 | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com      | salesman           |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+          |
| 111 | Athreya Adiga     | aathi@gmail.com     | HR                 |     7374 |   21 | 1989-05-21 | 2020-06-30 |  46000 |      20 | A+          |
| 117 | Indiana Jones     | jones@gmail.com     | Software developer |     9343 |   30 | 1992-04-12 | 2018-11-20 |  46000 |      10 | AB+         |
| 105 | Soundarya Kashyap | sumukha@gmail.com   | salesman           |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-         |
| 102 | Vibha             | vibha@gmail.com     | Analyst            |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+         |
| 106 | Meghana B P       | meghuu@gmail.com    | software developer |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com   | salesman           |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+          |
| 115 | Chandana          | chanduu@gmail.com   | Clerk              |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+         |
| 101 | Srividya          | vidya@gmail.com     | HR                 |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
| 116 | Slaney            | slan@gmail.com      | analyst            |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+          |
| 103 | Siri              | siri@gmail.com      | Tester             |     9684 |   36 | 1999-12-26 | 2016-12-19 |  25000 |      60 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com     | clerk              |     4638 |   22 | 2012-07-11 | 2014-10-16 |  23000 |      30 | A+          |
| 107 | Supriya H P       | suppii@gmail.com    | Analyst            |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 118 | Anirudha          | NULL                | NULL               |     NULL | NULL | NULL       | NULL       |   NULL |    NULL | NULL        |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
17 rows in set (0.00 sec)

>>query to display name,designation,doj of all employee who are woring in either one of the department 10.20,50,60 sort the records in descending order
of thier salary
mysql> select name,designation,salary,dept_id from employee_info where dept_id in(10,20,50,60) order by salary desc;
+-------------------+--------------------+--------+---------+
| name              | designation        | salary | dept_id |
+-------------------+--------------------+--------+---------+
| Avinash Adiga     | Analyst            |  75000 |      50 |
| Praneetha Upadhya | software developer |  65000 |      10 |
| Vishesh           | Tester             |  55000 |      60 |
| Athreya Adiga     | HR                 |  46000 |      20 |
| Indiana Jones     | Software developer |  46000 |      10 |
| Vibha             | Analyst            |  35000 |      50 |
| Meghana B P       | software developer |  35000 |      10 |
| Srividya          | HR                 |  30000 |      20 |
| Slaney            | analyst            |  26000 |      50 |
| Siri              | Tester             |  25000 |      60 |
| Supriya H P       | Analyst            |  20000 |      50 |
+-------------------+--------------------+--------+---------+
11 rows in set (0.00 sec)

>>query to display department id along with no of employee name
mysql> select dept_id,count(*) employee from employee_info group by dept_id;
+---------+----------+
| dept_id | employee |
+---------+----------+
|    NULL |        1 |
|      10 |        3 |
|      20 |        2 |
|      30 |        2 |
|      40 |        3 |
|      50 |        4 |
|      60 |        2 |
+---------+----------+
7 rows in set (0.00 sec)



	      