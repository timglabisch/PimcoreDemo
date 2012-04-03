<?php


class ToolsController extends Website_Controller_Action
{
    public function codeviewAction() {
      $this->view->codeview = $this->_getParam("codeview");
    }
}
