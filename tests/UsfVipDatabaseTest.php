<?php

namespace USF\IdM;

use \Codecontrol\PHPUnitHelper\TestCase;
use \Codecontrol\PHPUnitHelper\Utility;

class UsfVipDatabaseTest extends TestCase {

	public function test_setSourceWithConstructor() {
		$db = new UsfVipDatabase();
		$source = Utility::getNonPublicPropertyValue($db, "source"); // source variable is private
		$this->assertEquals('vip', $source);
	}
	
	public function test_identityCount() {
		$db = new UsfVipDatabase();
		$this->assertInternalType('int', $db->identityCount());
	}
}

?>