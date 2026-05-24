# Concepts
# Day 1 – SQL Joins & Window Functions

## Joins
- **INNER JOIN**: Returns rows with matching keys in both tables.
- **LEFT JOIN**: Returns all rows from the left table, plus matches from the right.
- **RIGHT JOIN**: Opposite of LEFT JOIN.
- **FULL OUTER JOIN**: Returns all rows when there’s a match in either table.
- **SELF JOIN**: A table joined with itself (e.g., employees reporting to managers).

## Window Functions
- **ROW_NUMBER()**: Sequential numbering of rows per partition.
- **RANK()**: Ranking with gaps for ties.
- **DENSE_RANK()**: Ranking without gaps.
- **LAG()**: Previous row’s value.
- **LEAD()**: Next row’s value.

## Key Insights
- Joins combine data across tables; window functions add context without collapsing rows.
- WHERE filters before aggregation; HAVING filters after aggregation.
- EXISTS checks for existence, JOIN returns combined rows.

