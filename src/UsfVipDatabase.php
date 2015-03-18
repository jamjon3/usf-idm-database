<?php

namespace USF\IdM;

class UsfVipDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('vip');
    }

	public function identityCount() {
		$qstr = "select * from identity";
		$data_r = $this->dbc->query($qstr)->fetchAll();
		return count($data_r);
	}
}
?>
