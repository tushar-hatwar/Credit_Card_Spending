with cte2 as 
(
with cte1 as (
select transaction_id, card_type, transaction_date,amount, 
sum(amount) over(partition by card_type order by card_type,transaction_date,transaction_id rows between UNBOUNDED PRECEDING and CURRENT ROW ) as sum_transact
from credit_card_transcations
)
select *, ROW_NUMBER ( )   
OVER ( PARTITION BY card_type order by sum_transact ) as rn from cte1 
where sum_transact >1000000
)
select * from cte2 where rn=1