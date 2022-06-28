# Write your MySQL query statement below
SELECT s1.stock_name, (s2.price - s1.price) as capital_gain_loss

FROM (SELECT stock_name, SUM(price) as price
      FROM Stocks
      WHERE Operation = 'BUY'
      GROUP BY stock_name) s1

JOIN (SELECT stock_name, SUM(price) as price
      FROM Stocks
      WHERE Operation = 'SELL'
      GROUP BY stock_name) s2
      
ON s1.stock_name = s2.stock_name