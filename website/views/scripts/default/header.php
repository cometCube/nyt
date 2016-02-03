<?php
if($this->editmode){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" media="all" href="website/static/css/digi-core-grid_refactor.css"/>
</head>

<body>
<?php
}
?>

<section class="" id="header_section">
        <a href="http://www.nytimes.com" id="logo_nyt">
        <?= $this->image("head-logo", array(
    "title" => "The New York Times",
    "width" => 214,
    "height" => 28,
   
)); ?>
    </a>

        <div class="memberTools clearfix">
            <ul class="memberTools__ul">
            <li id="link_login"class="memberTools__li"><?= $this->link("login_dig"); ?></li>
            <li id="link_hd" class="memberTools__li nologin"><?= $this->link("free_access_hd"); ?></li>
            </ul>
        </div>



<?php
if($this->editmode){
?>
</body>
</html>
<?php
}
?>