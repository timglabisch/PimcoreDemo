<?php
/*
 * Starter Base
 * @var $this Pimcore_View
 * @var $document Document_Page
 * @var $element Document_Page
 */

$document = $this->document;

$this->template("content/starter/block.php");


?>
<div class="contentblock documents">
    <h2><?=$this->input("documentheadline");?></h2>

    <ul>
        <?php
        foreach ($document->getChilds() as $element) {

            switch (get_class($element)) {
                case "Document_Page":
                default:
                    ?>
                        <li><a href="<?=$element->getFullPath();?>"><?=$element->getName();?></a></li>
                        <?php
                    break;
            }

        }
        ?>
    </ul>

</div>



