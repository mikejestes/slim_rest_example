<?php

function json_render($data) {
    $flag = null;
    if (defined('JSON_PRETTY_PRINT')) {
        $flag = JSON_PRETTY_PRINT;
    }

    $app = \Slim\Slim::getInstance();
    $app->response()->header('Content-Type', 'application/json');
    echo json_encode($data, $flag);
}

function paris_to_array($item) {
    return $item->as_array();
}
