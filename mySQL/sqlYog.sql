>>query to display all the deatil of employee where designation is developer and tester
 
>>employee name who is working in research
select name from employee_info where dept_id=(select deptid from department_info where dname='research')

>>query to display name of employee who is working in location which has aleast one a character in its name

select name from employee_info where dept_id in(select deptid from department_info where location like '%a%');


>>obtain second max salary from the department table


>>obtain third max
select max(salary) max_salary from employee_info where salary<(select max(salary) from employee_info where salary<(select max(salary)from employee_info)) 

>>query to display all the records using cross join