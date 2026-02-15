SELECT
  DATE_TRUNC('month', trade_date)::date AS month,
  ROUND(AVG(close_price), 2) AS avg_close,
  ROUND(AVG(adj_close), 2) AS avg_adj_close,
  SUM(volume) AS total_volume,
  ROUND(MAX(high_price), 2) AS max_high,
  ROUND(MIN(low_price), 2) AS min_low
FROM google_stock
GROUP BY 1
ORDER BY 1;
