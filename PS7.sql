with cte2 as 
(
   with cte as (
SELECT  card_type,exp_type,extract(month from transaction_date) as month_num, sum (amount ) as sum_amount
FROM credit_card_transcations
where transaction_date between '2013-12-01' AND '2014-01-31'
group by card_type,exp_type,extract(month from transaction_date)
)
select *, ROUND(100*(sum_amount - lag(sum_amount,1,NULL) over(partition by card_type,exp_type order by card_type, month_num desc)) / (1.00* lag(sum_amount,1,NULL) over(partition by card_type order by card_type, month_num desc)),2) as mom
from cte 
)
select card_type,exp_type,max(mom) as mom_growth
from cte2
group by card_type, exp_type
order by mom_growth desc;