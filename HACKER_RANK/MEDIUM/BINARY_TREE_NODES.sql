SELECT b.N,
    CASE
        WHEN b.P IS NULL THEN 'Root' -- 부모가 없으면 Root
        WHEN NOT EXISTS (
            SELECT 1
            FROM BST c
            WHERE c.P = b.N
        ) -- 자식이 하나도 없으면 Leaf
        THEN 'Leaf'
        ELSE 'Inner' -- 나머지는 Inner
    END AS Type
FROM BST b
ORDER BY b.N;