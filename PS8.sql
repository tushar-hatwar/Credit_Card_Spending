select city,sum(amount) as total_amount, count(1) as total_transactions, sum(amount)* 1.0 /(count(1)) as ratio
FROM credit_card_transcations 
where extract(dow from transaction_date ) in(0,6)
group by city 
order by ratio desc;