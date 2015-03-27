<?php

namespace USF\IdM;

use \Codecontrol\PHPUnitHelper\TestCase;
use \Codecontrol\PHPUnitHelper\Utility;

class UsfNamsDatabaseTest extends TestCase {



	public function testSetsSourceWithConstructor() {
		$db = new UsfNamsDatabase();
        $this->assertAttributeContains('nams', 'source', $db);
		$source = Utility::getNonPublicPropertyValue($db, "source"); // source variable is private
		$this->assertEquals('nams', $source);
	}
	
	public function testIdentityCount() {
		$db = new UsfVipDatabase('nams');
		$this->assertInternalType('int', $db->identityCount());
	}
}

?>