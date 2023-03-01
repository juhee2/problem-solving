/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/133026
    제목: 성분으로 구분한 아이스크림 총 주문량
*/

-- 코드를 입력하세요
SELECT
    II.INGREDIENT_TYPE
    ,SUM(FH.TOTAL_ORDER) TOTAL_ORDER
FROM FIRST_HALF FH JOIN ICECREAM_INFO II
ON FH.FLAVOR = II.FLAVOR
GROUP BY II.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER;