<?php

use Website\Controller\Action;

class DefaultController extends Action {

    public function defaultAction() {
        $this->enableLayout();
        //$entries = new Object_PackagePlan_List();
        $packages = new Object\PackagePlan\Listing();
        $perPage = 4;
        $packages->setLimit($perPage);
        $packages->setCondition("isActive =1");
        $packages->load();
        $subscription = new Object\Subscription\Listing();
        $subscription->load();

        $planFeatureList = new Object\PackagePlan\Listing();
        $planFeatureList->load();


        //get all features
        $features = new Object\PlanAttribute\Listing();
        $features->load();


        $this->view->packages = $packages->objects;
        $this->view->subscription = $subscription->objects;
        $this->view->planFeature = $planFeatureList->objects;
        $this->view->features = $features->objects;
    }
    
    public function unknownAction() {
        
    }
    
    public function emailAction() {
        
    }

    public function headerAction() {
        
    }

    public function footerAction() {
        
    }

}
