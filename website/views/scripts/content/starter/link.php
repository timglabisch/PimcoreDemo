<?php
/**
 * Link
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Link
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php

    echo $this->link("myLink");
    ?>
</div>