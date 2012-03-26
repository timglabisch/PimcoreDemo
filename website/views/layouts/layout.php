<?
/**
 * Main Layout
 *
 * Created by elements.at New Media Solutions GmbH
 * Nikolaus Flamann
 * File: default.php
 * User: Nflamann
 *
 * @var $this Pimcore_View
 *
 */

$this->template("includes/head.php");


$class = "content";

if ($this->portal) {
    $class = "";
}
?>

<body class="clearfix <?=$class;?>">

?>
<div id="content">
    <div class="limiter">
        <?php
        echo $this->layout()->content;

        if (!$this->portal) {
            $this->template("includes/rightcol.php");
        }


        ?>
    </div>
    <?php


    $this->template("includes/footer.php");

    ?>
</div>
<?php

$this->template("includes/header.php");

if ($this->portal) {
    $this->template("content/includes/slider.php");
}
$this->template("includes/loader.php");

?>
</body>
<?php
echo "</html>";
