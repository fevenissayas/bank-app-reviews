import pandas as pd

df = pd.read_csv("raw_reviews.csv")

# Drop duplicates and handle missing
df.drop_duplicates(subset=["review"], inplace=True)
df.dropna(inplace=True)

# Normalize date format (already done in scraper, but let's re-ensure it)
df['date'] = pd.to_datetime(df['date']).dt.date.astype(str)

# Save cleaned data
df.to_csv("clean_reviews.csv", index=False)
print(f"Saved cleaned data: {df.shape[0]} rows")
