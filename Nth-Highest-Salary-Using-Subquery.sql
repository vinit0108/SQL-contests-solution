--Nth Highest Salary using Subquery

Select Top 1 Salary
from
(Select Distinct Top N Salary from Employee Order By Salary Desc) 
Result
Order By Salary 

-- if you want 2nd highest salary, replace N to 2, if 3rd then N to 3 and so on


/* Output
+---------------------+
| Second Highest      |
+---------------------+
| 3000                |
+---------------------+
*/