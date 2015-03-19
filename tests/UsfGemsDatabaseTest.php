<?php

namespace USF\IdM;

use \Codecontrol\PHPUnitHelper\TestCase;
use \Codecontrol\PHPUnitHelper\Utility;

class UsfGemsDatabaseTest extends TestCase {

	public function test_setSourceWithConstructor() {
		$db = new UsfGemsDatabase();
		$source = Utility::getNonPublicPropertyValue($db, "source"); // source variable is private
		$this->assertEquals('gems', $source);
	}
	
	public function test_getVpAreaList() {
		$db = new UsfGemsDatabase();
		$this->assertGreaterThan(100, count($db->getVpAreaList()));
	}
	
	public function test_getDepartmentList() {
		$db = new UsfGemsDatabase();
		$this->assertGreaterThan(700, count($db->getDepartmentList()));
	}
}

?>