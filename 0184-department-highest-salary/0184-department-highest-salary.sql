# Write your MySQL query statement below

select d.name as Department,e.name as Employee,e.salary as Salary from Employee as e join Department as d on e.departmentId=d.id where (e.departmentId,e.salary) in (select departmentId,max(salary) from Employee 
group by departmentId);