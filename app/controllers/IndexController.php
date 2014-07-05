<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function autocompleteAction()
    {

    }

    public function formtargetAction()
    {
        if( $this->request->isPost() == true) {
        	$tags = $this->request->getPost('tag');
        	$this->view->setVar('tags', $tags);
        }
    }
}

