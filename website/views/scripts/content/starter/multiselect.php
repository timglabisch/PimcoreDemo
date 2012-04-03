<?php
/**
 * Multiselect
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Multiselect
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->multiselect("multiselect", array(
        "width" => 200,
        "height" => 100,
        "store" => array(
            array("value1", "Text 1"),
            array("value2", "Text 2"),
            array("value3", "Text 3"),
            array("value4", "Text 4"),
        )
    ));

    ?>
</div>