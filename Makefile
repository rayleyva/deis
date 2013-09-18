all:
	python manage.py runserver

db:
	python manage.py syncdb --noinput
	python manage.py migrate

test:
	python manage.py test api client cm provider web

coverage:
	coverage run manage.py test api client cm provider web
	coverage html

test_client:
	python -m unittest client.tests

flake8:
	flake8
