SELECT MAX(salary * months) AS MAX_TOTAL,
    COUNT(*) AS NUM
FROM Employee
WHERE (salary * months) = (
        SELECT MAX(salary * months)
        FROM Employee
    )