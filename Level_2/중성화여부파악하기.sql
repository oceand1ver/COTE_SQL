SELECT ANIMAL_ID,
    NAME,
    IF(
        SEX_UPON_INTAKE LIKE 'Neutered%'
        or SEX_UPON_INTAKE LIKE 'Spayed%',
        'O',
        'X'
    ) AS '중성화'
FROM ANIMAL_INS -- SELECT ANIMAL_ID, NAME, 
    -- CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' or SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
    -- ELSE 'X'
    -- END '중성화'
    -- FROM ANIMAL_INS