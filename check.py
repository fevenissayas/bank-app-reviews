import pandas as pd

df = pd.read_csv('processed_reviews_with_sentiment_and_themes.csv')
print(df.columns.tolist())
