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
 * Description of Netid
 *
 * @author James Jones <james@mail.usf.edu>
 */

/**
 * @Entity
 * @Table(name="netids")
 */
class Netid {

    /** 
     * @Id @Column(type="string",length=128,nullable=false) 
     * @GeneratedValue(strategy="NONE")
     */
    private $netid; // varchar(128) NOT NULL DEFAULT '',
    /** @Column(type="integer",nullable=false) */
    private $badge; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="datetime",nullable=false) */
    private $activity; // timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    /** @Column(type="datetime",nullable=false) */
    private $effdate; // timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    /** @Column(type="datetime",nullable=false) */
    private $expire; // timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    /** @Column(type="string",length=1,nullable=false) */
    private $ldap; // char(1) NOT NULL DEFAULT '',
    /** @Column(type="string",length=1,nullable=false) */
    private $usealias; // char(1) NOT NULL DEFAULT 'N',
    /** @Column(type="integer",nullable=false) */
    private $secretq; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string",length=100,nullable=false) */
    private $secreta; // varchar(100) NOT NULL DEFAULT ''

}
