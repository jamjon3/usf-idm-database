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
namespace USF\IdM\Entities;

/**
 * Description of VpArea
 *
 * @author James Jones <james@mail.usf.edu>
 */

/**
 * @Entity
 * @Table(name="vp_area")
 */
class VpArea {

    /** 
     * @Id @Column(type="string",length=16,nullable="false",name="vp_area_gems_id") 
     * @GeneratedValue(strategy="NONE")
     */
    private $vpAreaGemsId; // VARCHAR(16) NOT NULL,
    /** @Column(type="string",length=128,nullable="false",name="vp_area_name") */
    private $vpAreaName; // VARCHAR(128) NOT NULL,

}
