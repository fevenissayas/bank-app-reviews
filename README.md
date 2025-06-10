# Bank App Review Scraper

## Description
This project scrapes and processes user reviews from Google Play Store for three Ethiopian bank apps.

## Methodology
1. Scraped 400+ reviews each from CBE, Dashen, and Awash using `google-play-scraper`.
2. Removed duplicates and null values.
3. Normalized dates to `YYYY-MM-DD`.
4. Saved data to `clean_reviews.csv`.

## Structure
- `scraper.py`: Scrapes reviews.
- `preprocess.py`: Cleans and prepares dataset.
- `raw_reviews.csv`: Raw data.
- `clean_reviews.csv`: Final cleaned data.
