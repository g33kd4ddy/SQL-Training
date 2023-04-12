-- In A and not in B
select *
from dept
minus
select *
from dept_aux

-- In B and not in A
select *
from dept_aux
minus
select *
from dept
