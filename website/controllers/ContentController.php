<?php

class ContentController extends Website_Controller_Action
{

    public function init()
    {
        parent::init();

        $this->enableLayout();

    }

    public function portalAction()
    {
        $this->view->portal = true;

    }

    public function defaultAction()
    {

    }

    public function soonAction()
    {
        $this->renderScript("content/helper/soon.php");

    }

}
