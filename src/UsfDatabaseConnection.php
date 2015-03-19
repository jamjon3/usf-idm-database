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
**/

/**
 * UsfDatabaseConnection creates a Medoo database connection using
 * the parameters stored in the UsfConfig based on the database
 * source key name. Classes that extend this class will have
 * the database connection available when the parent constructor
 * is called.
 *
 * @author James Jones <james@mail.usf.edu>
 * 
 */

namespace USF\IdM;

use USF\IdM\UsfConfig;

class UsfDatabaseConnection {
    
    // Meedo database connection
    protected $db;
    // Database source key name in the config
    protected $source;
    
    /**
     * Constructs a database connection using Meedo and the config
     * based on the database source key name
     * 
     * @param type $source Database source key name
     */
    function __construct($source) {
        //Access configuration values from default location (/usr/local/etc/idm_config)
        $config = new UsfConfig();
        $this->source = $source;
        $this->db = new \medoo($config->databaseConfig[$source]); // medoo does not use namespaces
    }

}
