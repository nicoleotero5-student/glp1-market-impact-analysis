-- Query 2: Average price before vs after Wegovy FDA approval (June 2021)
-- Measures the directional impact of the first GLP-1 obesity approval on each stock

SELECT 
    ticker,
    sector,
    ROUND(AVG(CASE WHEN Date < '2021-06-04' THEN close_price END), 2) AS avg_before_wegovy,
    ROUND(AVG(CASE WHEN Date >= '2021-06-04' THEN close_price END), 2) AS avg_after_wegovy,
    ROUND(
        (AVG(CASE WHEN Date >= '2021-06-04' THEN close_price END) - 
         AVG(CASE WHEN Date < '2021-06-04' THEN close_price END)) /
         AVG(CASE WHEN Date < '2021-06-04' THEN close_price END) * 100
    , 2) AS pct_change
FROM stock_prices
GROUP BY ticker, sector
ORDER BY pct_change DESC;