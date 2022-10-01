with CTE_Employee as 
(
Select First_Name, Last_Name, Gender, Salary, 
count(Gender) over (partition by Gender) as Total_Gender, 
AVG(Salary) over (partition by Salary) as Avg_Salary
from SQ_TutorialAlexAnalystYT..EmployeeDemographics as emp
join SQ_TutorialAlexAnalystYT..EmployeeSalary as sal
on emp.EmployeeID = sal.EmployeeId
where Salary > '45000'
)
select *
from CTE_Employee;
--penggunaan cte sangat bermanfaat jika dalam satu tabel memiliki banyak kolom
-- sehingga dalam penggunaan cte tidak perlu mengetik join dll
-- cukup mudah dan cepat
-- penggunaan cte setelah menulis perintah nya dulu seperti contoh diatas

