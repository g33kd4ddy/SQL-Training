SELECT ename,
	   CONCAT(ename, job),
	   INSTR(ename, 'O'),
	   LENGTH(ename),
	   LOWER(ename),
	   SUBSTR(ename,2,1),
	   TRIM('    SPACES     '),
	   UPPER('lower case')
  FROM emp