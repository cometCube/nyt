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

<div class="mainHeader">
        <div class="title desktop">
			<span>
			<?= $this->textarea("titleDesc") ?></span>
        <br>
        <span id="sub_title"><?= $this->input("titlePrice"); ?></span></div>

        <div class="title moflow">Try the Times Digital Experience<br>
        <span id="orange">99¢ for 4 weeks</span>
        </div>
        <div id="titleLogo"><?= $this->image("title-logo", array(
    "title" => "The New York Times",

   
)); ?></div></div>
</section>



