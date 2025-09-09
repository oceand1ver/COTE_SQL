SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS info
FROM Occupations
ORDER BY Name;
SELECT CONCAT(
        'There are a total of',
        ' ',
        COUNT(*),
        ' ',
        LOWER(Occupation),
        's.'
    )
FROM Occupations
GROUP BY Occupation
ORDER BY COUNT(*),
    OCCUPATION;