

reset: schema fixtures

schema:
	sqlite3 data.db < db/sqlite_schema.sql

fixtures:
	sqlite3 data.db < db/fixtures.sql

mysql_reset: mysql_schema mysql_fixtures

mysql_schema:
	mysql -u example -pexample skim_example < db/schema.sql

mysql_fixtures:
	mysql -u example -pexample skim_example < db/fixtures.sql

test:
	bin/behat

lint:
	phpcs --standard=Zend src/ features/
