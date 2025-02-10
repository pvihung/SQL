# 197. Rising Temperature
select w2.id
from weather as w1
join weather as w2
on datediff(w1.recordDate, w2.recordDate) =-1
where w1.temperature < w2.temperature
