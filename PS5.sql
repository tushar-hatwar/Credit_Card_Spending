with cte as 
(
SELECT city,exp_type, sum(amount) as sum_exp
FROM credit_card_transcations
GROUP BY city,exp_type
)
select city, max(case when rn_asc=1 then exp_type  else null end )as lowest_exp_type,
max(case when rn_dsc=1 then exp_type  else null end )as highest_exp_type
from(
select  *
,rank() over (partition by city order by sum_exp) as rn_asc
,rank() over (partition by city order by sum_exp desc) as rn_dsc
from cte
) A
group by city
order by city