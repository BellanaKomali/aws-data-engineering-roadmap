import pandas as pd
import time

# --- Sample Orders DataFrame ---
orders = pd.DataFrame({
    "OrderID": [101, 102, 103, 104, 105],
    "CustomerID": [1, 2, 2, 3, 1],
    "Amount": [250, 100, 400, 150, 300],
    "OrderDate": pd.to_datetime(["2024-01-10", "2024-01-12", "2024-02-01", "2024-02-05", "2024-02-10"])
})

# --- Simulating Indexes ---
# Pandas doesn't have DB indexes, but sorting can mimic faster lookups
orders_sorted = orders.sort_values("CustomerID")
print("\nSorted by CustomerID (simulated index):")
print(orders_sorted)

# --- Query Performance Comparison ---
start = time.time()
result = orders[orders["CustomerID"] == 2]
end = time.time()
print(f"\nFilter without index: {result}\nTime: {end-start:.6f} seconds")

start = time.time()
result = orders_sorted[orders_sorted["CustomerID"] == 2]
end = time.time()
print(f"\nFilter with sorted 'index': {result}\nTime: {end-start:.6f} seconds")

# --- Normalization Example ---
customers = pd.DataFrame({
    "CustomerID": [1, 2, 3],
    "Name": ["Alice", "Bob", "Charlie"]
})

orders_normalized = orders[["OrderID", "CustomerID", "Amount", "OrderDate"]]
print("\nNormalized Tables:")
print(customers)
print(orders_normalized)

# --- Denormalization Example ---
orders_denormalized = pd.merge(orders_normalized, customers, on="CustomerID", how="left")
print("\nDenormalized Orders (with CustomerName):")
print(orders_denormalized)
