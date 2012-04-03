<?php
/**
 * Block
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Area+%28since+1.4.3%29
 */

$this->layout()->setLayout("default");

while ($this->block("contentblock")->loop()) {
    if ($this->editmode) {
        ?>
    <div class="contentblock">
        <?php

        echo $this->select("blocktype", array(
            "store" => array(
                array("area", "Area (since 1.4.3)"),
                array("areablock", "Areablock (since 1.3.2)"),
                array("checkbox", "Checkbox"),
                array("date", "Date"),
                array("href", "Href (1 to 1 Relation)"),
                array("image", "Image"),
                array("link", "Link"),
                array("multihref", "Multihref (since 1.4.2)"),
                array("multiselect", "Multiselect"),
                array("numeric", "Numeric"),
                array("renderlet", "Renderlet"),
                array("select", "Select"),
                array("snippet", "Snippet"),
                array("table", "Table"),
                array("textarea", "Textarea"),
                array("video", "Video"),
                array("wysiwyg", "WYSIWYG"),

            ),
            "reload" => true
        ));
        ?>
    </div>
    <?php
    }
    if (!$this->select("blocktype")->isEmpty()) {
        $this->template("content/starter/" . $this->select("blocktype")->getData() . ".php");
    }
}

