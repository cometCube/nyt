<?php 

/** Generated at 2016-02-01T13:39:51+01:00 */

/**
* Inheritance: no
* Variants   : no
* Changed by : admin (2)
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object;



/**
* @method static \Pimcore\Model\Object\PackageType getByTypeName ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackageType getByTypeDesc ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackageType getByTypeIogo ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\PackageType getByTypeSubscribeLink ($value, $limit = 0) 
*/

class PackageType extends Concrete {

public $o_classId = 3;
public $o_className = "PackageType";
public $typeName;
public $typeDesc;
public $typeIogo;
public $typeSubscribeLink;


/**
* @param array $values
* @return \Pimcore\Model\Object\PackageType
*/
public static function create($values = array()) {
	$object = new static();
	$object->setValues($values);
	return $object;
}

/**
* Get typeName - Package Type
* @return string
*/
public function getTypeName () {
	$preValue = $this->preGetValue("typeName"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->typeName;
	return $data;
}

/**
* Set typeName - Package Type
* @param string $typeName
* @return \Pimcore\Model\Object\PackageType
*/
public function setTypeName ($typeName) {
	$this->typeName = $typeName;
	return $this;
}

/**
* Get typeDesc - Package Type Description
* @return string
*/
public function getTypeDesc () {
	$preValue = $this->preGetValue("typeDesc"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->typeDesc;
	return $data;
}

/**
* Set typeDesc - Package Type Description
* @param string $typeDesc
* @return \Pimcore\Model\Object\PackageType
*/
public function setTypeDesc ($typeDesc) {
	$this->typeDesc = $typeDesc;
	return $this;
}

/**
* Get typeIogo - Package Type Logo
* @return \Pimcore\Model\Asset\Image
*/
public function getTypeIogo () {
	$preValue = $this->preGetValue("typeIogo"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->typeIogo;
	return $data;
}

/**
* Set typeIogo - Package Type Logo
* @param \Pimcore\Model\Asset\Image $typeIogo
* @return \Pimcore\Model\Object\PackageType
*/
public function setTypeIogo ($typeIogo) {
	$this->typeIogo = $typeIogo;
	return $this;
}

/**
* Get typeSubscribeLink - Type Subscribe Link
* @return \Pimcore\Model\Object\Data\Link
*/
public function getTypeSubscribeLink () {
	$preValue = $this->preGetValue("typeSubscribeLink"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->typeSubscribeLink;
	return $data;
}

/**
* Set typeSubscribeLink - Type Subscribe Link
* @param \Pimcore\Model\Object\Data\Link $typeSubscribeLink
* @return \Pimcore\Model\Object\PackageType
*/
public function setTypeSubscribeLink ($typeSubscribeLink) {
	$this->typeSubscribeLink = $typeSubscribeLink;
	return $this;
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

