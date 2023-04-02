--Get the number of transactions that happened in each city 

SELECT MAX(transaction_date) as start_date, MIN(Transaction_date) as end_date 
FROM credit_card_transcations

--Get the list of cities for Credit card transactions order by city name

SELECT Distinct(city)
FROM credit_card_transcations
ORDER BY city

-- Get top 10 cities by credit card spend
SELECT city, SUM(amount) AS TOTAL_SUM
FROM credit_card_transcations
GROUP BY city
ORDER BY TOTAL_SUM DESC
LIMIT 10 

--Find top 3 items on which credit card expenditure is most

SELECT exp_type, SUM(amount) AS TOTAL_SUM
FROM credit_card_transcations
GROUP BY exp_type
ORDER BY TOTAL_SUM DESC
LIMIT 3

--Find the amount spend by each gender in every year 
SELECT extract(year from transaction_date)as transaction_year, gender, sum(amount) 
FROM credit_card_transcations
GROUP BY transaction_year, gender
ORDER BY transaction_year, gender

