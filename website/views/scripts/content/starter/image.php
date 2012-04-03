<?php
/**
 * Image
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Image
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->image("simpleimage", array(
        "title" => "Drag your Simple image here",
        "width" => 640,
        "height" => 480,
        "thumbnail" => array(
            "width" => 640,
            "height" => 480,
            "interlace" => true,
            "quality" => 90
        )
    ));

    ?>
</div>