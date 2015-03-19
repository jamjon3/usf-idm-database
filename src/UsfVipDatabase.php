<?php

namespace USF\IdM;

class UsfVipDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('vip');
    }

	public function identityCount() {
		$query = "select * from identity";
		$data_r = $this->db->query($query)->fetchAll();
		return count($data_r);
	}
}
?>
