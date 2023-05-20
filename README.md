Apologies for the confusion. Here's the modified version of the project summary using PostgreSQL with Azure Data Studio:

![MasterHead](https://media.giphy.com/media/EopV0wKH3USE9F7fhe/giphy.gif)

## Introduction

This project is a data analysis of credit card transactions made in India, offering a comprehensive look at the spending habits of Indians across the nation using complex SQL queries. The dataset is sourced from Kaggle and provided by The Devastator, containing information on credit card transactions including the city, card type, expense type, and amount spent. The data is available in CSV format and is loaded into a PostgreSQL database managed through Azure Data Studio for analysis.

## Dataset

The dataset used in this project is sourced from Kaggle and provided by The Devastator. It contains information on credit card transactions made in India, including the city, card type, expense type, and amount spent. The dataset is available in CSV format and can be downloaded from the following link:

[Link to Dataset](https://www.kaggle.com/datasets/thedevastator/analyzing-credit-card-spending-habits-in-india)

## Tools and Technologies Used

- PostgreSQL
- Azure Data Studio

## Analysis

The data analysis is performed using complex SQL queries in Azure Data Studio, a cross-platform database tool for managing and querying PostgreSQL databases. The SQL queries are executed in Azure Data Studio's query editor, enabling efficient data retrieval and analysis. The analyses conducted in this project include:

1. Retrieving the top 5 cities with the highest spends and their percentage contribution to the total credit card spends.
2. Finding the highest spend month and amount spent for each card type.
3. Extracting the transaction details (all columns from the table) for each card type when it reaches a cumulative total of 1000000 spends (4 rows in the output, one for each card type).
4. Identifying the city with the lowest percentage spend for the gold card type.
5. Printing 3 columns: city, highest_expense_type, lowest_expense_type (example format: Delhi, bills, Fuel).
6. Determining the percentage contribution of spends by females for each expense type.
7. Analyzing the card and expense type combination that experienced the highest month-over-month growth in Jan-2014.
8. Finding the city with the highest total spend to total number of transactions ratio during weekends.

## Conclusion

This project showcases the utilization of PostgreSQL and Azure Data Studio for analyzing credit card transaction data in India. By leveraging the power of complex SQL queries in Azure Data Studio's intuitive interface, valuable insights into spending habits across cities, card types, and expense categories are obtained. The code and SQL queries used for the analysis are included in this repository, serving as a reference for further exploration and analysis.
