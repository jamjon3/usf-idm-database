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
 * Description of Identity
 *
 * @author James Jones <james@mail.usf.edu>
 */

/**
 * @Entity
 * @Table(name="identity")
 */
class Identity {

    /**
     * @Id @Column(type="integer",nullable=false,name="vip_id") 
     * @GeneratedValue
     */
    private $vipId; // INTEGER NOT NULL AUTO_INCREMENT,
    /** @Column(type="string",length=128,nullable=false,name="name_last") */
    private $nameLast; // VARCHAR(128) NOT NULL,
    /** @Column(type="string",length=128,nullable=false,name="name_first") */
    private $nameFirst; // VARCHAR(128) NOT NULL,
    /** @Column(type="string",length=128,nullable=false,name="name_middle") */
    private $nameMiddle; // VARCHAR(128) NOT NULL,
    /** @Column(type="datetime",nullable=false) */
    private $dob; // DATE NOT NULL,
    /** @Column(type="blob",nullable=true) */
    private $ssn; // BLOB,
    /** @Column(type="string",length=64,nullable=true) */
    private $email; // VARCHAR(64),
    /** @Column(type="string",length=64,nullable=true) */
    private $phone; // VARCHAR(64),
    /** @Column(type="string",length=16,name="vp_area_gems_id",nullable=true) */
    private $vpAreaGemsId; // VARCHAR(16),
    /** @Column(type="string",length=16,name="department_gems_id",nullable=true) */
    private $departmentGemsId; // VARCHAR(16),
    /** @Column(type="string",length=256,nullable=true) */
    private $program; // VARCHAR(256),
    /** @Column(type="string",length=1024,nullable=true) */
    private $notes; // VARCHAR(1024),
    /** @Column(type="datetime",name="start_date",nullable=true) */
    private $startDate; // DATE NULL,
    /** @Column(type="datetime",name="end_date",nullable=true) */
    private $endDate; // DATE NULL,
    /** @Column(type="string",length=64,name="sponsor_netid",nullable=true) */
    private $sponsorNetid; // VARCHAR(64),
    /** @Column(type="datetime",name="$created_dt",nullable=false) */
    private $createdDt; // TIMESTAMP NOT NULL DEFAULT 0,
    /** @Column(type="datetime",name="$updated_dt",nullable=false) */
    private $updatedDt; // TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

}
