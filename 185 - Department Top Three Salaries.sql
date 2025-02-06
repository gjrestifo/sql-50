With TopSalaries AS(
    SELECT 
        id,
        name,
        salary,
        departmentId,
        DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS salary_rank
    FROM Employee
)

SELECT 
    Department.name as Department,
    TopSalaries.name as Employee,
    TopSalaries.salary as Salary
FROM TopSalaries
LEFT JOIN Department
ON TopSalaries.departmentId = Department.id
WHERE TopSalaries.salary_rank <= 3