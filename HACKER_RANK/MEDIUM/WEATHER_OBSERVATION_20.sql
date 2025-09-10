SELECT ROUND(LAT_N, 4)
FROM (
        SELECT LAT_N,
            ROW_NUMBER() OVER (
                ORDER BY LAT_N
            ) AS rn,
            COUNT(*) OVER () AS total_rows
        FROM STATION
    ) AS subquery
WHERE rn = CEIL(total_rows / 2);