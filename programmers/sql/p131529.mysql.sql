/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/131529
    제목: 카테고리 별 상품 개수 구하기
*/

-- 코드를 입력하세요
SELECT
    SUBSTR(PRODUCT_CODE,1,2) AS CATEGORY
    ,COUNT(1) AS PRODUCTS
FROM PRODUCT
GROUP BY SUBSTR(PRODUCT_CODE,1,2)
ORDER BY SUBSTR(PRODUCT_CODE,1,2);