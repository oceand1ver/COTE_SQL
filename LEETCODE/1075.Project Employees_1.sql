SELECT P.project_id,
    ROUND(AVG(E.experience_years), 2) AS average_years
FROM Project P
    join Employee E using(employee_id)
GROUP BY P.project_id