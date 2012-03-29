<?php

class Website_Controller_Action extends Pimcore_Controller_Action_Frontend
{

    public $language;

    public function init()
    {

        parent::init();

        $this->view->doctype('XHTML1_STRICT');


        if (!Zend_Registry::isRegistered("Zend_Translate")) {

            if ($this->document instanceof Document) {
                $language = $this->_getParam("language", $this->document->getProperty("language"));
            }
            else {
                $language = $this->_getParam("language", "en_GB");
            }
            $locale = new Zend_Locale($language);
            Zend_Registry::set("Zend_Locale", $locale);
            $this->initTranslation();
        }

        if (!Zend_Registry::isRegistered("Zend_Currency")) {
            $currency = new Zend_Currency("de_AT");
            Zend_Registry::set("Zend_Currency", $currency);
        }
        else {
            $locale = Zend_Registry::get("Zend_Locale");
        }

        if (!Zend_Registry::isRegistered("Zend_Currency")) {
            $currency = new Zend_Currency("de_AT");
            Zend_Registry::set("Zend_Currency", $currency);
        }

        $this->view->language = $locale->getLanguage();
        $this->language = $locale->getLanguage();


        if (($this->document instanceof Document_Page) and ($this->document->getProperty("codeview") == "true") ) {

            $this->view->placeholder("codeview")->set(true);

        }

    }
}
