SELECT B.DEPT_ID, DEPT_NAME_EN, AVG_SAL
FROM HR_DEPARTMENT A JOIN (
 SELECT DEPT_ID,ROUND(AVG(SAL)) AS AVG_SAL
    FROM HR_EMPLOYEES
    GROUP BY DEPT_ID
) B ON
A.DEPT_ID=B.DEPT_ID
ORDER BY AVG_SAL DESC
