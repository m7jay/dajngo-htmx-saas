from os import environ
from dotenv import load_dotenv

load_dotenv()

DJANGO_SECRET_KEY = environ.get("DJANGO_SECRET_KEY")
DEBUG = environ.get("DEBUG", False)

DB_HOST = environ.get("DB_HOST")
DB_PORT = environ.get("DB_PORT")
DB_NAME = environ.get("DB_NAME")
DB_USER = environ.get("DB_USER")
DB_PASSWORD = environ.get("DB_PASSWORD")
