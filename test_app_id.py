from google_play_scraper import app

app_ids = [
    "com.dashen.dashensuperapp",
    "com.sc.awashpay",
    "com.combanketh.mobilebanking"
]

for app_id in app_ids:
    try:
        details = app(app_id)
        print(f"{app_id} - {details['title']}")
    except Exception as e:
        print(f"{app_id} - {e}")
