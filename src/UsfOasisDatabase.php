<?php

namespace USF\IdM;

class UsfOasisDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('oasis');
    }

}
?>
