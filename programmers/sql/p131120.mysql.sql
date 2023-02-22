/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/131120?language=mysql
    제목: 3월에 태어난 여성 회원 목록 출력하기
*/

-- 코드를 입력하세요
SELECT
    MEMBER_ID
    ,MEMBER_NAME
    ,GENDER
    ,DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') DATE_OF_BIRTH
FROM MEMBER_PROFILE 
WHERE MONTH(DATE_OF_BIRTH) = 3
AND TLNO IS NOT NULL
AND GENDER = 'W'
ORDER BY MEMBER_ID;