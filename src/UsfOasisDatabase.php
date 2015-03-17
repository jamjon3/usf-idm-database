<?php

namespace USF\IdM;

require_once 'UsfDatabaseConnection.php';

class UsfOasisDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('oasis');
    }

}
?>
