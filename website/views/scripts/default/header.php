
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


