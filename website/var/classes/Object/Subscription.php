<?php 

/** Generated at 2016-02-03T08:07:39+01:00 */

/**
* Inheritance: no
* Variants   : no
* Changed by : admin (2)
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object;



/**
* @method static \Pimcore\Model\Object\Subscription getBySubsTypeName ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Subscription getBySubstypeDesc ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Subscription getByPrimaryImage ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Subscription getByHoverImage ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Subscription getBySubsTypeSubscribeLink ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Subscription getBySubsIsActive ($value, $limit = 0) 
*/

class Subscription extends Concrete {

public $o_classId = 8;
public $o_className = "Subscription";
public $subsTypeName;
public $substypeDesc;
public $primaryImage;
public $hoverImage;
public $subsTypeSubscribeLink;
public $subsIsActive;


/**
* @param array $values
* @return \Pimcore\Model\Object\Subscription
*/
public static function create($values = array()) {
	$object = new static();
	$object->setValues($values);
	return $object;
}

/**
* Get subsTypeName - Subscription Package Type
* @return string
*/
public function getSubsTypeName () {
	$preValue = $this->preGetValue("subsTypeName"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->subsTypeName;
	return $data;
}

/**
* Set subsTypeName - Subscription Package Type
* @param string $subsTypeName
* @return \Pimcore\Model\Object\Subscription
*/
public function setSubsTypeName ($subsTypeName) {
	$this->subsTypeName = $subsTypeName;
	return $this;
}

/**
* Get substypeDesc - subscription Package Type Description
* @return string
*/
public function getSubstypeDesc () {
	$preValue = $this->preGetValue("substypeDesc"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->substypeDesc;
	return $data;
}

/**
* Set substypeDesc - subscription Package Type Description
* @param string $substypeDesc
* @return \Pimcore\Model\Object\Subscription
*/
public function setSubstypeDesc ($substypeDesc) {
	$this->substypeDesc = $substypeDesc;
	return $this;
}

/**
* Get primaryImage - Primary Image
* @return \Pimcore\Model\Asset\Image
*/
public function getPrimaryImage () {
	$preValue = $this->preGetValue("primaryImage"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->primaryImage;
	return $data;
}

/**
* Set primaryImage - Primary Image
* @param \Pimcore\Model\Asset\Image $primaryImage
* @return \Pimcore\Model\Object\Subscription
*/
public function setPrimaryImage ($primaryImage) {
	$this->primaryImage = $primaryImage;
	return $this;
}

/**
* Get hoverImage - Hover Image
* @return \Pimcore\Model\Asset\Image
*/
public function getHoverImage () {
	$preValue = $this->preGetValue("hoverImage"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->hoverImage;
	return $data;
}

/**
* Set hoverImage - Hover Image
* @param \Pimcore\Model\Asset\Image $hoverImage
* @return \Pimcore\Model\Object\Subscription
*/
public function setHoverImage ($hoverImage) {
	$this->hoverImage = $hoverImage;
	return $this;
}

/**
* Get subsTypeSubscribeLink - Subscription Type Subscribe Link
* @return \Pimcore\Model\Object\Data\Link
*/
public function getSubsTypeSubscribeLink () {
	$preValue = $this->preGetValue("subsTypeSubscribeLink"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->subsTypeSubscribeLink;
	return $data;
}

/**
* Set subsTypeSubscribeLink - Subscription Type Subscribe Link
* @param \Pimcore\Model\Object\Data\Link $subsTypeSubscribeLink
* @return \Pimcore\Model\Object\Subscription
*/
public function setSubsTypeSubscribeLink ($subsTypeSubscribeLink) {
	$this->subsTypeSubscribeLink = $subsTypeSubscribeLink;
	return $this;
}

/**
* Get subsIsActive - Subscription Is Active
* @return boolean
*/
public function getSubsIsActive () {
	$preValue = $this->preGetValue("subsIsActive"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->subsIsActive;
	return $data;
}

/**
* Set subsIsActive - Subscription Is Active
* @param boolean $subsIsActive
* @return \Pimcore\Model\Object\Subscription
*/
public function setSubsIsActive ($subsIsActive) {
	$this->subsIsActive = $subsIsActive;
	return $this;
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

