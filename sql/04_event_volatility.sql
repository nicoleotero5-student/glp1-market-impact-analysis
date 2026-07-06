-- Query 4: Price volatility in 30 day windows around each FDA approval event
-- Measures how violently each stock reacted to each specific approval
-- Higher volatility_pct = stronger market reaction to that event

WITH event_windows AS (
    SELECT 
        sp.ticker,
        sp.sector,
        sp.Date,
        sp.close_price,
        CASE 
            WHEN sp.Date BETWEEN date('2021-06-04', '-30 days') 
                AND date('2021-06-04', '+30 days') 
            THEN 'wegovy_approval'
            WHEN sp.Date BETWEEN date('2022-05-13', '-30 days') 
                AND date('2022-05-13', '+30 days') 
            THEN 'mounjaro_approval'
            WHEN sp.Date BETWEEN date('2023-11-08', '-30 days') 
                AND date('2023-11-08', '+30 days') 
            THEN 'zepbound_approval'
        END AS event_window
    FROM stock_prices sp
    WHERE ticker != 'SPY'
)
SELECT 
    ticker,
    sector,
    event_window,
    COUNT(*) AS trading_days,
    ROUND(MIN(close_price), 2) AS window_low,
    ROUND(MAX(close_price), 2) AS window_high,
    ROUND(MAX(close_price) - MIN(close_price), 2) AS price_range,
    ROUND((MAX(close_price) - MIN(close_price)) / MIN(close_price) * 100, 2) AS volatility_pct
FROM event_windows
WHERE event_window IS NOT NULL
GROUP BY ticker, sector, event_window
ORDER BY event_window, volatility_pct DESC;