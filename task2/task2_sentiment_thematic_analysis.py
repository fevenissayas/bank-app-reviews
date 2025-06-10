import os
import pandas as pd
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer
from sklearn.feature_extraction.text import TfidfVectorizer
import spacy

# Initialize spaCy model for keyword extraction (English)
nlp = spacy.load("en_core_web_sm")

# Initialize VADER sentiment analyzer
analyzer = SentimentIntensityAnalyzer()

# Get project root directory (one level up from this script)
PROJECT_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

# Paths for input/output
input_csv_path = os.path.join(PROJECT_ROOT, 'raw_reviews.csv')
output_csv_path = os.path.join(PROJECT_ROOT, 'processed_reviews_with_sentiment_and_themes.csv')

def preprocess_text(text):
    """Basic preprocessing for thematic analysis."""
    doc = nlp(text.lower())
    tokens = [token.lemma_ for token in doc if not token.is_stop and token.is_alpha]
    return " ".join(tokens)

def extract_keywords(texts, ngram_range=(1,2), top_n=20):
    """Extract top TF-IDF keywords and n-grams from list of texts."""
    vectorizer = TfidfVectorizer(ngram_range=ngram_range, max_features=top_n)
    X = vectorizer.fit_transform(texts)
    return vectorizer.get_feature_names_out()

def assign_theme(review_text):
    """Assign simple theme labels based on keyword presence."""
    themes = {
        'Account Access Issues': ['login', 'password', 'account', 'access', 'sign in', 'signin', 'log in', 'locked'],
        'Transaction Performance': ['transfer', 'transaction', 'payment', 'send', 'receive', 'failed', 'slow'],
        'User Interface & Experience': ['ui', 'interface', 'app', 'crash', 'bug', 'design', 'layout', 'slow', 'freeze'],
        'Customer Support': ['support', 'help', 'service', 'customer', 'response', 'agent', 'call', 'email'],
        'Feature Requests': ['feature', 'request', 'add', 'improve', 'update', 'wish', 'option']
    }
    review_lower = review_text.lower()
    assigned = []
    for theme, keywords in themes.items():
        if any(k in review_lower for k in keywords):
            assigned.append(theme)
    if not assigned:
        assigned = ['Other']
    return ", ".join(assigned)

def main():
    # Load raw reviews
    df = pd.read_csv(input_csv_path)

    # Use the actual column name from your CSV
    if 'review' not in df.columns:
        raise ValueError("Input CSV must contain a 'review' column.")
    
    text_col = 'review'

    # Compute sentiment scores & labels with VADER
    sentiments = df[text_col].apply(lambda x: analyzer.polarity_scores(str(x)))
    df['sentiment_neg'] = sentiments.apply(lambda x: x['neg'])
    df['sentiment_neu'] = sentiments.apply(lambda x: x['neu'])
    df['sentiment_pos'] = sentiments.apply(lambda x: x['pos'])
    df['sentiment_compound'] = sentiments.apply(lambda x: x['compound'])

    # Sentiment label based on compound score
    def label_sentiment(compound):
        if compound >= 0.05:
            return 'positive'
        elif compound <= -0.05:
            return 'negative'
        else:
            return 'neutral'

    df['sentiment_label'] = df['sentiment_compound'].apply(label_sentiment)

    # Preprocess text for keyword extraction
    preprocessed_texts = df[text_col].astype(str).apply(preprocess_text)

    # Extract keywords to help with theme clustering (optional display)
    keywords = extract_keywords(preprocessed_texts.tolist(), ngram_range=(1,2), top_n=30)
    print("Top extracted keywords and phrases:")
    print(keywords)

    # Assign themes based on keywords/rule-based mapping
    df['identified_themes'] = df[text_col].apply(assign_theme)

    # Save processed reviews with sentiment and themes
    df.to_csv(output_csv_path, index=False)
    print(f"Saved sentiment and themes for {len(df)} reviews to {output_csv_path}")

if __name__ == "__main__":
    main()
