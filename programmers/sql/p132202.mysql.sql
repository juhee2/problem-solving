/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/132202
    제목: 진료과별 총 예약 횟수 출력하기
*/

-- 코드를 입력하세요
SELECT
    MCDP_CD AS "진료과코드"
    ,COUNT(PT_NO) AS "5월예약건수"
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, '%m') = '05'
GROUP BY MCDP_CD
ORDER BY COUNT(PT_NO), MCDP_CD;