<?php


class NavigationController extends Website_Controller_Action
{

    public $startNode;
    public $isRoot;

    public function init()
    {
        parent::init();
    }

    public function menuAction()
    {
        if ($this->_getParam("startNode") instanceof Document_Page) {
            $startNode = $this->_getParam("startNode");

            if ($this->_getParam("firstroot")) {
                $this->view->isRoot = true;
            }
            else {
                $this->view->isRoot = false;
            }
        }
        else {

            switch (Zend_Registry::get("Zend_Locale")->getLanguage()) {
                case "de":
                    $startNode = Document::getByPath("/de");
                    break;
                default:
                    $startNode = Document::getByPath("/");
                    break;
            }


            $this->view->isRoot = true;
        }
        $this->view->onlyactive = $this->_getParam("onlyactive", false);
        $this->view->startNode = $startNode;
        $this->disableViewAutoRender();
        $this->renderScript("navigation/menu.php");


    }
}
