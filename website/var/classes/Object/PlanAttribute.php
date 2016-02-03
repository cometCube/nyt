<?php 

/** Generated at 2016-02-03T09:16:50+01:00 */

/**
* Inheritance: no
* Variants   : no
* Changed by : admin (2)
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object;



/**
* @method static \Pimcore\Model\Object\PlanAttribute getByPlanAttributeName ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PlanAttribute getByPrice ($value, $limit = 0) 
*/

class PlanAttribute extends Concrete {

public $o_classId = 9;
public $o_className = "PlanAttribute";
public $planAttributeName;
public $price;


/**
* @param array $values
* @return \Pimcore\Model\Object\PlanAttribute
*/
public static function create($values = array()) {
	$object = new static();
	$object->setValues($values);
	return $object;
}

/**
* Get planAttributeName - Plan Attribute Name
* @return string
*/
public function getPlanAttributeName () {
	$preValue = $this->preGetValue("planAttributeName"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->planAttributeName;
	return $data;
}

/**
* Set planAttributeName - Plan Attribute Name
* @param string $planAttributeName
* @return \Pimcore\Model\Object\PlanAttribute
*/
public function setPlanAttributeName ($planAttributeName) {
	$this->planAttributeName = $planAttributeName;
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
	return $data;
}

/**
* Set price - Price
* @param string $price
* @return \Pimcore\Model\Object\PlanAttribute
*/
public function setPrice ($price) {
	$this->price = $price;
	return $this;
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

