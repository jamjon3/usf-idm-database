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
 * Description of Oasis
 *
 * @author James Jones <james@mail.usf.edu>
 */

/**
 * @Entity
 * @Table(name="oasis")
 */
class Oasis {
    /** 
     * @Id @Column(type="integer",nullable=false) 
     * @GeneratedValue(strategy="NONE")
     */
    private $pidm; // int(11) NOT NULL AUTO_INCREMENT,
    /** @Column(type="integer",nullable=false) */
    private $badge; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string",length=9,nullable=false) */
    private $ssn; // varchar(9) NOT NULL DEFAULT '',
    /** @Column(type="string",length=9,nullable=false,unique=true) */
    private $usfid; // varchar(9) NOT NULL DEFAULT '',
    /** @Column(type="string",length=1,nullable=false) */
    private $registered; // char(1) NOT NULL DEFAULT '',
    /** @Column(type="string",length=4,nullable=false) */
    private $majrcode; // varchar(4) NOT NULL DEFAULT '',
    /** @Column(type="integer",nullable=false) */
    private $deptid; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string",length=2,nullable=false) */
    private $college; // char(2) NOT NULL DEFAULT '',
    /** @Column(type="string",length=1,nullable=false) */
    private $campus; // char(1) NOT NULL DEFAULT '',
    /** @Column(type="string",length=1,nullable=false) */
    private $privacy; // char(1) NOT NULL DEFAULT '',
    /** @Column(type="string",length=2,nullable=false) */
    private $levelcode; // char(2) NOT NULL DEFAULT '',
    /** @Column(type="string",length=2,nullable=false) */
    private $class; // char(2) NOT NULL DEFAULT '',
    /** @Column(type="integer",nullable=false) */
    private $lastterm; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string",length=1,nullable=false) */
    private $dead; // char(1) NOT NULL DEFAULT '',
    /** @Column(type="string",length=12,nullable=false) */
    private $mailpoint; // varchar(12) NOT NULL DEFAULT '',
    /** @Column(type="string",length=10,nullable=false) */
    private $phone; // varchar(10) NOT NULL DEFAULT '',
    /** @Column(type="integer",nullable=false) */
    private $admitterm; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="integer",nullable=false) */
    private $asterm; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="integer",nullable=false) */
    private $instterm; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string",length=48,nullable=false) */
    private $email; // varchar(48) NOT NULL DEFAULT '',
    /** @Column(type="string",length=15,nullable=false) */
    private $nickname; // varchar(15) NOT NULL DEFAULT ''

}
