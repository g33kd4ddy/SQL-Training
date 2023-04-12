CREATE OR REPLACE FUNCTION ANNUAL_SAL(P_SAL NUMBER, P_COMM NUMBER)
  RETURN NUMBER
  AS
BEGIN
  RETURN (P_SAL * 24) + (NVL(P_COMM,0) * 24);
END;
/


-- Test function
SELECT ename,
       sal,
       comm,
       annual_sal(sal, comm)
  FROM EMP