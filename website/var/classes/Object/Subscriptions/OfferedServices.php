<?php 

namespace Pimcore\Model\Object\Subscriptions;

class OfferedServices extends \Pimcore\Model\Object\Objectbrick {



protected $brickGetters = array('ShareDigitalAccessWithFamilyMember','AccessToNYTimesAppsForSmartphone','AccessToNYTimesAppsForTablet','AccessToTheFullTimesArchives','AccesstoNYTimes','PriceThereafter');


public $ShareDigitalAccessWithFamilyMember = null;

/**
* @return \Pimcore\Model\Object\Objectbrick\Data\ShareDigitalAccessWithFamilyMember
*/
public function getShareDigitalAccessWithFamilyMember() { 
   return $this->ShareDigitalAccessWithFamilyMember; 
}

/**
* @param \Pimcore\Model\Object\Objectbrick\Data\ShareDigitalAccessWithFamilyMember $ShareDigitalAccessWithFamilyMember
* @return void
*/
public function setShareDigitalAccessWithFamilyMember ($ShareDigitalAccessWithFamilyMember) {
	$this->ShareDigitalAccessWithFamilyMember = $ShareDigitalAccessWithFamilyMember;
	return $this;;
}

public $AccessToNYTimesAppsForSmartphone = null;

/**
* @return \Pimcore\Model\Object\Objectbrick\Data\AccessToNYTimesAppsForSmartphone
*/
public function getAccessToNYTimesAppsForSmartphone() { 
   return $this->AccessToNYTimesAppsForSmartphone; 
}

/**
* @param \Pimcore\Model\Object\Objectbrick\Data\AccessToNYTimesAppsForSmartphone $AccessToNYTimesAppsForSmartphone
* @return void
*/
public function setAccessToNYTimesAppsForSmartphone ($AccessToNYTimesAppsForSmartphone) {
	$this->AccessToNYTimesAppsForSmartphone = $AccessToNYTimesAppsForSmartphone;
	return $this;;
}

public $AccessToNYTimesAppsForTablet = null;

/**
* @return \Pimcore\Model\Object\Objectbrick\Data\AccessToNYTimesAppsForTablet
*/
public function getAccessToNYTimesAppsForTablet() { 
   return $this->AccessToNYTimesAppsForTablet; 
}

/**
* @param \Pimcore\Model\Object\Objectbrick\Data\AccessToNYTimesAppsForTablet $AccessToNYTimesAppsForTablet
* @return void
*/
public function setAccessToNYTimesAppsForTablet ($AccessToNYTimesAppsForTablet) {
	$this->AccessToNYTimesAppsForTablet = $AccessToNYTimesAppsForTablet;
	return $this;;
}

public $AccessToTheFullTimesArchives = null;

/**
* @return \Pimcore\Model\Object\Objectbrick\Data\AccessToTheFullTimesArchives
*/
public function getAccessToTheFullTimesArchives() { 
   return $this->AccessToTheFullTimesArchives; 
}

/**
* @param \Pimcore\Model\Object\Objectbrick\Data\AccessToTheFullTimesArchives $AccessToTheFullTimesArchives
* @return void
*/
public function setAccessToTheFullTimesArchives ($AccessToTheFullTimesArchives) {
	$this->AccessToTheFullTimesArchives = $AccessToTheFullTimesArchives;
	return $this;;
}

public $AccesstoNYTimes = null;

/**
* @return \Pimcore\Model\Object\Objectbrick\Data\AccesstoNYTimes
*/
public function getAccesstoNYTimes() { 
   return $this->AccesstoNYTimes; 
}

/**
* @param \Pimcore\Model\Object\Objectbrick\Data\AccesstoNYTimes $AccesstoNYTimes
* @return void
*/
public function setAccesstoNYTimes ($AccesstoNYTimes) {
	$this->AccesstoNYTimes = $AccesstoNYTimes;
	return $this;;
}

public $PriceThereafter = null;

/**
* @return \Pimcore\Model\Object\Objectbrick\Data\PriceThereafter
*/
public function getPriceThereafter() { 
   return $this->PriceThereafter; 
}

/**
* @param \Pimcore\Model\Object\Objectbrick\Data\PriceThereafter $PriceThereafter
* @return void
*/
public function setPriceThereafter ($PriceThereafter) {
	$this->PriceThereafter = $PriceThereafter;
	return $this;;
}

}

