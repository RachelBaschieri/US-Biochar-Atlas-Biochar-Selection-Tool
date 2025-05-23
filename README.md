# US-Biochar-Atlas-Biochar-Selection-Tool
The tool takes in user-input soil test data and crop requirements to search the biochar characteristics database for biochar that meets the users soil health goals.

#To run the app on your local machine
 1. Clone the repository:
    a. ```bash git clone https://github.com/your-username/US-Biochar-Atlas-Biochar-Selection-Tool.git

    b. cd US-Biochar-Atlas-Biochar-Selection-Tool

2. Make sure PostgreSQL is installed and psql is accessible from the command line then run the following:
 
   a. createdb -U postgres practiceAtlas (This is run first to create the database called practiceAtlas. You may be prompted for a password. This is the password for your local    PostgreSQL postgres user. If you haven't set one, you may need to. Set a password using psql -U postgres -c "ALTER USER postgres WITH PASSWORD 'yourpassword';", you may replace  postgres with your own system user name if you used a different one. Skip this if the database already exists.)
  
   b. psql -U postgres -d practiceAtlas -f practiceAtlas_clean.sql (This command loads the .sql file into your database.)

3. Copy the example env file: cp .env.example .env

4. Open the .env in a text editor and update values as needed, e.g.: DATABASE_URL=postgresql://username:yourpassword@localhost:####/practiceAtlas (edit to add your username, password, and port#) SECRET_KEY=your_secret_key

5. Create a virtual environment:

    a. python3 -m venv venv

    b. source venv/bin/activate  # On Windows: venv\Scripts\activate

6. Install dependencies: pip install -r requirements.txt

7. Run the app: venv/bin/python3 -m flask run

8. Copy and paste the http string into your browser and go.


#Explanation of files
1. static - contains css and json files for simple formating of the html
2. templates - contains the html template index.html
3. app.py - the python code for the biochar selection tool
4. runtime.txt - tells the python version to run this app with
5. requirements.txt - lists all of the dependancies for running this app
6. practiceAtlas_clean.sql - a sample biochar characteristics database
7. .env.example - an example .env file to allow the app to access the biochar database
