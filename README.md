# US-Biochar-Atlas-Biochar-Selection-Tool
The tool takes in user-input soil test data and crop requirements to search the biochar characteristics database for biochar that meets the users soil health goals.

##To run the app on your computer, open Terminal (Mac) or Putty (PC) and run the following code
1. Load in the sample database:
  psql -U postgres -d practiceAtlas -f practiceAtlas_clean.sql
2. Copy the example env file:
  cp .env.example .env
3. Install dependencies:
  pip install -r requirements.txt
4. Run the app:
  web: gunicorn -w 4 -b 0.0.0.0:8080 app:app
