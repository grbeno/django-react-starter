### Django Web Applaction using ReactJS as the frontend (Template)
---

**Prerequisites:**
`Python` `Node` `Postgres` 

:bulb: **Backend:** Django
- :white_check_mark: Custom user model

:bulb: **Frontend:** ReactJS served as static files
- :white_check_mark: Vite

:bulb: **Database:** PostgreSQL
- psycopg2-binary
- dj-database-url

:heavy_exclamation_mark: If you don't want to use the Docker image for running the application, then you have to install PostgreSQL on your device and create a database before setting up the `DATABASE_URL` variable.

:bulb: **Environment Variables:**
- `SECRET_KEY=<add yours>`
- `SSL_REQUIRE=False`
- `DATABASE_URL=postgresql://postgres:<password>@localhost:5432/<db_name>` * _If local (outside Docker) database is created_

:pushpin: **Starting development**

- Creating and activating virtual environment (venv, pipenv e.g.)
- Installing dependencies: `pip install -r requirements.txt`
- Setting up the database if needed, as mentioned above
- Creating `.env` file and adding the variables listed above
- Building React: `cd frontend` `npm run build`
- Migrating the data in the case of Docker:
    ```
    docker compose run --rm app python manage.py makemigrations accounts
    ```
    ```
    docker compose run --rm app python manage.py migrate
    ```
- Migrating the data in the case of local Postgres database:
  
    ```
    python manage.py makemigrations accounts
    ```
    ```
    python manage.py migrate
    ```
- Run with Docker:
  
    ```
    docker build -t app .
    ```
    ```
    docker-compose -f docker-compose.yml up --build
    ```
    
On the web browser: **localhost:8000** / **127.0.0.1:8000**
    