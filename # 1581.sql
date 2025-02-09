# 1581. Customer Who Visited but Did Not Make Any Transactions
select customer_id, count(visit_id) as count_no_trans
from visits as vi
where visit_id not in
(select visit_id from transactions)
group by customer_id;