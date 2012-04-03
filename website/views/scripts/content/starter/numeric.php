<?php
/**
 * Numeric
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Numeric
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    // Basic usage

    echo $this->numeric("myNumber1");

    // Advanced usage

    echo $this->numeric("myNumber2", array(
        "width" => 300,
        "minValue" => 0,
        "maxValue" => 100,
        "decimalPrecision" => 0
    ));
    ?>
</div>