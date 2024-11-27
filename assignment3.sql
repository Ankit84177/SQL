create database assignment3;
use assignment3;
create table emp_details(
                    emp_id int primary key auto_increment,
                    first_name varchar(40),
                    last_name varchar(40),
                    department varchar(50),
                    salary int,
                    hire_date date
);
insert into emp_details(first_name,last_name,department,salary,hire_date)
values("John", "Doe", "IT", 60000.00 ,"2019-01-10"),
      ("Jane" ,"Smith", "HR", 55000.00 ,"2018-03-05"),
      ("Emily", "Jones", "IT", 62000.00, "2020-07-23"),
      ("Michael" ,"Brown" ,"Finance" ,70000.00 ,"2016-05-14"),
      ("Sarah" ,"Davis" ,"Finance" ,69000.00, "2017-11-18"),
      ("David" ,"Johnson" ,"HR" ,48000.00 ,"2021-09-10");
select * from emp_details;

#Q1. Find the average salary of employees in each department. 
select department,avg(salary) as "average salary" from emp_details group by department;

#Q2. Find the total number of employees hired after 2019.
select count(*) from emp_details having (hire_date) > "2019-12-31";

#Q3. List the departments and the total salary of all employees in each department, ordered by the total salary. 
select department, sum(salary) as "total salary" from emp_details group  by department order by "total salary";

#Q4. Find the highest salary in the Finance department.
select * from emp_details where department="Finance" order by salary desc limit 1;

#Q5. Get the top 3 highest-paid employees.
select * from emp_details order by salary desc limit 3;

#Q6. Find the department with the minimum average salary.
select department, avg(salary) as "average salary" from emp_details group by department order by "average salary" asc limit 1;  

#Q7. Display the total number of employees in each department, ordered by the number of employees. 
select department, count(emp_id) as "number of employees" from emp_details group by department order by "number of employees";

#Q8. Find the average salary of employees who were hired before 2020.  
select avg(salary) from emp_details where hire_date<"2020-01-01";
select * from emp_details;
#Q9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.
select (first_name+last_name) as "name of employee" from emp_details where department="IT" order by hire_date;
select * from emp_details where department="IT" order by hire_date desc;

#Q10. Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
select sum(salary) from emp_details where hire_date>"2019-01-01";

#Q11. Get the employee with the lowest salary in the HR department.
select * from emp_details where department="HR" order by salary limit 1;

#Q12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.
select department ,sum(salary) as total_salary from emp_details group by department order  by total_salary desc limit 2;

#Q13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
select * from emp_details where hire_date > "2018-12-31" order by salary limit 4;

#Q14. Find the highest salary in the IT department, but limit the results to the top 1 result.  
select * from emp_details where department="IT" order by salary desc limit 1;

#Q15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000. 
select department, avg(salary) as average_salary from emp_details group by department having average_salary>60000.00;
