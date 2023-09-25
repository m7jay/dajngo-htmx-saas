.PHONY:setup
setup:
	pyenv install 3.11
	pyenv virtualenv 3.11.1 django-htmx-saas
	pyenv activate django-htmx-saas

.PHONY:build
build:
	pip install -r requirements.txt

.PHONY:start
start:
	python manage.py runserver