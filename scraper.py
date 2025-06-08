from google_play_scraper import Sort, reviews_all
import pandas as pd

banks = {
    "CBE": "com.combanketh.mobilebanking",
    "Awash": "com.sc.awashpa",
    "Dashen": "com.dashen.dashensuperapp"
}

all_reviews = []

for bank, app_id in banks.items():
    print(f"Scraping {bank}...")
    try:
        reviews = reviews_all(
            app_id,
            sleep_milliseconds=0,
            lang='en',
            country='us',
            sort=Sort.NEWEST
        )
        for r in reviews[:400]:
            all_reviews.append({
                "review": r['content'],
                "rating": r['score'],
                "date": r['at'].date().isoformat(),
                "bank": bank,
                "source": "Google Play"
            })
    except Exception as e:
        print(f"Error scraping {bank}: {e}")

df = pd.DataFrame(all_reviews)
print(f"Total reviews scraped: {len(df)}")
df.to_csv("raw_reviews.csv", index=False)