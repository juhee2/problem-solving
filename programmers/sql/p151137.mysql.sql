
/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/151137
    제목: 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
*/

-- 코드를 입력하세요
SELECT
    CAR_TYPE
    ,COUNT(CAR_ID) CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE (
    OPTIONS LIKE '%통풍시트%'
    OR
    OPTIONS LIKE '%열선시트%'
    OR
    OPTIONS LIKE '%가죽시트%'
)
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE;

/*
    WHERE 절에 OR 로 연결 말고 정규식 사용!
    
    WHERE OPTIONS EXPREG '통풍시트|열선시트|가죽시트'

    => WHERE 정규식체크할컬럼 EXPREG '정규식'
*/