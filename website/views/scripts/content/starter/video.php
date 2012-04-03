<?php
/**
 * Video
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Video
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->video("myVideo", array(
        "width" => 640,
        "height" => 480,
        "config" => array(
            "clip" => array(
                "autoPlay" => false
            )
        )));

    ?>
</div>