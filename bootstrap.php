<?php

// bootstrap.php
// Include Composer Autoload (relative to project root).
require_once "vendor/autoload.php";

use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;
use USF\IdM\UsfConfig;

// Create a simple "default" Doctrine ORM configuration for Annotations
$isDevMode = true;
$paths = array(__DIR__."/lib");

// Access configuration values from default location (/usr/local/etc/idm_config)
$idm_config = new UsfConfig();
// The DBAL connection configuration
$dbParams = $idm_config->dbalConfig;

$config = Setup::createAnnotationMetadataConfiguration($paths, $isDevMode);
$entityManager = EntityManager::create($dbParams, $config);