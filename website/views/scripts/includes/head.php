<?php
/**
 * Head Management
 *
 * @info ~~nocodeview
 *
 * @var $this Pimcore_View
 */


$class = "";
if (!$this->portal) {
    $class = "content";
}

$language = Zend_Registry::get("Zend_Locale")->getLanguage();


echo <<<EOD
<!--<!doctype html>-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if IEMobile 7]><html class="no-js iem7 oldie $class"><![endif]-->
<!--[if lt IE 7]><html class="no-js ie6 oldie $class" lang="$language"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js ie7 oldie $class" lang="$language"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js ie8 oldie $class" lang="$language"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js $class" lang="$language"><!--<![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)]><!--><html class="no-js $class" lang="$language"><!--<![endif]-->
<head lang="$language">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="content-language" content="$language"/>
    <link rel="icon" href="/static/img/favicon.ico" type="image/x-icon"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name=”robots” content=”noodp”>
    <link href='http://fonts.googleapis.com/css?family=Spicy+Rice' rel='stylesheet' type='text/css'>
EOD;


$this->headTitle()->setSeparator(" " . $this->translate("|") . " ");

$this->headTitle($this->translate("Pimcore Demo Project"));

echo $this->headTitle();

if (!$this->editmode and $this->document instanceof Document) {

    if (strlen($this->document->getDescription()) > 0) {
        $this->headMeta()->appendHttpEquiv('description', $this->document->getDescription());
    }
    else if ($this->placeholder("metaset")->getValue() === true) {
        // Content is set
    }
    else {
        $this->headMeta()->appendHttpEquiv('description', $this->translate("head.description"));
    }

    if (strlen($this->document->getKeywords()) > 0) {
        $this->headMeta()->appendHttpEquiv('keywords', $this->document->getKeywords());
    }

    echo $this->headMeta();
}

/**
 * Load My CSS Files
 */

//die (get_class($this));
$this->headLink()->appendStylesheet(
    array(
        'href' => '/static/css/styles.less',
        'rel' => 'stylesheet/less',
        'media' => 'screen',
        'type' => 'text/less'
    )
);
$this->headLink()->appendStylesheet(
    array(
        'href' => '/static/css/style.css',
        'rel' => 'stylesheet',
        'media' => 'screen',
        'type' => 'text/css'
    )
);

if ($this->placeholder("colorbox")->getValue() === true) {

    $this->headLink()->appendStylesheet(
        array(
            'href' => '/static/css/colorbox.css',
            'rel' => 'stylesheet',
            'media' => 'screen',
            'type' => 'text/css'
        )
    );
}
if ($this->document instanceof Document_Page and $this->document->getProperty("codeview")) {
    $pluginpath = "/static/plugins/syntaxhighlighter_3.0.83";

    $this->headLink()->appendStylesheet(
        array(
            'href' => '/static/css/colorbox.css',
            'href' => $pluginpath . '/styles/shCoreDefault.css',
            'rel' => 'stylesheet',
            'media' => 'screen',
            'type' => 'text/css'
        ));

    $this->headScript()->appendFile(
        $pluginpath . '/scripts/shCore.js',
        'text/javascript'
    );
    $this->headScript()->appendFile(
        $pluginpath . '/scripts/shBrushPhp.js',
        'text/javascript'
    );
    $this->headScript()->appendScript(
        "SyntaxHighlighter.all()"
    );

}


if ($this->editmode) {

    $this->headLink()->appendStylesheet(
        array(
            'href' => '/static/css/editmode.css',
            'rel' => 'stylesheet',
            'media' => 'all',
            'type' => 'text/css'
        )
    );
}

$this->headLink()->appendStylesheet(
    array(
        'href' => '/static/css/print.css',
        'rel' => 'stylesheet',
        'media' => 'print',
        'type' => 'text/css'
    ));

$this->headLink()->appendStylesheet('/static/css/ie.css', 'screen', 'lt IE 9');


echo $this->headStyle();
echo $this->headLink();


if (!Pimcore_Google_Analytics::isConfigured()) {
    ?>
<script type="text/javascript" language="JavaScript">
    /*<![CDATA[*/
    var _gaq = _gaq || [];
    /*]]>*/
</script>
<?php
}

// @todo use head Helper

echo <<<EOD
<!--[if IE 6]>
<script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.2/CFInstall.min.js" type="text/javascript" language="JavaScript"></script>
<script type="text/javascript" language="JavaScript">
    window.attachEvent("onload", function () {
        CFInstall.check({mode:"overlay"})
    });
</script>
<![endif]-->
</head>
EOD;
