📊 Google Stock Analysis (2004–2025)
🧠 Objective

Analyze long-term stock trends using SQL.

📁 Dataset

Google stock historical data including:

Date

Open

High

Low

Close

Volume

💻 Key SQL Queries
Yearly Average Close
SELECT 
    EXTRACT(YEAR FROM trade_date) AS year,
    ROUND(AVG(close_price),2) AS avg_close
FROM google_stock
GROUP BY year
ORDER BY year;

Highest Closing Price
SELECT trade_date, close_price
FROM google_stock
ORDER BY close_price DESC
LIMIT 1;

📈 Insights

Strong upward growth trend from 2013–2021

Volume spikes during major market events

Increasing volatility during tech boom years
