--- Get a feel for the transactions table:
 SELECT *
 FROM transactions;

--- What is the total money in:
 SELECT SUM(money_in)
 FROM transactions;

--- What is the total money out:
 SELECT SUM(money_out)
 FROM transactions;

--- Examine whether Bitcoin dominates Fiddy Cent exchange. 
--- A. How many money_in transactions are in this table:
SELECT COUNT(*)
FROM transactions
WHERE money_in IS NOT NULL;
--- B. How many money_in transactions are in the table where BIT is the currency:
SELECT COUNT(*)
FROM transactions
WHERE money_in IS NOT NULL AND currency = 'BIT';

--- What was the largest transaction in this whole table:
SELECT MAX(money_in), MAX(money_out)
FROM transactions;

--- What is the average money_in in the table for the currency Ethereum ('ETH'):
SELECT AVG(money_in)
FROM transactions
WHERE currency = 'ETH';

--- Build a ledger for the different dates. Select date, average money_in, average money_out. Group everything by date
SELECT date, AVG(money_in), AVG(money_out)
FROM transactions
GROUP BY date;

--- Edit ledger. Round the averages to 2 decimal places. Rename.
SELECT date,
       ROUND(AVG(money_in),2) AS 'Average Money In',
       ROUND(AVG(money_out),2) AS 'Average Money Out'
FROM transactions
GROUP BY date;
       


