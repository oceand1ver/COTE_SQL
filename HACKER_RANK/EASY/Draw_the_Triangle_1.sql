WITH RECURSIVE t(n) AS (
    SELECT 20
    UNION ALL
    SELECT n - 1
    FROM t
    WHERE n > 1
)
SELECT REPEAT('* ', n)
FROM t;