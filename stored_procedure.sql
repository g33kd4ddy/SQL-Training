CREATE OR REPLACE PROCEDURE ISSUE_RAISE(
	P_PCT IN NUMBER, 
	P_SAL_TOTAL OUT NUMBER) 
	  AS

BEGIN
   UPDATE EMP
      SET SAL = SAL * (1 + (P_PCT / 100));
    
    SELECT SUM(SAL)
      INTO P_SAL_TOTAL
      FROM EMP;
END;
/