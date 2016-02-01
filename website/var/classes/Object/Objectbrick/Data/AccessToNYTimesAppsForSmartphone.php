<?php 

/** Generated at 2016-02-01T13:52:41+01:00 */

/**
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object\Objectbrick\Data;

use Pimcore\Model\Object;

class AccessToNYTimesAppsForSmartphone extends Object\Objectbrick\Data\AbstractData  {

public $type = "AccessToNYTimesAppsForSmartphone";
public $available;


/**
* Set available - Available
* @return boolean
*/
public function getAvailable () {
	$data = $this->available;
	if(\Pimcore\Model\Object::doGetInheritedValues($this->getObject()) && $this->getDefinition()->getFieldDefinition("available")->isEmpty($data)) {
		return $this->getValueFromParent("available");
	}
	 return $data;
}

/**
* Set available - Available
* @param boolean $available
* @return \Pimcore\Model\Object\AccessToNYTimesAppsForSmartphone
*/
public function setAvailable ($available) {
	$this->available = $available;
	return $this;
}

}

