/*
common.js
some general functions..
track some vars .. 
 is mobile? touch ? screen width? window width .. need? zoom out? 
update copyright... 
*/ 


$(document).ready(function() {

 //common selectors ... 

 //needs value of cid appended to CMP=
$('a.hd-link,.sub-HD').each(function() {
    var href = $(this).attr("href"); 
    href += getParameterByName('campaignId'); 
    $(this).attr("href",href); 
}); 


});

//common functions // 

function getParameterByName(name)
{
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(window.location.search);
    if(results == null)
        return "";
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "));
}

function passCID() { //legacy misnamed ..  .. this passes all params onto an href
    var campaignId = getParameterByName('campaignId');
    if(campaignId!='') {
        return "&ref=LP&campaignId="+campaignId;
    } else {
        return '';
    }
}

function passCMP() {  //this just gives the CID .. 
    var campaignId = getParameterByName('campaignId');
    if(campaignId!='') {
        return campaignId;
    } else {
        return '';
    }
}


function setCookie(name, value, expires, domain, secure,path) {
                var expiresDate;

                if (expires && (expires < 1000)) {
                    expiresDate = new Date();
                    expiresDate.setTime(expiresDate.getTime() + expires * 24 * 60 * 60 * 1000);
                }

                return document.cookie = name + "=" + encodeURIComponent(value) +
                    ((path) ? ";path=" + path : ";path=/") +
                    ((expires) ? ";expires=" + expiresDate.toUTCString() : "") +
                    ((domain) ? ";domain=" + domain : ";domain=.nytimes.com") +
                    ((secure) ? ";secure" : "");
            }


function getCookie(c_name)
{
    var cookval = '';
    var i,x,y,ARRcookies=document.cookie.split(";");
    for (i=0;i<ARRcookies.length;i++)
    {
        x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));
        y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);
        x=x.replace(/^\s+|\s+$/g,"");
        if (x==c_name)
        {
            cookval = unescape(y);
        }
    }
    return cookval;
}

function checkZip(frm) {

    var re = /^[0-9]{5}$/g;
    if(frm._4_zip.value == "" || frm._4_zip.value.match(re) == null)
    {
        alert("Please enter a valid zip code");
        frm._4_zip.focus();
        return false;
    }
    return true;
}

function prepareLoginRedirectLink() {
    var urlStr = window.location.href.split("?"),
        queryStr = urlStr[1],
        returnUrl = urlStr[0];
    if (queryStr) {
        queryStr = encodeURIComponent(queryStr);
        queryStr = queryStr.replace(/%/g, 'Q');
        returnUrl += "&OQ=" + queryStr;
    }
    return returnUrl;
};




function browserDetection(wrapper){
    var div = $('body').find(wrapper); 
    var wrapperWidth = div.width(); 
    console.log(wrapperWidth)
    var isTouch = 0;
    var isTablet= 0;
    var windowWidth= $(window).width();
    wrapperWidth += 30; 
    var zoomOutPerc = windowWidth / wrapperWidth ;
    var maxPhoneSize = 670;


    //look for device
    if(( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) ){
        isTouch = 1;
        if(windowWidth > maxPhoneSize){// check if it is bigger than a phone screen 

            if(wrapperWidth > windowWidth){  // if page overflow
                resizeForTablet(div,zoomOutPerc);
            }
        }

    }else{
        var isTouch = 0;
        var isTablet= 0; 

    }

}//end of browserDetection


function resizeForTablet(element,zoomOutPerc){
     //alert('will zoom the element by '+zoomOutPerc)
     //element.css({zoom: zoomOutPerc, -moz-transform: 'scale('+zoomOutPerc+')', -moz-transform-origin : '0 0', '-o-transform' : ' scale('+zoomOutPerc+')', '-o-transform-origin' : '0 0', 'transform' : 'scale('+zoomOutPerc+')', 'transform-origin' : '0 0', 'border-left' : 'none', 'border-right' : 'none'});
     element.css({zoom:zoomOutPerc}); 
    //console.log("resizing has happened"); 
    //remove the border of the container because they take space and over flows of the screen by 1 or 2 pixels
    $('.container').css({'border-left' : 'none', 'border-right' : 'none'});
    
}// end of resizeForTablet



function getCurrentYear(){// get the current year and place it in the copy right link

    var currentYear = (new Date).getFullYear();

    $('.copyrightYear,.copyYear').html(currentYear);
    console.log('year updated to ' + currentYear);

}//end of getYear


function setLoginLink(){

  logincook = getCookie('nyt-d'); 
  if(logincook=='' || logincook==null) {
    
      //set the return url for Login .. 
      var loginLink = 'https://myaccount.nytimes.com/auth/login?URI='+prepareLoginRedirectLink();
      if(location.hostname.indexOf('stg')>-1) {
        loginLink = 'https://myaccount.stg.nytimes.com/auth/login?URI='+prepareLoginRedirectLink();
      }
     $('.login').attr('href',loginLink); //login_dig is the actual <a> tag .. 
     $('.login').addClass('loginShow'); // show the <li> that contains 'already sub..' login_dig
     $('#link_login').css('display','inline').show(); // show the <li> that contains 'already sub..' login_dig
  } else {
      // user is logged in add generic class to body
      $('html').addClass('user-logged-in');
  }

}//end of loginLink



