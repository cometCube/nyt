<?php 

/** Generated at 2016-02-01T14:15:27+01:00 */

/**
* Inheritance: no
* Variants   : no
* Changed by : admin (2)
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object;



/**
* @method static \Pimcore\Model\Object\Subscriptions getByName ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Subscriptions getByOfferedServices ($value, $limit = 0) 
*/

class Subscriptions extends Concrete {

public $o_classId = 6;
public $o_className = "Subscriptions";
public $name;
public $offeredServices;


/**
* @param array $values
* @return \Pimcore\Model\Object\Subscriptions
*/
public static function create($values = array()) {
	$object = new static();
	$object->setValues($values);
	return $object;
}

/**
* Get name - name
* @return string
*/
public function getName () {
	$preValue = $this->preGetValue("name"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->name;
	return $data;
}

/**
* Set name - name
* @param string $name
* @return \Pimcore\Model\Object\Subscriptions
*/
public function setName ($name) {
	$this->name = $name;
	return $this;
}

/**
* @return \Pimcore\Model\Object\Objectbrick
*/
public function getOfferedServices () {
	$data = $this->offeredServices;
	if(!$data) { 
		if(\Pimcore\Tool::classExists("\Pimcore\Model\Object\Subscriptions\OfferedServices")) { 
			$data = new \Pimcore\Model\Object\Subscriptions\OfferedServices($this, "offeredServices");
			$this->offeredServices = $data;
		} else {
			return null;
		}
	}
	$preValue = $this->preGetValue("offeredServices"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { return $preValue;}
	 return $data;
}

/**
* Set offeredServices - Offered Services
* @param \Pimcore\Model\Object\Objectbrick $offeredServices
* @return \Pimcore\Model\Object\Subscriptions
*/
public function setOfferedServices ($offeredServices) {
	$this->offeredServices = $this->getClass()->getFieldDefinition("offeredServices")->preSetData($this, $offeredServices);
	return $this;
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

