-- GOAL:  List the number of employees by department.
-- Count from emp table is missing depts
select deptno, count(*)
  from emp
group by deptno

SELECT *
FROM dept

-- Right Join
-- count(*) is counting rows.
SELECT b.deptno, count(*)
  FROM emp a
       RIGHT JOIN dept b 
         ON a.deptno = b.deptno
GROUP BY b.deptno

-- count(a.empno) will not count nulls
SELECT b.deptno, count(a.empno)
  FROM emp a
       RIGHT JOIN dept b 
         ON a.deptno = b.deptno
GROUP BY b.deptno

-- Left Join
SELECT b.deptno, count(a.empno)
  FROM emp a
       LEFT JOIN dept b 
         ON a.deptno = b.deptno
GROUP BY b.deptno

-- Full Join
SELECT b.deptno, count(a.empno)
  FROM emp a
       FULL JOIN dept b 
         ON a.deptno = b.deptno
GROUP BY b.deptno