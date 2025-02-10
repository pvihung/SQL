#557 Employee Bonus 

select e.name, e.bonus 
from employee as e 
left join bonus as b
on e.empId = b.empId 
where b.bonus < 2000 or b.bonus is null 