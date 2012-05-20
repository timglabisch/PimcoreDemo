<?php

class Website_Controller_Action extends Pimcore_Controller_Action_Frontend
{

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

            $currency = new Zend_Currency($locale);
            Zend_Registry::set("Zend_Currency", $currency);

        }


        /**
         * Show me the Source Code or let it be
         */
        if (($this->document instanceof Document_Page) and ($this->document->getProperty("codeview") == "true") ) {

            $this->view->placeholder("codeview")->set(true);
        }
    }
}
