<?php
/**
 * Head Management
 *
 * Created by elements.at New Media Solutions GmbH
 * Nikolaus Flamann
 * File: default.php
 * User: Nflamann
 *
 * @var $this Pimcore_View
 */


$class = "";
if (!$this->portal) {
    $class = "content";
}


?>
<!--<!doctype html>-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--[if IEMobile 7]><html class="no-js iem7 oldie <?=$class;?>"><![endif]-->
<!--[if lt IE 7]><html class="no-js ie6 oldie <?=$class;?>" lang="<?=$this->language;?>"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js ie7 oldie <?=$class;?>" lang="<?=$this->language;?>"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js ie8 oldie <?=$class;?>" lang="<?=$this->language;?>"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js <?=$class;?>" lang="<?=$this->language;?>"><!--<![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)]><!--><html class="no-js <?=$class;?>" lang="<?=$this->language;?>"><!--<![endif]-->

<head lang="<?=$this->language;?>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="content-language" content="<?= $this->language; ?>"/>
    <link rel="icon" href="/static/img/favicon.ico" type="image/x-icon"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name=”robots” content=”noodp”>

    <?php


    $this->headTitle()->setSeparator(" " . $this->translate("head.seperator") . " ");

    $this->headTitle($this->translate("head.title"));

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

    // STYLES

    $this->headLink()->appendStylesheet(
        array(
            'href' => '/static/css/print.css',
            'rel' => 'stylesheet',
            'media' => 'print',
            'type' => 'text/css'
        ));


    $this->headLink()->appendStylesheet(
        array(
            'href' => '/static/css/style.css',
            'rel' => 'stylesheet',
            'media' => 'screen',
            'type' => 'text/css'
        )
    );

    $this->headlink()->appendStylesheet(
        array(
            'href' => '/static/css/styles.less',
            'rel' => 'stylesheet/less',
            'media' => 'screen',
            'type' => 'text/css'
        )
    );

    if ($this->placeholder("lightbox")->getValue() === true) {

        $this->headLink()->appendStylesheet(
            array(
                'href' => '/static/css/colorbox.css',
                'rel' => 'stylesheet',
                'media' => 'screen',
                'type' => 'text/css'
            )
        );


    }

    if ($this->editmode) {

        $this->headLink()->appendStylesheet(
            array(
                'href' => '/static/css/editmode.css',
                'rel' => 'stylesheet',
                'media' => 'screen',
                'type' => 'text/css'
            )
        );
    }

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


    // @todo Haad Helper

    ?>

    <!--[if IE 6]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.2/CFInstall.min.js" type="text/javascript" language="JavaScript"></script>
    <script type="text/javascript" language="JavaScript">
        window.attachEvent("onload", function () {
            CFInstall.check({mode:"overlay"})
        });
    </script>
    <![endif]-->
</head>




