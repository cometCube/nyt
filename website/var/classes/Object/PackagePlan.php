<?php 

/** Generated at 2016-02-02T12:38:14+01:00 */

/**
* Package Plan
* Inheritance: yes
* Variants   : no
* Changed by : admin (2)
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object;



/**
* @method static \Pimcore\Model\Object\PackagePlan getByPriceThereAfter ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByAccessTNYTimes ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByAccessToNYTimesAppsPhone ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByAccessToNYTimesAppsTab ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByAccessToTheFullTimesArchives ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByShareDigitalAccess ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByIsActive ($value, $limit = 0) 
*/

class PackagePlan extends Concrete {

public $o_classId = 7;
public $o_className = "PackagePlan";
public $priceThereAfter;
public $accessTNYTimes;
public $accessToNYTimesAppsPhone;
public $accessToNYTimesAppsTab;
public $accessToTheFullTimesArchives;
public $shareDigitalAccess;
public $isActive;


/**
* @param array $values
* @return \Pimcore\Model\Object\PackagePlan
*/
public static function create($values = array()) {
	$object = new static();
	$object->setValues($values);
	return $object;
}

/**
* Get priceThereAfter - Price There After
* @return string
*/
public function getPriceThereAfter () {
	$preValue = $this->preGetValue("priceThereAfter"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->priceThereAfter;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("priceThereAfter")->isEmpty($data)) {
		return $this->getValueFromParent("priceThereAfter");
	}
	return $data;
}

/**
* Set priceThereAfter - Price There After
* @param string $priceThereAfter
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setPriceThereAfter ($priceThereAfter) {
	$this->priceThereAfter = $priceThereAfter;
	return $this;
}

/**
* Get accessTNYTimes - Access to NYTimes
* @return boolean
*/
public function getAccessTNYTimes () {
	$preValue = $this->preGetValue("accessTNYTimes"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->accessTNYTimes;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("accessTNYTimes")->isEmpty($data)) {
		return $this->getValueFromParent("accessTNYTimes");
	}
	return $data;
}

/**
* Set accessTNYTimes - Access to NYTimes
* @param boolean $accessTNYTimes
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setAccessTNYTimes ($accessTNYTimes) {
	$this->accessTNYTimes = $accessTNYTimes;
	return $this;
}

/**
* Get accessToNYTimesAppsPhone - Access to NYTimes apps Phone
* @return boolean
*/
public function getAccessToNYTimesAppsPhone () {
	$preValue = $this->preGetValue("accessToNYTimesAppsPhone"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->accessToNYTimesAppsPhone;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("accessToNYTimesAppsPhone")->isEmpty($data)) {
		return $this->getValueFromParent("accessToNYTimesAppsPhone");
	}
	return $data;
}

/**
* Set accessToNYTimesAppsPhone - Access to NYTimes apps Phone
* @param boolean $accessToNYTimesAppsPhone
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setAccessToNYTimesAppsPhone ($accessToNYTimesAppsPhone) {
	$this->accessToNYTimesAppsPhone = $accessToNYTimesAppsPhone;
	return $this;
}

/**
* Get accessToNYTimesAppsTab - Access to NYTimes apps Tab
* @return boolean
*/
public function getAccessToNYTimesAppsTab () {
	$preValue = $this->preGetValue("accessToNYTimesAppsTab"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->accessToNYTimesAppsTab;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("accessToNYTimesAppsTab")->isEmpty($data)) {
		return $this->getValueFromParent("accessToNYTimesAppsTab");
	}
	return $data;
}

/**
* Set accessToNYTimesAppsTab - Access to NYTimes apps Tab
* @param boolean $accessToNYTimesAppsTab
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setAccessToNYTimesAppsTab ($accessToNYTimesAppsTab) {
	$this->accessToNYTimesAppsTab = $accessToNYTimesAppsTab;
	return $this;
}

/**
* Get accessToTheFullTimesArchives - Access to the full Times Archives
* @return boolean
*/
public function getAccessToTheFullTimesArchives () {
	$preValue = $this->preGetValue("accessToTheFullTimesArchives"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->accessToTheFullTimesArchives;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("accessToTheFullTimesArchives")->isEmpty($data)) {
		return $this->getValueFromParent("accessToTheFullTimesArchives");
	}
	return $data;
}

/**
* Set accessToTheFullTimesArchives - Access to the full Times Archives
* @param boolean $accessToTheFullTimesArchives
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setAccessToTheFullTimesArchives ($accessToTheFullTimesArchives) {
	$this->accessToTheFullTimesArchives = $accessToTheFullTimesArchives;
	return $this;
}

/**
* Get shareDigitalAccess - Share Digital Access
* @return boolean
*/
public function getShareDigitalAccess () {
	$preValue = $this->preGetValue("shareDigitalAccess"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->shareDigitalAccess;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("shareDigitalAccess")->isEmpty($data)) {
		return $this->getValueFromParent("shareDigitalAccess");
	}
	return $data;
}

/**
* Set shareDigitalAccess - Share Digital Access
* @param boolean $shareDigitalAccess
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setShareDigitalAccess ($shareDigitalAccess) {
	$this->shareDigitalAccess = $shareDigitalAccess;
	return $this;
}

/**
* Get isActive - Is Active Plan
* @return boolean
*/
public function getIsActive () {
	$preValue = $this->preGetValue("isActive"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->isActive;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("isActive")->isEmpty($data)) {
		return $this->getValueFromParent("isActive");
	}
	return $data;
}

/**
* Set isActive - Is Active Plan
* @param boolean $isActive
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setIsActive ($isActive) {
	$this->isActive = $isActive;
	return $this;
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

