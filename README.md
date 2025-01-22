### Django Web Applaction using ReactJS as the frontend (Template)
---

### Prerequisites:
`Python` `Node` `Postgres` 

:bulb: **Backend:** Django
- :white_check_mark: Custom user model

:bulb: **Frontend:** ReactJS served as static files
- :white_check_mark: Vite

:bulb: **Database:** PostgreSQL
- psycopg2-binary
- dj-database-url

:heavy_exclamation_mark: You have to install PostgreSQL on your device and create a database before setting up the `DATABASE_URL` variable.

:bulb: **Environment Variables:**
- `SECRET_KEY=<add yours>`
- `DATABASE_URL=postgresql://postgres:<password>@localhost:5432/<db_name>`
- `SSL_REQUIRE=False`

:pushpin: **Starting development**

- Creating and activating virtual environment (venv, pipenv e.g.)
- Installing dependencies: `pip install -r requirements.txt`
- Setting up database as mentioned above
- Creating `.env` file and adding the variables listed above
- Migrating the data with: `python manage.py makemigrations accounts` and `python manage.py migrate` commands
