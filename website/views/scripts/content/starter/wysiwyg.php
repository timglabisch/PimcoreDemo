<?php
/**
 * WYSIWYG
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/WYSIWYG
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->wysiwyg("simplecontent");
    ?>
</div>


