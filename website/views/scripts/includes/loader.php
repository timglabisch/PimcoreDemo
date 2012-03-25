<?php

/**
 * My Great JavaScript
 */


$this->headScript()->prependFile(
    '/static/js/lib/jquery-1.7.1.min.js',
    'text/javascript'
);

$this->headScript()->prependFile(
    '/static/js/lib/less-1.3.0.min.js',
    'text/javascript'
);


if ($this->placeholder("lightbox")->getValue() === true) {
    $this->headScript()->appendFile(
        '/static/js/colorbox/jquery.colorbox-min.js',
        'text/javascript'
    );
}
/*

if ($this->placeholder("easing")->getValue() === true) {
    $this->headScript()->appendFile(
        '/static/js/jquery.easing.js',
        'text/javascript'
    );
}

if ($this->placeholder("isotope")->getValue() === true) {
    $this->headScript()->appendFile(
        '/static/js/jquery.isotope.min.js',
        'text/javascript'
    );
}

if ($this->placeholder("datepicker")->getValue() === true) {
    $this->headScript()->appendFile(
        '/static/js/datepicker.js',
        'text/javascript'
    );
}

if ($this->placeholder("timeout")->getValue() === true) {
    $this->headScript()->appendFile(
        '/static/js/jquery.dotimeout.js',
        'text/javascript'
    );
}

if ($this->placeholder("elslider")->getValue() === true) {
    $this->headScript()->appendFile(
        '/static/js/jquery.elslider.js',
        'text/javascript'
    );
}
*/

/*$this->headScript()->appendFile(
        '/static/js/css3-mediaqueries.js',
        'text/javascript'
    );*/

if (!$this->editmode) {
    $this->headScript()->appendFile(
        '/static/js/script.js',
        'text/javascript'
    );
}

echo $this->headScript();


?>
