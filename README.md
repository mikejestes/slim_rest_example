
## Installation
    curl -s https://getcomposer.org/installer | php
    php composer.phar install --dev
Use `make schema` to setup the sqlite DB, or `make reset` to load some fixtures.
## Highlights

Custom composer autoloading (models and library code)
Behat BDD testing

## BDD Tests
Run `bin/behat` to execute stories in `features/`.  Configure your test domain in `behat.yml`
    