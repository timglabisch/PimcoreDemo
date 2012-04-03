<?php
/**
 * Href (1 to 1 Relation)
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/Href+%281+to+1+Relation%29
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    echo $this->href("myHref");

    echo "<hr>Usage with restriction<hr>";
    echo $this->href("myHref2", array(
        "types" => array("asset"),
        "subtypes" => array(
            "asset" => array("video", "image")
        )
    ));

    echo "<hr>Advanced usage with getElement()<hr>";
    if ($this->editmode) {
        echo $this->href("myHref3");
    }
    else {
        $myHref = $this->href("myHref3")->getElement();
        echo $myHref->getName();
    }

    echo "<hr>Advanced usage (the video example)</hr>";
    if ($this->editmode) {
        echo $this->href("myHref4");
    }
    else {
        if ($this->href("myHref4") instanceof Asset_Video) {
            ?>
            <script type="text/javascript">
                var params = {
                    quality:'high'
                };
                var flashvars = {
                    videoFile:"<?= $this->href("myHref4")->getFullPath() ?>"
                };
                swfobject.embedSWF("/static/swf/player.swf", "videoPlayerElement", "400", "300", "9.0.0", "", flashvars, params);
            </script>
            <?php
        }
    }
    ?>
</div>