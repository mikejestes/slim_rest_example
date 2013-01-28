

reset: schema fixtures

schema:
	rm data.db
	bin/migrate

fixtures:
	sqlite3 data.db < db/fixtures.sql

mysql_fixtures:
	mysql -u example -pexample skim_example < db/fixtures.sql

test:
	bin/behat

lint:
	phpcs --standard=Zend src/ features/
