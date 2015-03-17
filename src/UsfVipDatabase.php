<?php

namespace USF\IdM;

require_once 'UsfDatabaseConnection.php';

class UsfVipDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('vip');
    }

	public function identityCount() {
		return 5;
	}
}
?>
