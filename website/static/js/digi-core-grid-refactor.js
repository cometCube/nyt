 /*** Created by Frederic.Gurnot on 10/29/14. */

/*
 edited 1/11/15 by Frederic.Gurnot - Common Checkout URL (new order form on mobile and desktop)
 edited 1/20/15 by M.P.H. make checkout urls dependent on server .. (for staging )
edited 12/29/14 M.P.H. re dynamic copy year
*/ 

$( document ).ready(function() {
    //var url_checkout  = 'https://myaccount.nytimes.com/get-started?OC=';
    //var url_checkout_mobile = 'https://myaccount.nytimes.com/get-started?OC=';
    var url_loginLink = 'https://myaccount.nytimes.com/auth/login?URI=';
    if(location.hostname.indexOf('stg')>-1) {
      //var url_checkout  = 'https://myaccount.nytimes.com/get-started?OC=';
      //var url_checkout_mobile = 'https://myaccount.nytimes.com/get-started?OC=';
      var url_loginLink = 'https://myaccount.stg.nytimes.com/auth/login?URI=';
    }

    var params = unescape(window.location.search.replace('?','&').replace(/OC=\d+&/,''));

    logincook = getCookie('nyt-d');
    if(logincook === '' || logincook === null) {
        //set the return url for Login ..to nytimes homepage
        url_loginLink+=prepareLoginRedirectLink2("http://www.nytimes.com/");
        $('#login_dig').attr('href', url_loginLink); //login_dig is the actual <a> tag ..

    } else {
        // user is logged in
        $("body").addClass("user-logged-in");
    }

    function prepareLoginRedirectLink2(url) {
        var redirectURL = url || "http://www.nytimes.com/";
        var urlStr = window.location.href.split("?"),
            queryStr = urlStr[1],
            returnUrl = redirectURL;
        if (queryStr) {
            queryStr = encodeURIComponent(queryStr);
            queryStr = queryStr.replace(/%/g, 'Q');
            returnUrl += "&OQ=" + queryStr;
        }
        return returnUrl;
    }


    //    OC - Not needed common order form
    /*

    var appendOCToHref = function(codes) {
        var i, href;
        if (typeof codes !== 'object' || typeof codes.length === 'undefined') {
            throw new Error('Parameter should be an array');
        }
        for (i = 0; i < codes.length; i++) {
            href = $(codes[i].selector).attr('href') + codes[i].OC;
            $(codes[i].selector).attr('href', href);
        }
    };

    if (WURFL.form_factor === 'Smartphone') {
        var cta = $('.button-digi');
        var OC = cta.data('oc');
        cta.attr('href',url_checkout_mobile);
        appendOCToHref([{
            selector: '.button-digi',
            OC: OC }]);
    }



    if($('.moflow').css('display')==='none') {
        $(".selectable").click(function(event) {
            $(".selectable").not(this).removeClass("selected");
            $(this).addClass("selected");
            if (event.target.type !== 'radio') {
                $(':radio', this).trigger('click');
            }
        });
    }

    //    Mobile OC
    $('.btn_ordereach').click(function(e) {
        e.stopPropagation();
        var OC = $(this).parent().parent().data('oc');
        url = url_checkout_mobile + OC + params;

        setTimeout(function () {
            window.location.href = url;
        }, 0);
    });
    */


    //  See Details Mobile script

    /* change color of 'see details link instead of changing color' */
    $('.link_details').click(function () {
        $(this).find(".details_hide").toggle()
            .end()
            .find(".details_see").toggle();

        var bundleId = (this.id).substr(this.id.length - 3);
        console.log("bundleId : " +bundleId);

        $(".detail_mobile_" + bundleId).toggleClass('show_detail_mobile');

    });


    //   Icons Hover script

    // Find the defaulted active Icon
    var activeIcon = $('.icons_strip .active');
    var currentIcon = activeIcon.attr('id').slice(5);

    function switchIcon(e) {
        //if mobile prevent href clickthrough
        if(WURFL.form_factor === 'Tablet') {
            e.preventDefault();
        }
        //get icon id number
        var iconIndex = e.currentTarget.id.slice(5);
        if (iconIndex !== currentIcon) {
            // switch off current
            $('.icon-' + currentIcon).toggleClass('active');

            // switch new icon on
            currentIcon = iconIndex;
            $('.icon-' + currentIcon).toggleClass('active');
        }
    }





    // **********     Detect tablet devices: hide bundle A (Smartphone) and disable hover on icons ************


    if (WURFL.form_factor === 'Tablet') {
        // hide smartphone
        $('#container').addClass('form_factor-tablet');
        // logic for touch device
        $('.icon').click(switchIcon);
        $('.text-link').addClass('showing');
    } else if (WURFL.form_factor === 'Smartphone') {
        //if mobile remove active icon styling
        activeIcon.toggleClass('active');
    } else {
        // logic for non touch device
        $('.icon').hover(switchIcon);
    }



    //   FAQ Section script

    $('#faq_section h2').hover(function() {
        $(this).addClass("hovered");
    }, function() {
        $(this).removeClass("hovered");
    })
        .click(function() {
            $(this).next('.answer').slideToggle(200);
            $(this).toggleClass("expanded");

        });

    // copyright year for footer
    var date = new Date();// get the date
    $('.copyYear').html(date.getFullYear()); // plug it in the span of class copyYear, see 5558 for example

});






