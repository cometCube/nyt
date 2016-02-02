<?php

use Website\Controller\Action;

class DefaultController extends Action {
	
	public function defaultAction () {
		$this->enableLayout();

		//$entries = new Object_PackagePlan_List();

		$packages = new Object\PackagePlan\Listing();
		$packages ->setLimit($perPage);
		$packages ->setCondition("isActive =1");
		$subscription = new Object\Subscription\Listing();
		// foreach ($packages as $entry) {
	 //   		 $entry->getName();
		// }
		$packages->load();
		$subscription->load();
// 		echo "<pre>";
// print_r($packages->objects); die;
		$this->view->packages  = $packages->objects;
		$this->view->subscription  = $subscription->objects;
             
	}

	public function emailAction () {
		
	}

    public function headerAction () {
		
	}
	
	public function footerAction () {
	
	}
}
