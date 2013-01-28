<?php

if (is_file('config.local.php')) {
    require 'config.local.php';
} else {
    ORM::configure('sqlite:./data.db');
}
