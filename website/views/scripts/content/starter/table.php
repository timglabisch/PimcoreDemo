<?php
/**
 * Table
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Table
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php

    echo $this->table("tableName",array(
        "width" => 700,
        "height" => 400,
        "defaults" => array(
            "cols" => 6,
            "rows" => 10,
            "data" => array(
                array("Value 1", "Value 2", "Value 3"),
                array("this", "is", "test")
            )
        )
    ));
    ?>
</div>