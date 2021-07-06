-- correlated nested query
Select Salary as Second Highest from Employee e1
Where N-1 = (Select Count(Distinct Salary) from Employee e2 where e2.Salary > e1.Salary)

-- if you want 2nd highest salary, replace N to 2, if 3rd then N to 3 and so on



/* Output
+---------------------+
| Second Highest      |
+---------------------+
| 3000                |
+---------------------+
*/