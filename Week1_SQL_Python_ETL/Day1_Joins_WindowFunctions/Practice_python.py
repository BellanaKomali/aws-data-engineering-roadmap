import pandas as pd

# --- Sample DataFrames ---
customers = pd.DataFrame({
    "CustomerID": [1, 2, 3],
    "Name": ["Alice", "Bob", "Charlie"]
})

orders = pd.DataFrame({
    "OrderID": [101, 102, 103, 104],
    "CustomerID": [1, 2, 2, 3],
    "Amount": [250, 100, 400, 150],
    "OrderDate": pd.to_datetime(["2024-01-10", "2024-01-12", "2024-02-01", "2024-02-05"])
})

# --- Joins ---
print("\nINNER JOIN:")
inner = pd.merge(customers, orders, on="CustomerID", how="inner")
print(inner)

print("\nLEFT JOIN:")
left = pd.merge(customers, orders, on="CustomerID", how="left")
print(left)

# --- Window Functions ---
print("\nRANK(): Top orders per customer")
orders["rank"] = orders.groupby("CustomerID")["Amount"].rank(method="dense", ascending=False)
print(orders[["CustomerID", "OrderID", "Amount", "rank"]])

print("\nROW_NUMBER(): Sequential order tracking")
orders["seq"] = orders.groupby("CustomerID").cumcount() + 1
print(orders[["CustomerID", "OrderID", "OrderDate", "seq"]])

print("\nLAG(): Compare current vs previous order")
orders["prev_amount"] = orders.groupby("CustomerID")["Amount"].shift(1)
print(orders[["CustomerID", "OrderID", "Amount", "prev_amount"]])

# --- Mini ETL Transformation ---
print("\nETL Transformation:")
orders_clean = orders.dropna().drop_duplicates()
orders_clean["Amount_Category"] = pd.cut(
    orders_clean["Amount"],
    bins=[0, 200, 300, 500],
    labels=["Low", "Medium", "High"]
)
print(orders_clean)
