# Day 2 – Reflection: SQL Optimization

## Q1: Difference between normalization and denormalization?
- Normalization → integrity, less redundancy.
- Denormalization → speed, more redundancy.

## Q2: How do indexes improve performance?
- Faster lookups, avoid full scans.
- Trade-off: slower writes.

## Q3: What is a query plan?
- Execution strategy chosen by optimizer.
- Shows table scans, index usage, join algorithms.

## Q4: When would you denormalize?
- Reporting/OLAP workloads where joins are expensive.

## Q5: Common mistakes with indexes?
- Too many indexes → slow writes.
- Indexing low-cardinality columns → little benefit.
