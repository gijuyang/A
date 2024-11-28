SELECT B.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY, SUM(SALES * PRICE)
FROM BOOK B, AUTHOR A, BOOK_SALES C
WHERE B.AUTHOR_ID = A.AUTHOR_ID
AND B.BOOK_ID = C.BOOK_ID
AND TO_CHAR(SALES_DATE,'YYYYMM') = 202201

GROUP BY B.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY
ORDER BY AUTHOR_ID,  CATEGORY DESC;