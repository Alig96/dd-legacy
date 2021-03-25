<?php

include_once(__DIR__ . '/../vendor/autoload.php');

dd(array(), 'hello', array('array', array('of', array('arrays'))), array('index' => 'key'));

echo 'this is not executed';