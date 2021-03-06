<section id="footer-holder">
        <img width="152" height="23" title="The New York Times" alt="The New York Times" id="footer-logo" src="img/logo_nyt.svg" class="moflow">
        <ul id="footer_content">
           <!--  <li><a class="bordy" id="copyright_ft" target="_blank" href="http://www.nytimes.com/content/help/rights/copyright/copyright-notice.html"><span class="desktop">Copyright</span><span class="moflow">&copy;</span>&nbsp;<span class="copyYear">2014</span></a></li>
            <li><a class="bordy" target="_blank" href="http://www.nytco.com/">The New York Times Company</a></li>
            <li><a class="bordy" target="_blank" href="http://www.nytimes.com/privacy">Privacy Policy</a></li>
            <li><a class="bordy" target="_blank" href="http://www.nytimes.com/content/help/contact/directory.html">Contact
                Us</a></li>
            <li><a class="" target="_blank" href="https://myaccount.nytimes.com/membercenter/feedback.html">Feedback</a>
            </li>
            <li id="link_help_footer"><a target="_blank" id="help_ft" href="http://www.nytimes.com/membercenter/sitehelp.html">Help</a></li>
         -->

<?php				
                    $rootDoc = Document::getById(16);
                    $childDocs = $rootDoc->getChilds();
                    if (count($childDocs) > 0) {
                        foreach ($childDocs as $doc) {
                            if (! $doc->getPublished()) continue;
                            if ($doc->getType() != "page" && $doc->getType() != "link") continue;
                            
                            if($doc->getType() == "page"){                                                                
                                if (Site::isSiteRequest()) {
                                    $loc = $doc->getFullPath();
                                } else {
                                    $loc = $doc->getRealFullpath();
                                }
                            }                                
                            elseif($doc->getType() == "link"){                                    
                                $loc = $doc->getLink();
                            }
                            ?>
                               <li><a class="bordy" href="<?= $loc ?>">
                                    <?= $doc->getName() ?>
                                </a></li>
                            <?php
                        }
                    }
                    ?>		


         </ul>

    </section>
    </div>
   