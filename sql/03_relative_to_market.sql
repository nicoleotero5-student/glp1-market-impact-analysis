-- Query 3: Stock performance relative to SPY market benchmark
-- Isolates GLP-1 driven moves from broader market trend
-- Positive relative_to_market = outperformed the market
-- Negative relative_to_market = underperformed the market

WITH spy_performance AS (
    SELECT 
        ROUND(
            (AVG(CASE WHEN Date >= '2021-06-04' THEN close_price END) - 
             AVG(CASE WHEN Date < '2021-06-04' THEN close_price END)) /
             AVG(CASE WHEN Date < '2021-06-04' THEN close_price END) * 100
        , 2) AS spy_pct_change
    FROM stock_prices 
    WHERE ticker = 'SPY'
),
stock_performance AS (
    SELECT 
        ticker,
        sector,
        ROUND(
            (AVG(CASE WHEN Date >= '2021-06-04' THEN close_price END) - 
             AVG(CASE WHEN Date < '2021-06-04' THEN close_price END)) /
             AVG(CASE WHEN Date < '2021-06-04' THEN close_price END) * 100
        , 2) AS stock_pct_change
    FROM stock_prices 
    WHERE ticker != 'SPY'
    GROUP BY ticker, sector
)
SELECT 
    s.ticker,
    s.sector,
    s.stock_pct_change,
    sp.spy_pct_change AS market_pct_change,
    ROUND(s.stock_pct_change - sp.spy_pct_change, 2) AS relative_to_market
FROM stock_performance s
CROSS JOIN spy_performance sp
ORDER BY relative_to_market DESC;