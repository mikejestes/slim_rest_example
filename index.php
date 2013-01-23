<?php

require 'vendor/autoload.php';
require_once 'helpers.php';

ORM::configure('sqlite:./data.db');

$app = new \Slim\Slim();

$app->add(new \Example_Middleware_FourOhFour());

$app->get('/', function() {
    echo "hello world";
});

$app->get('/api/stores', function() {
    $stores = new Example_Store();
    json_render($stores->listAll());
});

$app->get('/api/stores/:id', function($id) {
    $stores = new Example_Store();
    json_render($stores->getOne($id));
});

$app->run();
