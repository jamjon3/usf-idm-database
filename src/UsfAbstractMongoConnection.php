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

use USF\IdM\UsfConfig;
use MongoClient;

/**
 * UsfAbstractMongoConnection is an abstract class that makes
 * a Mongo connection available
 *
 * @author James Jones <james@mail.usf.edu>
 */

abstract class UsfAbstractMongoConnection {
    /**
     * The connection that will be used.
     *
     * @var MongoDB
     */
    private $mongodb = null;
    /**
     * @return MongoDB
     */
    public function getMongoConnection() {
        if(!isset($this->mongodb)) {
            $this->mongodb = $this->createMongoConnection();
        }

        return $this->mongodb;
    }

    /**
     * @return MongoDB
     */
    public function createMongoConnection() {
        //Access configuration values from default location (/usr/local/etc/idm_config)
        $config = new UsfConfig();

        // The DBAL connection configuration
        $mongoConfig = $config->mongoConfig;
        
        if(empty($mongoConfig)) {
            return new MongoClient();
        } elseif (empty($mongoConfig->options)) {
            return new MongoClient($mongoConfig->server);
        } else {
            return new MongoClient($mongoConfig->server,$mongoConfig->options);
        }
    }
    
}
