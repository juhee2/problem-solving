/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/131530
    제목: 가격대 별 상품 개수 구하기
*/

-- 코드를 입력하세요
SELECT 
    FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP -- TRUNCATE(PRICE, -4) AS PRICE_GROUP -4로 천의자리까지 버리기!
    ,COUNT(PRODUCT_CODE) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;