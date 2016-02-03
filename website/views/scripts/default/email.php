<!-- Interstitial at 6 20150128 ~dj.paris-->
<style>

 #growl-optout,
#growl-login {
 width:120px;
 height:20px;
 font-style:italic;
 text-decoration:none;
 z-index: 1000000139;
 font-size:13px;
 position: relative;
 left: 52px;
 bottom: 40px;
 font-family: Georgia, Times, serif;
 float: left;
}
#growl-login {
 width: 175px;
 right: 50px;
 float: right;
 text-align: right;
 margin-right: 100px;
}
 #growl-optout a,
 #growl-login a {
   text-decoration:underline;
   color: #000;
   font-family: Georgia, Times, serif;
 } 
 #growl-skipthis a {
 color:#adadad;
 }
 #growl-skipthis {
 height: 15px;
 width: 70px;
 color:#adadad;
 text-decoration: underline;
 font-size: 12px;
 font-family: Georgia, Times, serif;
 float:right;
}
 
 #growl-logo {
 width: 320px;
 height: 21px;
 left: 0  !important;
 font-style:italic;
 text-decoration:none;
 font-size:13px;
 float:left;
 margin-bottom:10px;
}
#growl-thisis {
 width: 200px;
 color:#adadad;
 font-family: Georgia, Times, serif;
}
 
 #growl-bg {
 width: 640px;
 height: 483px;
 margin: 0 auto; 
 background:#fff;
 padding:50px;
}

#mkt-floodlight-interstitial {
 display: inline;
}
.hide_login {
   display: none;
}
</style>

<div id="supercontainer" class="nytdGrowlUIContainer">
  <div id="overlay1"></div>
  <div id="overlay3"></div>

  <div id="growl-container">

    <div id="growl-logo">
      <img src="http://graphics8.nytimes.com/adx/images/ADS/38/24/ad.382465/logo-nytimes.png" alt="">
      <span id="growl-thisis"><?= $this->input("adverstisement") ?></span>
    </div>

    <div id="growl-skipthis"><a href="javascript:;" data-content-placement="1" class="nytdGrowlNotifyCross"><?= $this->link("skilink") ?></a></div>
	<table width="100%" cellspacing="0" cellpadding="0" style="background:#e9e9e9;">
    	<tr>
        	<td width="25%">        <?= $this->areablock("leftarea",array(
            "allowed"=>array("ContentLeft"),
            "areablock_toolbar" => array(
                "title" => "",
                "width" => 230,
                "x" => 20,
                "y" => 50,
                "xAlign" => "right",
                "buttonWidth" => 218,
                "buttonMaxCharacters" => 35
            )));
        ?></td>
            <td width="50%">
            	
            	<div id="growl-bg">
						<?= $this->areablock("contentlock"); ?>
                 
          
                  <a href="#" style="background:#000; text-decoration:none; color:#fff; padding:4px; display:inline-block;">
                    <span style="padding:5px; border:1px solid #b6b6b6; display:block; font-family:arial; text-transform:uppercase; font-weight:bold; font-size:16px;">
                        <img src="arrow.png" alt="">
                        See my options
                    </span>
                  </a>
                  <div id="growl-optout" style="clear:both; width:100%; display:block; position:inherit; margin-top:20px; bottom:inherit;left: inherit;"><a href="javascript:;" data-content-placement="2" class="nytdGrowlNotifyCross"><?= $this->link("nothanls") ?></a></div>
           
                </div>
            </td>
            <td width="25%"><?= $this->areablock("rightarea",array(
            "allowed"=>array("ContentRight"),
            "areablock_toolbar" => array(
                "title" => "",
                "width" => 230,
                "x" => 20,
                "y" => 50,
                "xAlign" => "right",
                "buttonWidth" => 218,
                "buttonMaxCharacters" => 35
            )));
        ?></td>
        </tr>
    </table>
  </div>
</div>

<!-- Ensighten --><img src="https://nytimes.activate.ensighten.com/no-content?pid=1&cw_ei=2&ei=2&pa=-20&cw_pa=-20&sd=Left9|44YLL|382465|256465|44YLL&lei=2&lsi=123abc" width="1" height="1" class="hidden">
<!-- Krux --><img src="http://beacon.krxd.net/event.gif?event_id=JAJ77GLK&amp;event_type=cact" alt="" class="hidden">
<!-- iCrossing Floodlight -->
<div id="mkt-floodlight-interstitial"></div>
<script src="http://static01.nyt.com/marketing/abTest/addfloodlight_interstitial.js"></script>
<noscript>
  <iframe src="https://3951336.fls.doubleclick.net/activityi;src=3951336;type=remar664;cat=Growl00;ord=1?" width="1" height="1" style="display:none;"></iframe>
</noscript>
<!-- iCrossing Floodlight -->

<!-- For login elements -->
<script src="http://static01.nyt.com/marketing/ADX/Growl/expand_multi_growl1.1.js"></script>
