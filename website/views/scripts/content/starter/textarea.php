<?php
/**
 * Textarea
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Textarea
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php

    echo $this->textarea("myTextarea",
        array(
            "width" => 640,
            "height" => 400,
            "nl2br" => true
        ));
    ?>
</div>