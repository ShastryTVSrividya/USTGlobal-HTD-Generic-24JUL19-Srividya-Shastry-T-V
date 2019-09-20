1>>EMPLOYEES WHOSE DESIGNATION IS SOFTWARE DEVELOPER AND WORKING IN DEPT 10
mysql> select * from employee_info where designation='software developer' and dept_id=10;
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 104 | Praneetha Upadhya | praneetha@gmail.com | software developer |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+          |
| 106 | Meghana B P       | meghuu@gmail.com    | software developer |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-          |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+

2>>EMPLOYEES WORKING AS SOFTWARE DEVELOPER IN DEPT 10 AND SALARY GREATER THAN 40000
mysql> select * from employee_info where designation='software developer' and dept_id=10 and salary>40000;
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 104 | Praneetha Upadhya | praneetha@gmail.com | software developer |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+          |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+

3>>EMPLOYEES EXCEPT THOSE WHO ARE WORKING IN DEPT 10,20
mysql> select * from employee_info where dept_id not in(10,20);
+-----+-------------------+-------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId           | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+-------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 102 | Vibha             | vibha@gmail.com   | Analyst            |     9944 |   23 | 1998-11-25 | 2017-07-28 |  35000 |      50 | AB+         |
| 103 | Siri              | siri@gmail.com    | Tester             |     9684 |   36 | 1999-12-26 | 2016-12-19 |  25000 |      60 | 0-          |
| 105 | Soundarya Kashyap | sumukha@gmail.com | salesman           |     8236 |   32 | 2001-03-03 | 2004-03-18 |  45000 |      40 | AB-         |
| 107 | Supriya H P       | suppii@gmail.com  | Analyst            |     8773 |   25 | 1999-08-10 | 2011-12-19 |  20000 |      50 | 0-          |
| 108 | Ashwini M V       | ashuu@gmail.com   | clerk              |     4638 |   22 | 2012-07-11 | 2014-10-16 |  23000 |      30 | A+          |
| 109 | Laxmi Kashyap     | lacchuu@gmail.com | salesman           |     9238 |   33 | 1993-02-12 | 2004-03-18 |  35000 |      40 | A+          |
| 110 | Vishesh           | vish@gmail.com    | Tester             |     4888 |   28 | 1994-11-22 | 2018-10-06 |  55000 |      60 | 0+          |
| 112 | Priyanka S P      | piaa@gmail.com    | salesman           |     8636 |   34 | 1998-10-03 | 2019-11-22 |  48000 |      40 | B+          |
| 114 | Avinash Adiga     | avii@gmail.com    | Analyst            |     6372 |   37 | 1997-02-28 | 2016-09-22 |  75000 |      50 | 0+          |
| 115 | Chandana          | chanduu@gmail.com | Clerk              |     9737 |   24 | 2011-07-29 | 2013-01-22 |  33000 |      30 | AB+         |
| 116 | Slaney            | slan@gmail.com    | analyst            |     9934 |   27 | 1990-10-20 | 2019-09-21 |  26000 |      50 | B+          |
| 117 | Indiana Jones     | jones@gmail.com   | Software developer |     9343 |   30 | 1992-04-12 | 2018-11-20 |  46000 |      50 | AB+         |
+-----+-------------------+-------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
12 rows in set (0.00 sec)

4>>EMPLOYEES NOT WORING AS SOFTWARE DEVELOPER AND CLERKS AND IN DEPT 10,20 WHOSE SALARY BETWEEN 20000 AND 30000
mysql> select * from employee_info where designation not in('software developer','clerks') and dept_id in(10,20) and salary between 20000 and 30000;
+-----+----------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name     | emailId         | designation | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+----------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
| 101 | Srividya | vidya@gmail.com | HR          |    99725 |   22 | 1997-10-22 | 2019-09-21 |  30000 |      20 | O+          |
+-----+----------+-----------------+-------------+----------+------+------------+------------+--------+---------+-------------+
1 row in set (0.00 sec)

5>>EMPLOYEES WHOSE SALARY NOT IN RANGE OF 20000 AND 30000 IN DEPT 10,20,40 EXCEPT ALL SALESMAN
mysql> select * from employee_info where salary not between 20000 and 30000 and dept_id in(10,20,40) and designation not in('salesman');
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| id  | name              | emailId             | designation        | mobileNo | age  | DOB        | DOJ        | salary | dept_id | blood_group |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
| 104 | Praneetha Upadhya | praneetha@gmail.com | software developer |     8874 |   36 | 2000-01-02 | 2028-10-16 |  65000 |      10 | B+          |
| 106 | Meghana B P       | meghuu@gmail.com    | software developer |     4887 |   30 | 2002-06-09 | 2022-12-19 |  35000 |      10 | 0-          |
| 111 | Athreya Adiga     | aathi@gmail.com     | HR                 |     7374 |   21 | 1989-05-21 | 2020-06-30 |  46000 |      20 | A+          |
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
3 rows in set (0.00 sec)

6>>EMPLOYEES SALARY IN DESCENDING ORDER
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
+-----+-------------------+---------------------+--------------------+----------+------+------------+------------+--------+---------+-------------+
16 rows in set (0.00 sec)
7>>EMPLOYESS MIN,MAX AND TOTAl SALARY
mysql> select min(salary) minimun,max(salary) maximum,sum(salary) total from employee_info;
+---------+---------+--------+
| minimun | maximum | total  |
+---------+---------+--------+
|   20000 |   75000 | 642000 |
+---------+---------+--------+
1 row in set (0.10 sec)

8>>EMPLOYEES HEIGHEST AND LOWEST SALARY EARNED BY SALESMAN
mysql> select min(salary) minimun,max(salary) maximum from employee_info where designation='salesman';
+---------+---------+
| minimun | maximum |
+---------+---------+
|   35000 |   48000 |
+---------+---------+
1 row in set (0.00 sec)

9>>NUMBER OF SOFTWARE DEVELOPER IN DEPT 10
mysql> select count(name) no_of_Developers from employee_info where designation='software developer' and dept_id=10;
+------------------+
| no_of_Developers |
+------------------+
|                3 |
+------------------+
1 row in set (0.00 sec)

10>>TOTAL SALARY OF ALL DEPARTMENTS
mysql> select dept_id,sum(salary) total_salary from employee_info group by dept_id;
+---------+--------------+
| dept_id | total_salary |
+---------+--------------+
|      10 |       146000 |
|      20 |        76000 |
|      30 |        56000 |
|      40 |       128000 |
|      50 |       156000 |
|      60 |        80000 |
+---------+--------------+
6 rows in set (0.00 sec)