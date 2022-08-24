<?php

// application.php

require __DIR__ . '/vendor/autoload.php';

use Symfony\Component\Console\Application;

$application = new Application();
$application->add(new \Wispoz\Console\Commands\TestCommand());
try {
    $application->run();
} catch (Exception $e) {
}