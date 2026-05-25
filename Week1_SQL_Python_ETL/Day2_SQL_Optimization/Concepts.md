# Day 2 – SQL Optimization

## Indexes
- Speed up lookups by avoiding full table scans.
- Types: single-column, composite, unique.
- Trade-off: faster reads, slower writes.

## Query Plans
- Execution strategy chosen by DB optimizer.
- Use EXPLAIN to analyze table scans, index usage, join algorithms.
- Optimize queries based on plan output.

## Normalization
- Organize data into smaller tables to reduce redundancy.
- 1NF, 2NF, 3NF forms.
- Best for OLTP systems.

## Denormalization
- Combine data into fewer tables to reduce joins.
- Improves read performance, adds redundancy.
- Best for OLAP/reporting systems.