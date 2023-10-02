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

.PHONY:typehint
typehint:
	mypy --ignore-missing-imports *.py

.PHONY: lint
lint:
	pylint *.py

.PHONY: black
black:
	black -l 79 *.py

.PHONY: clean
clean:
	find . -type f -name "*.pyc" | xargs rm -fr
	find . -type d -name __pycache__ | xargs rm -fr

.PHONY: checklist
checklist:
	make clean lint  typehint black
	pytest
