<?php 

class Object_News extends Object_Concrete {

public $o_classId = 1;
public $o_className = "news";
public $image;
public $date;
public $showfrom;
public $showto;
public $image_detail_1;
public $image_detail_2;
public $image_detail_3;
public $image_detail_4;
public $image_detail_5;
public $image_detail_6;
public $localizedfields;


/**
* @param array $values
* @return Object_News
*/
public static function create($values = array()) {
	$object = new self();
	$object->setValues($values);
	return $object;
}

/**
* @return Asset_Image
*/
public function getImage () {
	$preValue = $this->preGetValue("image"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->image;
	 return $data;
}

/**
* @param Asset_Image $image
* @return void
*/
public function setImage ($image) {
	$this->image = $image;
}

/**
* @return Pimcore_Date
*/
public function getDate () {
	$preValue = $this->preGetValue("date"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->date;
	 return $data;
}

/**
* @param Pimcore_Date $date
* @return void
*/
public function setDate ($date) {
	$this->date = $date;
}

/**
* @return Pimcore_Date
*/
public function getShowfrom () {
	$preValue = $this->preGetValue("showfrom"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->showfrom;
	 return $data;
}

/**
* @param Pimcore_Date $showfrom
* @return void
*/
public function setShowfrom ($showfrom) {
	$this->showfrom = $showfrom;
}

/**
* @return Pimcore_Date
*/
public function getShowto () {
	$preValue = $this->preGetValue("showto"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->showto;
	 return $data;
}

/**
* @param Pimcore_Date $showto
* @return void
*/
public function setShowto ($showto) {
	$this->showto = $showto;
}

/**
* @return Asset_Image
*/
public function getImage_detail_1 () {
	$preValue = $this->preGetValue("image_detail_1"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->image_detail_1;
	 return $data;
}

/**
* @param Asset_Image $image_detail_1
* @return void
*/
public function setImage_detail_1 ($image_detail_1) {
	$this->image_detail_1 = $image_detail_1;
}

/**
* @return Asset_Image
*/
public function getImage_detail_2 () {
	$preValue = $this->preGetValue("image_detail_2"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->image_detail_2;
	 return $data;
}

/**
* @param Asset_Image $image_detail_2
* @return void
*/
public function setImage_detail_2 ($image_detail_2) {
	$this->image_detail_2 = $image_detail_2;
}

/**
* @return Asset_Image
*/
public function getImage_detail_3 () {
	$preValue = $this->preGetValue("image_detail_3"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->image_detail_3;
	 return $data;
}

/**
* @param Asset_Image $image_detail_3
* @return void
*/
public function setImage_detail_3 ($image_detail_3) {
	$this->image_detail_3 = $image_detail_3;
}

/**
* @return Asset_Image
*/
public function getImage_detail_4 () {
	$preValue = $this->preGetValue("image_detail_4"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->image_detail_4;
	 return $data;
}

/**
* @param Asset_Image $image_detail_4
* @return void
*/
public function setImage_detail_4 ($image_detail_4) {
	$this->image_detail_4 = $image_detail_4;
}

/**
* @return Asset_Image
*/
public function getImage_detail_5 () {
	$preValue = $this->preGetValue("image_detail_5"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->image_detail_5;
	 return $data;
}

/**
* @param Asset_Image $image_detail_5
* @return void
*/
public function setImage_detail_5 ($image_detail_5) {
	$this->image_detail_5 = $image_detail_5;
}

/**
* @return Asset_Image
*/
public function getImage_detail_6 () {
	$preValue = $this->preGetValue("image_detail_6"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->image_detail_6;
	 return $data;
}

/**
* @param Asset_Image $image_detail_6
* @return void
*/
public function setImage_detail_6 ($image_detail_6) {
	$this->image_detail_6 = $image_detail_6;
}

/**
* @return array
*/
public function getLocalizedfields () {
	$preValue = $this->preGetValue("localizedfields"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	$data = $this->getClass()->getFieldDefinition("localizedfields")->preGetData($this);
	 return $data;
}

/**
* @return boolean
*/
public function getActive ($language = null) {
	$data = $this->getLocalizedfields()->getLocalizedValue("active", $language);
	$preValue = $this->preGetValue("active"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	 return $data;
}

/**
* @return string
*/
public function getName ($language = null) {
	$data = $this->getLocalizedfields()->getLocalizedValue("name", $language);
	$preValue = $this->preGetValue("name"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	 return $data;
}

/**
* @return string
*/
public function getTeaser ($language = null) {
	$data = $this->getLocalizedfields()->getLocalizedValue("teaser", $language);
	$preValue = $this->preGetValue("teaser"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	 return $data;
}

/**
* @return string
*/
public function getText ($language = null) {
	$data = $this->getLocalizedfields()->getLocalizedValue("text", $language);
	$preValue = $this->preGetValue("text"); 
	if($preValue !== null && !Pimcore::inAdmin()) { return $preValue;}
	 return $data;
}

/**
* @param array $localizedfields
* @return void
*/
public function setLocalizedfields ($localizedfields) {
	$this->localizedfields = $localizedfields;
}

/**
* @param boolean $active
* @return void
*/
public function setActive ($active, $language = null) {
	$this->getLocalizedfields()->setLocalizedValue("active", $active, $language);
}

/**
* @param string $name
* @return void
*/
public function setName ($name, $language = null) {
	$this->getLocalizedfields()->setLocalizedValue("name", $name, $language);
}

/**
* @param string $teaser
* @return void
*/
public function setTeaser ($teaser, $language = null) {
	$this->getLocalizedfields()->setLocalizedValue("teaser", $teaser, $language);
}

/**
* @param string $text
* @return void
*/
public function setText ($text, $language = null) {
	$this->getLocalizedfields()->setLocalizedValue("text", $text, $language);
}

protected static $_relationFields = array (
);

public $lazyLoadedFields = NULL;

}

