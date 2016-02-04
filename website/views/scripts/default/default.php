<?php
$packages = $this->packages;
$subscription = $this->subscription;
$planFeature = $this->planFeature;

$features = $this->features;
?>
<div class="mainHeader">
        <div class="title desktop">
			<?= $this->textarea("titleDesc") ?>
        <br>
        <span id="sub_title"><?= $this->input("titlePrice"); ?></span></div>

        <div class="title moflow">Try the Times Digital Experience<br>
        <span id="orange">99¢ for 4 weeks</span>
        </div>
        <div id="titleLogo"><?= $this->image("title-logo", array(
    "title" => "The New York Times",

   
)); ?></div></div>
</section>
<section id="bundle_section">

        <div class="table_div">

            <table id="table_bundles">
                <thead>
                <tr>
                    <td class="feature"></td>
                    <?php foreach ($planFeature as $value) { ?>
                    	
                   
                    <td class="bundle_col">
                        <p class="desktop"><?php echo $value->getPlanName();?></p>
                        <a href="https://myaccount.nytimes.com/get-started?OC=373674" data-oc="373674" class="button-digi font-smoothing">
                            <span class="desktop"><?php echo $value->getlabelName();?></span>
                            <span class="moflow">Get web + Smartphone apps ►</span>
                        </a>

                    </td>
                    <td class="mobile price-sale">first 4<br>weeks<br><span class="price">99¢</span></td>
                    <td class="mobile price-reg">Every Week<br>Thereafter<br><span class="price"><?php echo '$'.$value->priceThereAfter;?></span></td>
                    <td class="mobile link_details" id="details_mo_sma"><a class="a_link_details"><span class="details_hide">Hide</span><span class="details_see">See</span> Details</a></td>
                    <td class="detail_mobile detail_mobile_sma">
                        <h4>
                            <span class="sma">NYTimes.com + Smartphone Apps</span>
                        </h4>

                        <ul id="details_list">

                            <li class="sma ada tab">Unlimited access to NYTimes.com on any browser.</li>

                            <li class="ada sma">NYTimes smartphone apps on iPhone<span class="supreg">&reg;</span>,
                                BlackBerry<span class="supreg">&reg;</span> 10, Windows&reg; Phone 7+ and Android<span class="sup">TM</span>-powered phones.
                            </li>

                            <li class="ada sma tab ">TimesMachine Archive &mdash; See issues with all articles, photos
                                and ads as they originally appeared. View up to 100 articles per month.
                            </li>

                            <li class="sma">After the introductory period, your rate will be <span class="price-per-week" id="price_smart">$3.75</span>
                                per week, billed every four weeks.
                            </li>

                        </ul>
                    </td>
                    <?php } ?>

                </tr>
                </thead>
                <tbody>
       
            <?php foreach ($features as $val) { 
                ?>
                <tr class="desktop-row">
                    <td><?php echo $val->getplanAttributeName(); ?></td> 
                        <?php foreach ($planFeature as $value) {
                            ?>
                                <td class="bundle_col"><?php 
                                    $array = $value->getplanPackage();
                                    if (is_array($array) || is_object($array))
                                    {
                                        foreach ($array as $value)
                                        {
                                            if($val->getPlanAttributeName() == $value->getPlanAttributeName()) { 
                                              ?> <span class="dot"></span> <?php
                                        }
                                    } }
                               ?></td>
                    <?php } ?>
                </tr><?php } ?>
   
                <tr class="mobile-row">
                    <td class="mobile-hd" id="home-del-mo">Home delivery subscribers <a href="https://myaccount.nytimes.com/mobile/hdlink/smart/index.html?app=1" id="free_access_hd">get
                        free access</a></td>
                </tr>

                <tr>
                    <td class="disclaim desktop"></td>
                    <td class="disclaim" colspan="3">
                        <p id="disclaimer">
                            <?= $this->textarea("promotionalOffer") ?>
                        </p>
                    </td>
                </tr>
                </tbody>
            </table>

        </div>
        <!-- <end of table_div> -->

    </section>

<hr class="h_ruler desktop">
    <section class="desktop" id="other_rates_section">

        <div class="other_rates__container">
            <div class="tile">
                <h4 class=""><?= $this->input("homeDelRate"); ?></h4>
                <p><?= $this->wysiwyg("goToHomeDel") ?><br></p>
            </div>
            <div class="divider-vertical"></div>
            <div class=" tile">
                <h4 class=""><?= $this->input("educationRate"); ?></h4>
                <p><?= $this->wysiwyg("goToEdu") ?></p>
            </div>
        </div>
    </section>


    <section id="more_options_section">

        <svg style="display: none">

            <symbol viewBox="0 0 44 35.8" height="35.8" width="44" id="icon-hd-svg">

                    <path d="M6.5,18V33a5.2,5.2,0,0,0,1.1,1.4l1.9,1.3h7.3L17,24.7a3.7,3.7,0,0,1,1.4-1.7,28,28,0,0,1,5.9-.1,2.7,2.7,0,0,1,2,2.1c0,0.7-.1,10.6-0.1,10.6s7.5,0.1,8.6,0,2.5-2.2,2.5-2.7,0.1-14.7.1-14.7L22.9,6.8a4,4,0,0,0-1.8-.1C20.6,6.9,6.5,18,6.5,18Z"/>
                    <path d="M0.1,15.6A1.7,1.7,0,0,0,.3,17a2.7,2.7,0,0,0,1.3.5L20.8,2.8s0-.4,1.1-0.4S23.1,3,23.1,3L42.2,17.4a1,1,0,0,0,1.2-.2A1.4,1.4,0,0,0,44,16l-6.6-5.4V5.3S37.4,4.1,34.9,4s-2.7,0-3.2.6-0.1,2.5-.1,2.5L24,0.7a2.5,2.5,0,0,0-2-.7,2.2,2.2,0,0,0-2.2.8Z"/>
                
            </symbol>


            <symbol viewBox="0 0 44 43.8" height="43.8" width="44" id="icon-insider-svg">
                <path d="M39.9,24.9L44,21.8l-4-3.3,2.8-4.2-4.6-1.1,0.4-5.5H34.2L33.4,2.9,28.7,4.4,26,0,22.2,3.5,18.4,0.2,15.9,4.7,11.2,2.9,10.1,8s-5-.2-5-0.1,0.8,5.2.8,5.2-4.8,1.4-4.6,1.4,3,4,3,4L0,21.7l4.6,3L1.4,29.3l4.8,1.9-0.7,5,5-.3,0.4,5.3,4.9-1.5,2.7,4.1,3.6-3.3,3.8,3.3,2.4-4.4L33.1,41l0.8-4.6,4.8-.2-0.6-4.9,4.5-1.6ZM22.5,31c-4.2,0-7.8-2.9-7.8-7.2s3.1-6.1,6.4-6.8h0a5.3,5.3,0,0,0-2.7,3l4.8-2.2v7.4L20,26.7V19.5l-1.6.7a7.9,7.9,0,0,0-.3,2.3c0,3.3,2.1,5.2,5.3,5.2a7.2,7.2,0,0,0,2.5-.4V23.7L24,22l1.9-1.7V17.8H25.7c-2.1,0-5.4-1.7-7.5-1.7a1.5,1.5,0,0,0-1.5,1.3,1.2,1.2,0,0,0,.5,1.1h0a2.5,2.5,0,0,1-2-2.6,3.6,3.6,0,0,1,3.7-3.3c2.5,0,4.8,1.6,6.7,1.6a1.1,1.1,0,0,0,1.2-1.1,1.2,1.2,0,0,0-1.4-1.1h0.5A3,3,0,0,1,29,14.8a3.1,3.1,0,0,1-3,3v2.4L28,22,26,23.7v3.5a6,6,0,0,0,3.4-3.5h0.1C29.5,28,27,31,22.5,31Z"/>
            </symbol>


            <symbol viewBox="0 0 80 42" height="42" width="80" id="icon-edu-svg">
                <path d="M0,9S37.9,0,39.6,0,80,8.9,80,8.9l-18.7,5v6.5l-3.8.6-3.9,1.1v4.7L55,29.1s0.2,11.3,0,11.6A2.5,2.5,0,0,1,53,42c-1.4.1-2-1.6-2-1.6L50.8,29l1.4-2.2V22.6a37.4,37.4,0,0,0-5.9,2.7c-2.1,1.4-6.7,5.1-6.7,5.1s-3.2-3.8-10.6-7a31.5,31.5,0,0,0-10.7-2.8V14Z"/>
            </symbol>


            <symbol viewBox="0 0 44 50.31" height="40px" width="35px" id="icon-gift-svg">
                <path transform="translate(0 0.01)" d="M0.2,23.9H15.7V13.8L0.2,13.5V23.9ZM0,50.3H15.5V26.5L0,26.6V50.3ZM28.3,13.5V23.9H43.8L44,13.5H28.3ZM25,23.9V13.5l6.2-.1s8.9-4.5,7.4-8.6A7.11,7.11,0,0,0,29.4.4C26,1.6,22,8.5,22,8.5s-2.1-5.3-6.3-7.4-11.9,2-10,6.7,8.6,5.8,8.6,5.8l5.2-.1V23.8L25,23.9h0ZM29.9,4.2c3-.9,4.8,1.4,4.6,3s-2.5,3.7-4.6,4.2a26.74,26.74,0,0,1-6.3-.2S26.9,5.2,29.9,4.2ZM14.1,11.4C12,11,9.7,8.9,9.5,7.2s1.6-4,4.6-3,6.3,6.9,6.3,6.9S16.2,11.9,14.1,11.4ZM28.3,50.3H43.8V26.6l-15.5-.1V50.3Zm-8.8,0H25V26.6l-5.6-.1V50.3h0.1Z"/>
            </symbol>


            <symbol viewBox="0 0 44 68.8" height="68.8" width="44" id="icon-corporate-svg">
                <path d="M31.6,0c-1,.1-12.7,14.8-12.7,14.8H43.9S32.6-.1,31.6,0ZM0,68.8H17.9V34.8H0V68.8ZM14.2,36.1h2.8v2.8H14.2V36.1Zm0,8.5h2.8v2.8H14.2V44.6Zm0,9.6h2.8v2.8H14.2V54.2Zm0,8.9h2.8v2.8H14.2V63ZM9.8,36.1h2.8v2.8H9.8V36.1Zm0,8.5h2.8v2.8H9.8V44.6Zm0,9.6h2.8v2.8H9.8V54.2Zm0,8.9h2.8v2.8H9.8V63ZM5.3,36.1H8.1v2.8H5.3V36.1Zm0,8.5H8.1v2.8H5.3V44.6Zm0,9.6H8.1v2.8H5.3V54.2Zm0,8.9H8.1v2.8H5.3V63ZM0.9,36.1H3.7v2.8H0.9V36.1Zm0,8.5H3.7v2.8H0.9V44.6Zm0,9.6H3.7v2.8H0.9V54.2Zm0,8.9H3.7v2.8H0.9V63ZM18.8,15.5V68.7H44V15.5H18.8Zm7.6,47.7H22.3V59.6h4.1v3.6Zm0-5.7H22.3V53.8h4.1v3.6Zm0-5.7H22.3V48.1h4.1v3.6Zm0-5.9H22.3V42.2h4.1v3.6Zm0-5.6H22.3V36.7h4.1v3.6Zm0-5.9H22.3V30.8h4.1v3.6Zm0-5.7H22.3V25.1h4.1v3.6Zm0-5.8H22.3V19.3h4.1v3.6Zm7.4,40.3H29.7V59.6h4.1v3.6Zm0-5.7H29.7V53.8h4.1v3.6Zm0-5.7H29.7V48.1h4.1v3.6Zm0-5.9H29.7V42.2h4.1v3.6Zm0-5.6H29.7V36.7h4.1v3.6Zm0-5.9H29.7V30.8h4.1v3.6Zm0-5.7H29.7V25.1h4.1v3.6Zm0-5.8H29.7V19.3h4.1v3.6Zm7.1,40.3H36.8V59.6h4.1v3.6Zm0-5.7H36.8V53.8h4.1v3.6Zm0-5.7H36.8V48.1h4.1v3.6Zm0-5.9H36.8V42.2h4.1v3.6Zm0-5.6H36.8V36.7h4.1v3.6Zm0-5.9H36.8V30.8h4.1v3.6Zm0-5.7H36.8V25.1h4.1v3.6Zm0-5.8H36.8V19.3h4.1v3.6Z"/>
            </symbol>


            <symbol viewBox="0 0 44 44" height="39" width="39" id="icon-opinion-svg">
                <path d="M22,0A22,22,0,1,0,44,22,22,22,0,0,0,22,0ZM20,25a4.44,4.44,0,0,1-4.29,4.45c-2.69,0-4.51-2-4.51-5.45,0-5.45,3.74-9.68,8-12.21l1.43,1.93a12.36,12.36,0,0,0-4.56,6.93C17.27,21.06,20,21.89,20,25Zm11.33,0A4.44,4.44,0,0,1,27,29.48c-2.69,0-4.51-2-4.51-5.45,0-5.45,3.74-9.68,8-12.21L32,13.75a12.36,12.36,0,0,0-4.56,6.93C28.6,21.06,31.29,21.89,31.29,25Z"/>
            </symbol>

        </svg>


        <div class="section_title desktop" id="more_options_title">
        <?= $this->input("moreSubsPrice"); ?></div>
        <div class="section_title moflow">More subscriptions from The Times</div>

        <div class="icons_strip">
            <ul class="icons">
                <li class="moflow hd">
                    <a href="https://www.nytimesathome.com/hd/205?MediaCode=W22EJ&amp;CMP=3FQ49" class="icon-hd icon" id="icon-hd">

                        <div class="icon-image">
                            <svg height="35.8px" width="44px">
                                <use xlink:href="#icon-hd-svg"/>
                            </svg>
                        </div>


                        <div></div>
                        <div class="icon-text">Home Delivery</div>
                    </a>
                </li>
                
                <?php $i=0; foreach($subscription as $value) { ?>
					
					<span id="bydefaultshodes" style="display:none">
						<?php $i++;	if ($i == 1) {	echo $value->substypeDesc; }?>
					</span>
					
					<li onmouseover="hover('<?php echo $value->substypeDesc;?>')" class="insider">
						<a href="<?php echo $value->subsTypeSubscribeLink->direct;?>" target="<?php echo $value->subsTypeSubscribeLink->target;?>" class="icon-insider icon" id="icon-insider">
						
							<div class="icon-image">
								<img src ='<?php echo $value->getprimaryImage(); ?>'onmouseout = "ImageUnhover(this,'<?php echo $value->getprimaryImage(); ?>')" onmouseover="ImageHover(this,'<?php echo $value->gethoverImage();?>')">
							</div>
							<div class="icon-line"></div>
							<div class="icon-text"><?php echo $value->getSubsTypeName();?></div>
						</a>
					</li>
				<?php } ?>
				
                <li class="moflow edu">
                    <a href="http://www.nytimes.com/subscriptions/edu/lp1474.html?campaignId=3KLL9" class="icon-edu icon" id="icon-edu">

                        <div class="icon-image">
                            <svg height="42px" width="80px">
                                <use xlink:href="#icon-edu-svg"/>
                            </svg>
                        </div>

                        <div class="icon-line"></div>
                        <div class="icon-text">Education Rates</div>
                    </a>
                </li>
            </ul>
            <div class="features">
                <p class="icon-insider active" id="showonhoversubscription">
					
                </p>
                <!--<p class="icon-opinion">Unlimited access to the Opinion section on NYTimes.com.<br>Just 99¢ for the first 12 weeks. <a href="http://www.nytimes.com/subscriptions/Multiproduct/lp8X7JK.html?campaignId=47J4R" class="text-link">See NYT Opinion</a></p>
                <p class="icon-corporate">Learn how organizations can save with group access to NYTimes.com and NYTimes apps. <a href="http://www.nytimes.com/subscriptions/Multiproduct/lp4371.html?campaignId=476KW" class="text-link">Learn More</a></p>
                <p class="icon-gift">Give unlimited access to NYTimes.com and NYTimes apps for as low as $30. <a href="http://www.nytimes.com/subscriptions/Multiproduct/lp4021.html?campaignId=3FQ4Y" class="text-link">See Gift Subscriptions</a></p>-->

            </div>
        </div>


    </section>

    <hr class="h_ruler">

    <section id="faq_section">
        <div class="section_title" id="faq_section_title">
        <?= $this->input("faq"); ?></div>

<div id ="accordian" class ="accordian">
  <?php $count = 1;
  while($this->block("faqQuesAns")->loop()) { $count ++; ?>
      <h3>
        <?php echo $this->input('FaqQuest'); ?>
      </h3>
      <div>
        <?php echo $this->wysiwyg('FaqAns'); ?>
      </div>
  
 <?php } ?>
</div>
<h2> 
    <?php if($count > 4) { ?>
    <?= $this->link("viewFAQ"); }?>
</h2>

 </section>
<script>
	document.getElementById('showonhoversubscription').innerHTML = jQuery('#bydefaultshodes').html();
    function hover(description) {
        document.getElementById('showonhoversubscription').innerHTML = description;
        
    }
    function ImageHover(element,subImage) {
           element.setAttribute('src', subImage);
    }
    function ImageUnhover(element,subImage) {
           element.setAttribute('src', subImage);
    }
   // Use the jQuery.noConflict(); on site where the collapsible header does not work
   // Declare a variable for the jQuery.noConflict
   jQuery.noConflict();
  jQuery('.accordian h3').on('click', function(){
     jQuery(this).next('div').slideToggle(200);
     jQuery(this).siblings().next('div').slideUp();
     
     jQuery(this).toggleClass('tactive');
     
     jQuery(this).siblings().removeClass('tactive');
  });    

   
</script>
    <br clear="all">
