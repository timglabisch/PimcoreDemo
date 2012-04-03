<?php
/**
 * Checkbox
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Checkbox
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->checkbox("myCheckbox");

    if ($this->checkbox("myCheckbox")->isChecked()) {
        echo "I am checked";
    }


    ?>
</div>