# US-Biochar-Atlas-Biochar-Selection-Tool
The tool takes in user-input soil test data and crop requirements to search the biochar characteristics database for biochar that meets the users soil health goals.

#To run the app on your local machine
1. Clone the repository: ```bash
git clone https://github.com/your-username/US-Biochar-Atlas-Biochar-Selection-Tool.git
cd US-Biochar-Atlas-Biochar-Selection-Tool
2. Make sure PostgreSQL is installed and psql is accessible from the command line then load in the sample database:
  createdb practiceAtlas
  psql -U postgres -d practiceAtlas -f practiceAtlas_clean.sql
3. Copy the example env file:
  cp .env.example .env
4. Open the .env in a text editor and update values as needed, e.g.:
DATABASE_URL=postgresql://postgres:yourpassword@localhost:####/practiceAtlas
SECRET_KEY=your_secret_key
5. Create a virtual environment:
   python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
6. Install dependencies:
  pip install -r requirements.txt
7. Run the app:
   flask run


#Explanation of files
static - contains css and json files for simple formating of the html
templates - contains the html template index.html
app.py - the python code for the biochar selection tool
runtime.txt - tells the python version to run this app with
requirements.txt - lists all of the dependancies for running this app
practiceAtlas_clean.sql - a sample biochar characteristics database
.env.example - an example .env file to allow the app to access the biochar database
