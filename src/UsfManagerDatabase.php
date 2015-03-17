<?php

namespace USF\IdM;

require_once 'UsfDatabaseConnection.php';

class UsfManagerDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('manager');
    }

}

?>
