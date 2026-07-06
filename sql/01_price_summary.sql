-- Query 1: Average, min and max closing price per ticker across the full period
-- Used to establish baseline price characteristics for each company

SELECT 
    ticker,
    sector,
    ROUND(AVG(close_price), 2) AS avg_price,
    ROUND(MIN(close_price), 2) AS min_price,
    ROUND(MAX(close_price), 2) AS max_price
FROM stock_prices
GROUP BY ticker, sector
ORDER BY sector, ticker;