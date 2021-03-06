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
 * */
namespace USF\IdM\Entities;
/**
 * Description of Department
 *
 * @author James Jones <james@mail.usf.edu>
 */

/**
 * @Entity
 * @Table(name="department")
 */
class Department {

    /** 
     * @Id @Column(type="string",length=16,nullable=false,name="department_gems_id") 
     * @GeneratedValue(strategy="NONE")
     */
    private $departmentGemsId; // VARCHAR(16) NOT NULL,
    /** @Column(type="string",length=128,nullable=false,name="department_name") */
    private $departmentName; // VARCHAR(128) NOT NULL,
    /** @Column(type="string",length=16,nullable=true,name="vp_area_gems_id") */
    private $vpAreaGemsId; // VARCHAR(16),

}
