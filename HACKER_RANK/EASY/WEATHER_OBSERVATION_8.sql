SELECT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$' --.임의의 한 문자
    --*문자의 반복