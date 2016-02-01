<?php 

/** Generated at 2016-02-01T13:29:46+01:00 */

/**
* Inheritance: no
* Variants   : no
* Changed by : admin (2)
* IP:          127.0.0.1
*/


namespace Pimcore\Model\Object;



/**
* @method static \Pimcore\Model\Object\Faq getByFaqQuestion ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Faq getByFaqAnswer ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Faq getByFaqsequence ($value, $limit = 0) 
* @method static \Pimcore\Model\Object\Faq getByFaqActive ($value, $limit = 0) 
*/

class Faq extends Concrete {

public $o_classId = 5;
public $o_className = "faq";
public $faqQuestion;
public $faqAnswer;
public $faqsequence;
public $faqActive;


/**
* @param array $values
* @return \Pimcore\Model\Object\Faq
*/
public static function create($values = array()) {
	$object = new static();
	$object->setValues($values);
	return $object;
}

/**
* Get faqQuestion - FAQ Question
* @return string
*/
public function getFaqQuestion () {
	$preValue = $this->preGetValue("faqQuestion"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->faqQuestion;
	return $data;
}

/**
* Set faqQuestion - FAQ Question
* @param string $faqQuestion
* @return \Pimcore\Model\Object\Faq
*/
public function setFaqQuestion ($faqQuestion) {
	$this->faqQuestion = $faqQuestion;
	return $this;
}

/**
* Get faqAnswer - FAQ Answer
* @return string
*/
public function getFaqAnswer () {
	$preValue = $this->preGetValue("faqAnswer"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->getClass()->getFieldDefinition("faqAnswer")->preGetData($this);
	return $data;
}

/**
* Set faqAnswer - FAQ Answer
* @param string $faqAnswer
* @return \Pimcore\Model\Object\Faq
*/
public function setFaqAnswer ($faqAnswer) {
	$this->faqAnswer = $faqAnswer;
	return $this;
}

/**
* Get faqsequence - FAQ Sequence
* @return float
*/
public function getFaqsequence () {
	$preValue = $this->preGetValue("faqsequence"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->faqsequence;
	return $data;
}

/**
* Set faqsequence - FAQ Sequence
* @param float $faqsequence
* @return \Pimcore\Model\Object\Faq
*/
public function setFaqsequence ($faqsequence) {
	$this->faqsequence = $faqsequence;
	return $this;
}

/**
* Get faqActive - FAQ Active
* @return boolean
*/
public function getFaqActive () {
	$preValue = $this->preGetValue("faqActive"); 
	if($preValue !== null && !\Pimcore::inAdmin()) { 
		return $preValue;
	}
	$data = $this->faqActive;
	return $data;
}

/**
* Set faqActive - FAQ Active
* @param boolean $faqActive
* @return \Pimcore\Model\Object\Faq
*/
public function setFaqActive ($faqActive) {
	$this->faqActive = $faqActive;
	return $this;
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

