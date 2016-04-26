<?php
/**
 * 
 * IndexAction.class.php (前台首页)
 *

 */
if(!defined("Yourphp")) exit("Access Denied");
class IndexAction extends BaseAction
{
    public function index()
    {
		$this->assign('bcid',0);//顶级栏目 
		$this->assign('ishome','home');
        $this->display();
    }
 
}
?>