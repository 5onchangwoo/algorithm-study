-- 코드를 입력하세요
SELECT
       A.CAR_ID
     , ROUND(AVG(TO_DATE(A.END_DATE) - TO_DATE(A.START_DATE)), 1) + 1 "AVERAGE_DURATION"
  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY A
 GROUP BY A.CAR_ID
HAVING ROUND(AVG(TO_DATE(A.END_DATE) - TO_DATE(A.START_DATE)), 1) + 1 >= 7.00
 ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC