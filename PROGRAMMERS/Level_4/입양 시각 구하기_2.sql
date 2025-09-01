WITH RECURSIVE time as(
    select 0 as HOUR
    union all
    select HOUR + 1
    from time
    where HOUR < 23
)
SELECT time.HOUR,
    COUNT(A.DATETIME) as COUNT
FROM time
    LEFT JOIN ANIMAL_OUTS AS A ON time.HOUR = HOUR(A.DATETIME)
GROUP BY time.HOUR