![MasterHead](https://media.giphy.com/media/EopV0wKH3USE9F7fhe/giphy.gif)

## Introduction

This project is a data analysis of credit card transactions made in India, offering a comprehensive look at the spending habits of Indians across the nation with the help of complex SQL queries. The data set is taken from Kaggle and is provided by The Devastator. It contains information on credit card transactions, including the city, card type, expense type, and amount spent. The data is available in CSV format and is converted into an SQL database for data analysis.

## Dataset

The dataset used in this project is sourced from Kaggle and is provided by The Devastator. It contains information on credit card transactions made in India, including the city, card type, expense type, and amount spent. The dataset is available in CSV format and can be downloaded from the following link:

https://www.kaggle.com/datasets/thedevastator/analyzing-credit-card-spending-habits-in-india

## Tools and Technologies Used

- SQL
- SQLite
- Jupyter Notebook

## Analysis

The data analysis is conducted using complex SQL queries in a Jupyter Notebook, which is included in this repository. The notebook includes the following analyses:

- 1. Query to print the top 5 cities with the highest spends and their percentage contribution of total credit card spends.
- 2. Query to print the highest spend month and amount spent in that month for each card type.
- 3. Query to print the transaction details (all columns from the table) for each card type when it reaches a cumulative of 1000000 total spends (4 rows in the output, one for each card type).
- 4. Query to find the city which had the lowest percentage spend for the gold card type.
- 5. Query to print 3 columns: city, highest_expense_type, lowest_expense_type (example format: Delhi, bills, Fuel).
- 6. Query to find the percentage contribution of spends by females for each expense type.
- 7. Query to identify the card and expense type combination that saw the highest month-over-month growth in Jan-2014.
- 8. Query to find the city that had the highest total spend to total number of transactions ratio during weekends.

## Conclusion

This project demonstrates how complex SQL queries can be used to analyze a large dataset and derive insights from it. The analysis conducted in this project provides interesting insights into the spending habits of Indians across different cities, card types, and expense types. The code and the notebook used for the analysis are included in this repository for reference.
