--SQL Query to find the 2nd highest salary in the Employee table

Select Max(Salary) as Second Highest from Employees
Where Salary not in (Select Max(Salary) from Employees)



/* Output
+---------------------+
| Second Highest      |
+---------------------+
| 3000                |
+---------------------+
*/