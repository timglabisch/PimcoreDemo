<?php
/**
 * Show the Document Information
 * @info nocodeview
 * @var $this Pimcore_View
 * @var $codeview Document_Page
 *
 */

$codeview = $this->codeview;

if ($codeview instanceof Document_Page) {
    ?>
<div class="contentblock codeview">
    <h2><?=$this->translate("CodeView Document Information");?></h2>

    <ul>
        <li>Path: <?=$codeview->getFullPath();?></li>
        <li>Controller: <?=$codeview->getController();?></li>
        <li>Action: <?=$codeview->getAction();?></li>
        <?php
        if (strlen($codeview->getTemplate()) > 0) {
            ?>
            <li>User Template: <?=$codeview->getTemplate();?></li>
            <?php
        }
        ?>
    </ul>

    <?php

    ?>
</div>
<?php
}
if (strlen($codeview->getTemplate()) > 0) {
    ?>
<div class="contentblock codeview">
    <h2><?=$this->translate("User Template");?></h2>
    <pre
        class="brush: php;"><?=htmlentities(file_get_contents(PIMCORE_WEBSITE_PATH . "/views/scripts" . $codeview->getTemplate()),ENT_NOQUOTES,"UTF-8");?></pre>
</div>
<?php
}
else {
    ?>
<div class="contentblock codeview">
    <h2><?=$this->translate("Websites Files");?></h2>
    <?php

    $files = get_included_files();

    $usefiles = array();

    foreach ($files as $file) {

        if (preg_match("@" . PIMCORE_WEBSITE_PATH . "@i", $file)) {
            $usefiles[] = $file;
        }
    }

    foreach ($usefiles as $file) {
        $content = file_get_contents($file);

        if (!preg_match("/@info nocodeview/i", $content)) {
            ?>
            <div class="filename"><?=str_replace(PIMCORE_WEBSITE_PATH, "", $file);?>    </div>
            <pre class="brush: php; collapse: true"><?=htmlentities($content,ENT_NOQUOTES,"UTF-8");?></pre>
            <?php
        }
    }
    ?>
</div>
<?php
}

