SELECT s.name
FROM Students AS s
    JOIN Friends AS f ON s.id = f.id
    JOIN Packages AS ps ON s.id = ps.id
    JOIN Packages AS pf ON f.friend_id = pf.id
WHERE pf.salary > ps.salary
ORDER BY pf.salary;