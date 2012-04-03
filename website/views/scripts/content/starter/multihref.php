<?php
/**
 * Multihref (since 1.4.2)
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Multihref+%28since+1.4.2%29
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    if ($this->editmode) {
        echo $this->multihref("multihref");
    }
    else {
        ?>
        <!-- you can iterate through the elements using directly the tag -->
        <ul>
            <?php
            foreach ($this->multihref("multihref") as $element) {

                echo "<li>" . Element_Service::getElementType($element) . ": " . $element->getFullPath() . "</li>";

            }
            ?>
        </ul>
        <?php
    }
    ?>
</div>