<?php

require_once __DIR__ . '/vendor/autoload.php';

use Brick\Math\BigInteger;

echo BigInteger::of(PHP_INT_MAX)->multipliedBy(BigInteger::of(PHP_INT_MAX)), "\n" ;
