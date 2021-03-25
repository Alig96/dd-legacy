<?php

use Symfony\Component\VarDumper\VarDumper;

/**
 * @param mixed $vars,...
 */
function dd($vars)
{
    foreach (func_get_args() as $v) {
        VarDumper::dump($v);
    }

    exit(1);
}