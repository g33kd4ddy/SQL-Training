SELECT sysdate,
       to_char(sysdate, 'mm/dd/yyyy hh24:mi') time_string,
       trunc(sysdate),
       trunc(sysdate, 'MONTH'),
       months_between(sysdate,hiredate),
       round(months_between(sysdate,hiredate) / 12) as years,
       ename,
       extract(year from hiredate) as hire_year,
       (sysdate - hiredate) / 365 as emp_years,
       next_day(sysdate, 'friday'),
       to_date('1/1/2020', 'mm/dd/yyyy')
  FROM emp