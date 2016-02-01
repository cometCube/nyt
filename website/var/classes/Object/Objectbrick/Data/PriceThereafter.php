<?php 

/** Generated at 2016-02-01T13:52:50+01:00 */

/**
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object\Objectbrick\Data;

use Pimcore\Model\Object;

class PriceThereafter extends Object\Objectbrick\Data\AbstractData  {

public $type = "PriceThereafter";
public $subscriptionPrice;


/**
* Set subscriptionPrice - Subscription Price
* @return float
*/
public function getSubscriptionPrice () {
	$data = $this->subscriptionPrice;
	if(\Pimcore\Model\Object::doGetInheritedValues($this->getObject()) && $this->getDefinition()->getFieldDefinition("subscriptionPrice")->isEmpty($data)) {
		return $this->getValueFromParent("subscriptionPrice");
	}
	 return $data;
}

/**
* Set subscriptionPrice - Subscription Price
* @param float $subscriptionPrice
* @return \Pimcore\Model\Object\PriceThereafter
*/
public function setSubscriptionPrice ($subscriptionPrice) {
	$this->subscriptionPrice = $subscriptionPrice;
	return $this;
}

}

