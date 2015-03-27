<?php

namespace USF\IdM;

class UsfNamsDatabase extends UsfDatabaseConnection {
    function __construct() {
        parent::__construct('nams');
    }

    public function namesCount() {
        $qstr = "select * from names";
        $data_r = $this->dbc->query($qstr)->fetchAll();
        return count($data_r);
    }

    /**
     * Get eduPersonPrimaryAffiliation
     *
     * @param $badge
     * @return string
     */
    public function getEppa($badge) {
        $role = $this->dbc->pdo->prepare('SELECT DISTINCT eppa
                FROM nams.roles
                WHERE code =
                (
                        SELECT role
                                FROM nams.names
                                WHERE badge=:badge
                )
                AND LENGTH(eppa) > 0
                ORDER BY priority DESC');

        $role->bindParam(':badge', $badge, PDO::PARAM_INT);

        $role->execute();

        return $role;

    }

}
?>
