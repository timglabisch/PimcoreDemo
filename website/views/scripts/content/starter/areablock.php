<?php
/**
 * AreaBlock
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Areablock+%28since+1.3.2%29
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->areablock('myAreablock', array(
        "allowed" => array("iframe", "googletagcloud", "spacer", "rssreader"),
        "group" => array(
            "First Group" => array("iframe", "spacer"),
            "Second Group" => array("rssreader")
        ),
        "params" => array(
            "iframe" => array( // some additional parameters / configuration for the brick type "iframe"
                "parameter1" => "value1",
                "parameter2" => "value2"
            ),
            "googletagcloud" => array( // additional parameter for the brick type "googletagcloud"
                "param1" => "value1"
            )
        )));

    ?>
</div>