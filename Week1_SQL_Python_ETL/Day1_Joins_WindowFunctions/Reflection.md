# Reflection – Day 1

## Tricky Interview Questions
- Difference between WHERE and HAVING?  
  → WHERE filters rows before aggregation, HAVING filters groups after aggregation.

- INNER JOIN vs EXISTS?  
  → INNER JOIN returns combined rows, EXISTS checks for existence.

- RANK() vs DENSE_RANK()?  
  → RANK() skips numbers when ties occur, DENSE_RANK() does not.

## Practical Problems
- Find customers who placed more than 2 orders.
- Rank orders by amount per customer.
- Compare each customer’s current order to their previous one using LAG().
- Assign sequential numbers to each order per customer using ROW_NUMBER().
- Show manager → employee mapping with a self join.

## Personal Notes
- LEFT JOIN returning NULLs for unmatched rows was a key insight.
- Window functions are powerful for analytics—especially ranking and retention analysis.
- Joins are about combining datasets, window functions are about adding context.
