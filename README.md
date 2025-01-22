### Django Web Applaction Template
---

### Prerequisites:
`Python` `Node` `Postgres` 

**Backend:** Django
- :white_check_mark: Custom user model initialized

**Frontend:** ReactJS served as static files
- :white_check_mark: Vite

**Database:** PostgreSQL
- psycopg2-binary
- dj-database-url

You have to install PostgreSQL on your device and create a database before setting up the DATABASE_URL variable. :heavy_exclamation_mark:

**Environment Variables:**
- `SECRET_KEY=<add yours>`
- `DATABASE_URL=postgresql://postgres:<password>@localhost:5432/<db_name>`
- `SSL_REQUIRE=False`