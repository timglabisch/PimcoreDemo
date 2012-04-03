<?php
/**
 * Snippet
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Snippet+%28embed%29
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->snippet("mySnippet", array(
        "width" => 250,
        "height" => 100
    ));

    ?>
</div>