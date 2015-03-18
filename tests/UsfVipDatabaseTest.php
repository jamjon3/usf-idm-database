<?php

namespace USF\IdM;

use \Codecontrol\PHPUnitHelper\TestCase;
use \Codecontrol\PHPUnitHelper\Utility;

class UsfVipDatabaseTest extends TestCase {

	public function testSetsSourceWithConstructor() {
		$db = new UsfVipDatabase('vip');
		$source = Utility::getNonPublicPropertyValue($db, "source"); // source variable is private
		$this->assertEquals('vip', $source);
	}
	
	public function testIdentityCount() {
		$db = new UsfVipDatabase('vip');
		$this->assertInternalType('int', $db->identityCount());
	}
}

?>