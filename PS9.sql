select A.city, (A.transaction_date - B.min_date ) as date_diff from (select city, transaction_date, row_number() over(partition by city order by city,transaction_date ) as rn 
FROM credit_card_transcations ) A 
inner join 
(select city, min(transaction_date) as min_date FROM credit_card_transcations  group by city ) B
on A.city = B.city 
where rn=500
order by date_diff
limit 1