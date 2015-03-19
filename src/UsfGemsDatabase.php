<?php

namespace USF\IdM;

class UsfGemsDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('gems');
    }

	public function getVpAreaList() {
		$query = "select distinct x.fieldvalue as u_vp_area, x.XLATLONGNAME as u_vp_area_name, x.EFFDT as effdt
			from XLATTABLE_VW x
			where x.EFFDT = (select x2.effdt from xlattable_vw x2 where x2.fieldname = x.fieldname and x2.FIELDVALUE = x.FIELDVALUE)
			and x.EFF_STATUS = 'A'
			and x.FIELDNAME = 'U_VP_AREA'";
		$data_r = $this->db->query($query)->fetchAll();
		return $data_r;
	}

	public function getDapartmentList() {
		$query = "select distinct d.deptid, d.descr, d.U_VP_AREA, d.EFFDT
			from ps_dept_tbl d
			where d.effdt = (select max(d2.effdt) from ps_dept_tbl d2 where d2.setid = d.setid and d2.deptid = d.deptid and d2.effdt <= sysdate)
			and d.eff_status = 'A'
			and d.setid = 'USFSI'";
		$data_r = $this->db->query($query)->fetchAll();
		return $data_r;
	}
}
?>
