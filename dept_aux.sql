create table dept_aux 
  as
select *
from dept;

delete 
  from dept_aux
where deptno < 30;

insert into dept_aux  
values(50, 'MARKETING', 'CLEVELAND');

insert into dept_aux  
values(60, 'HR', 'DENVER');

insert into dept_aux  
values(70, 'LOGISTICS', 'ATLANTA');

insert into dept_aux  
values(80, 'IT', 'MIAMI');
