<?php
/**
 * Wysiwyg
 *
 * @var $this Pimcore_View
 * @url http://www.pimcore.org/wiki/display/PIMCORE/WYSIWYG
 */

$this->layout()->setLayout("default");
?>

<div class="contentblock">
    <?php
    /**
     * Simple Text
     */
    echo $this->wysiwyg("simplecontent");


    /**
     * Advanced Use
     */

    $demotoolbar = <<<EOD
var DemoToolbar = [
    ['Cut', 'Copy', 'Paste', 'PasteText',  '-',],
    ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'],
    '/',
    ['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
    ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote'],
    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
    ['Link', 'Unlink', 'Anchor'],
    ['Image', 'Table', 'HorizontalRule', 'SpecialChar', 'PageBreak'],
];
EOD;

    $this->headScript()->appendScript($demotoolbar);


    echo $this->wysiwyg("content", array(
        "width" => 640,
        "height" => 500,
        "toolbar" => "DemoToolbar",
    ));

    ?>
</div>


