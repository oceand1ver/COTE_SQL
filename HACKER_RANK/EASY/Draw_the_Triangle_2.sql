WITH RECURSIVE t(n) AS (
    -- t: 임시 테이블 이름, n: 테이블 안 컬럼 이름
    SELECT 1
    UNION ALL
    SELECT n + 1
    FROM t
    WHERE n < 20
)
SELECT REPEAT('* ', n)
FROM t;