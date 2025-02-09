# 1661. Average Time of Process per Machine
select distinct act2.machine_id, round(avg(act2.timestamp - act1.timestamp),3) as processing_time
from activity as act1
join activity as act2
on act1.process_id = act2.process_id and act1.machine_id = act2.machine_id
where act2.activity_type = "end" and act1.activity_type = "start"
group by machine_id