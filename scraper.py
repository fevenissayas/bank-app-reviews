from google_play_scraper import Sort, reviews_all
import pandas as pd

banks = {
    "CBE": "com.ethiopianbank.cbe",
    "Awash": "com.kifiya.awashbank",
    "Dashen": "com.ethiopianbanks.dashenbank"
}

all_reviews = []

for bank, app_id in banks.items():
    print(f"Scraping {bank}...")
    reviews = reviews_all(
        app_id,
        sleep_milliseconds=0,
        lang='en',
        country='us',
        sort=Sort.NEWEST
    )
    for r in reviews[:400]:  # Only first 400
        all_reviews.append({
            "review": r['content'],
            "rating": r['score'],
            "date": r['at'].date().isoformat(),
            "bank": bank,
            "source": "Google Play"
        })

df = pd.DataFrame(all_reviews)
df.to_csv("raw_reviews.csv", index=False)
print("Scraping completed and saved to raw_reviews.csv")
