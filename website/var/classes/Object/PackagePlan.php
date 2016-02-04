<?php 

/** Generated at 2016-02-04T07:36:34+01:00 */

/**
* Package Plan
* Inheritance: yes
* Variants   : no
* Changed by : admin (2)
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object;



/**
* @method static \Pimcore\Model\Object\PackagePlan getByPlanName ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByPrice ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByLabelName ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByLabelLink ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByIsActive ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackagePlan getByPlanPackage ($value, $limit = 0) 
*/

class PackagePlan extends Concrete {

public $o_classId = 7;
public $o_className = "PackagePlan";
public $planName;
public $price;
public $labelName;
public $labelLink;
public $isActive;
public $planPackage;


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
* Get planName - Plan Name
* @return string
*/
public function getPlanName () {
	$preValue = $this->preGetValue("planName"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->planName;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("planName")->isEmpty($data)) {
		return $this->getValueFromParent("planName");
	}
	return $data;
}

/**
* Set planName - Plan Name
* @param string $planName
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setPlanName ($planName) {
	$this->planName = $planName;
	return $this;
}

/**
* Get price - Price
* @return string
*/
public function getPrice () {
	$preValue = $this->preGetValue("price"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->price;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("price")->isEmpty($data)) {
		return $this->getValueFromParent("price");
	}
	return $data;
}

/**
* Set price - Price
* @param string $price
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setPrice ($price) {
	$this->price = $price;
	return $this;
}

/**
* Get labelName - Label Name
* @return string
*/
public function getLabelName () {
	$preValue = $this->preGetValue("labelName"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->labelName;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("labelName")->isEmpty($data)) {
		return $this->getValueFromParent("labelName");
	}
	return $data;
}

/**
* Set labelName - Label Name
* @param string $labelName
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setLabelName ($labelName) {
	$this->labelName = $labelName;
	return $this;
}

/**
* Get labelLink - Label Link
* @return string
*/
public function getLabelLink () {
	$preValue = $this->preGetValue("labelLink"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->labelLink;
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("labelLink")->isEmpty($data)) {
		return $this->getValueFromParent("labelLink");
	}
	return $data;
}

/**
* Set labelLink - Label Link
* @param string $labelLink
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setLabelLink ($labelLink) {
	$this->labelLink = $labelLink;
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

/**
* Get planPackage - Plan Package
* @return array
*/
public function getPlanPackage () {
	$preValue = $this->preGetValue("planPackage"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->getClass()->getFieldDefinition("planPackage")->preGetData($this);
	if(\Pimcore\Model\Object::doGetInheritedValues() && $this->getClass()->getFieldDefinition("planPackage")->isEmpty($data)) {
		return $this->getValueFromParent("planPackage");
	}
	return $data;
}

/**
* Set planPackage - Plan Package
* @param array $planPackage
* @return \Pimcore\Model\Object\PackagePlan
*/
public function setPlanPackage ($planPackage) {
	$this->planPackage = $this->getClass()->getFieldDefinition("planPackage")->preSetData($this, $planPackage);
	return $this;
}

protected static $_relationFields = array (
  'planPackage' => 
  array (
    'type' => 'objects',
  ),
);

public $lazyLoadedFields = NULL;

}

