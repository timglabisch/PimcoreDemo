<?php
/**
 * Date
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Date
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php

    echo $this->date("myDate", array(
        "format" => "d.m.Y"
    ));

    ?>
</div>