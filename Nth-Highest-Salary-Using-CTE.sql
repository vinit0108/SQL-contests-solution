-- Nth Highest salary using Common Table Expressions (CTE)


With CTE As 
(
Select Salary, Dense_rank() Over (Order By Salary Desc) as DENSERANK 
from Employees
)
Select Top 1 salary
from CTE
where CTE.DENSERANK = N


-- if you want 2nd highest salary, replace N to 2, if 3rd then N to 3 and so on



/* Output
+---------------------+
| Second Highest      |
+---------------------+
| 3000                |
+---------------------+
*/