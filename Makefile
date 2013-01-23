
all: db

db: schema fixtures

schema:
	mysql -u example -pexample skim_example < db/schema.sql

fixtures:
	mysql -u example -pexample skim_example < db/fixtures.sql

test:
	bin/behat

lint:
	phpcs --standard=Zend src/ features/
