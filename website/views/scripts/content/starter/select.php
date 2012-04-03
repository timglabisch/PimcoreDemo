<?php
/**
 * Select
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Select
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->select("mySelect", array(
        "store" => array(
            array("option1", "Option One"),
            array("option2", "Option Two"),
            array("option3", "Option Three")
        )
    ));

    ?>
</div>