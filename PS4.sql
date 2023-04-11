with cte as 
(
SELECT city,sum(amount) as sum_amount
FROM credit_card_transcations
where card_type = 'Gold'
group by city
)
select *,(100*sum_amount/sum(sum_amount) over (order by sum_amount rows BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)) as percentage from cte
limit 1 
