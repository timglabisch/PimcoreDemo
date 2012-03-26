<?php
/**
 * Simple WYSIWYG
 */

$this->layout()->setLayout("default");

?>
<h1><?=$this->input("Headline");?></h1>

<div class="leftcol">

    <div class="contentblock">
        <?php

        echo $this->wysiwyg("simplecontent");

        ?>
    </div>
</div>

