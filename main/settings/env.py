from os import environ
from dotenv import load_dotenv

load_dotenv()

DJANGO_SECRET_KEY = environ.get("DJANGO_SECRET_KEY")
DEBUG = environ.get("DEBUG", False)
