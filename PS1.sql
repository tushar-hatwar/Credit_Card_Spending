with cte as 
(
SELECT city, sum(amount) as spend
FROM  credit_card_transcations
group by city
)
SELECT *, sum(spend) over (order by spend desc rows between UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING )as total_spend,
ROUND((spend /sum(spend) over (order by spend desc rows between UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING )*100),2) as percentage_contribution
FROM CTE
limit 5
