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
 * Description of Name
 *
 * @author James Jones <james@mail.usf.edu>
 */

/**
 * @Entity
 * @Table(name="names")
 */
class Name {

    /** 
     * @Id @Column(type="integer",nullable="false") 
     * @GeneratedValue
     */
    private $badge; // int(11) NOT NULL AUTO_INCREMENT,
    /** @Column(type="integer",nullable="false") */
    private $ssn; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string",length=8,nullable="false") */
    private $login; // varchar(8) NOT NULL DEFAULT '',
    /** @Column(type="string", length=2,nullable="false") */
    private $role; // char(2) NOT NULL DEFAULT '',
    /** @Column(type="string", length=100,nullable="false") */
    private $lname; // varchar(100) NOT NULL DEFAULT '',
    /** @Column(type="string", length=100,nullable="false") */
    private $fname; // varchar(100) NOT NULL DEFAULT '',
    /** @Column(type="string", length=100,nullable="false") */
    private $mname; // varchar(100) NOT NULL DEFAULT '',
    /** @Column(type="string", length=4,nullable="false") */
    private $gen; // varchar(4) NOT NULL DEFAULT '',
    /** @Column(type="string", length=8,nullable="false") */
    private $site; // varchar(8) NOT NULL DEFAULT '',
    /** @Column(type="string", length=128,nullable="false") */
    private $maildrop; // varchar(128) NOT NULL DEFAULT '',
    /** @Column(type="integer",nullable="false") */
    private $hostid; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string", length=1,nullable="false") */
    private $ldap; // char(1) NOT NULL DEFAULT 'D',
    /** @Column(type="integer",nullable="false") */
    private $privacy; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="integer",nullable="false") */
    private $bday; // int(11) NOT NULL DEFAULT '0',
    /** @Column(type="string", length=1,nullable="false") */
    private $authority; // char(1) NOT NULL DEFAULT '',
    /** @Column(type="string", length=1,nullable="false") */
    private $hasbb; // char(1) NOT NULL DEFAULT '',

}
