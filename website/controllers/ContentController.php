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

    /**
     * The Simple Way in our Live :-)
     */
    public function starterAction()
    {

    }

    public function soonAction()
    {
        $this->renderScript("content/helper/soon.php");

    }

}
