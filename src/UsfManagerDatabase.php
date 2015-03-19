<?php

namespace USF\IdM;

class UsfManagerDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('manager');
    }

}

?>
