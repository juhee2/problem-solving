/* 
    문제: https://school.programmers.co.kr/learn/courses/30/lessons/131533
    제목: 상품 별 오프라인 매출 구하기
*/

-- 코드를 입력하세요
SELECT
    P.PRODUCT_CODE
    ,SUM(P.PRICE * OS.SALES_AMOUNT) AS SALES
FROM PRODUCT P JOIN OFFLINE_SALE OS
ON P.PRODUCT_ID = OS.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE;
