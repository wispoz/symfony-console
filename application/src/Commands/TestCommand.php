<?php

namespace Wispoz\Console\Commands;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class TestCommand extends Command
{
    protected static $defaultName = "app:test";

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        echo 'test';
        return Command::SUCCESS;
    }
}