-- 코드를 입력하세요

SELECT C.NAME
     , C.DATETIME
  FROM (SELECT A.NAME
             , A.DATETIME
             , B.ANIMAL_ID
          FROM ANIMAL_INS A
          LEFT JOIN ANIMAL_OUTS B ON(A.ANIMAL_ID = B.ANIMAL_ID)
         WHERE B.ANIMAL_ID IS NULL
         ORDER BY A.DATETIME ASC) C
 WHERE ROWNUM < 4
     
