<?php

namespace USF\IdM;

require_once 'UsfDatabaseConnection.php';

class UsfNamsDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('nams');
    }

}
?>
