<?php

/**
 * Copyright 2015 University of South Florida
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

namespace USF\IdM;

use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Tools\Setup;
use USF\IdM\UsfConfig;

/**
 * UsfAbstractResource is an abstract class that makes
 * an EntityManager available
 *
 * @author James Jones <james@mail.usf.edu>
 */
abstract class UsfAbstractResource {

    /**
     * @var \Doctrine\ORM\EntityManager
     */
    private $entityManager = null;

    /**
     * @return \Doctrine\ORM\EntityManager
     */
    public function getEntityManager() {
        if ($this->entityManager === null) {
            $this->entityManager = $this->createEntityManager();
        }

        return $this->entityManager;
    }

    /**
     * @return EntityManager
     */
    public function createEntityManager() {
        //Access configuration values from default location (/usr/local/etc/idm_config)
        $config = new UsfConfig();
        // Create a simple "default" Doctrine ORM configuration for Annotations
        $isDevMode = true;
        $paths = array(__DIR__ . "/lib");

        // The DBAL connection configuration
        $dbParams = $config->dbalConfig;

        $emconfig = Setup::createAnnotationMetadataConfiguration($paths, $isDevMode);
        return EntityManager::create($dbParams, $emconfig);        
    }
    /**
     * Returns an array of registered entity class names
     * 
     * @return Array of entities
     */
    public function getMetadataEntityClassNames() {
        $classes = array();
        $metas = $this->getEntityManager()->getMetadataFactory()->getAllMetadata();
        foreach ($metas as $meta) {
            $classes[] = $meta->getName();
        }
        return $classes;
    }
}
