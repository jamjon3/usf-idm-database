<?php

namespace USF\IdM;

require_once 'UsfDatabaseConnection.php';

class UsfGemsDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('gems');
    }

}
?>
