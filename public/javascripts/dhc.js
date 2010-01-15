//Highslide stuff

hs.graphicsDir = '/images/highslide/graphics/';
hs.registerOverlay({
  		thumbnailId: null,
  		overlayId: 'controlbar',
  		position: 'top right',
  		hideOnMouseOut: true
});
hs.outlineType = 'rounded-white';
hs.showCredits = false;

//jQuery Stuff

jQuery(document).ready(function() {
  
  // hide flash messages after 2 seconds (not actually animating opacity, just using the delay function built into 'animate' to delay 2 secs before doing slideUp)
  
  $("#flash div").animate({opacity: 1.0}, 2000).slideUp("slow");
  
  // add highslide to all images unless they're already wrapped in a link (to avoid double-highsliding)
  
  $("img").each(function (){
    if ($(this).parent().is("a") != true) {
      //grab the src url from the image tag to use as the href for the wrapping link tag
      var href = $(this).attr("src");
      //url escape that url due to likely spaces and other chars in the path
      var replaced = escape(href);
      //wrap the img tag in a new a tag
      $(this).wrap("<a rel='highslide' class='highslide' href='" + replaced + "' ></a>");
    }
  });
  
  // add expand/contract functionality to p.subhead sections
  
  var link = "<a class='plus' href='#'>[+/-]</a>";
  //hide the next element on the page after any p.subhead and then append the +/- link to the end of each p.subhead
  $("p.subhead").next().hide("slow").end().append(link);
  //now clicking a +/- link should expand the hidden section following it. The link's parent is the p.subhead.
  $("a.plus").click(function (){
    $(this).parent().next().toggle("fast");          
    return false;
  });
	  

  //Ajax loading of subpages (not compatible with Rails version of site as of 6/09. There is overlap with p.subhead expand/contract section above, so take heed if attempting to reimplement.)
  
  // $("a.nav").click(function (){
  //   var dest = $(this).attr("id");
  //   var link = "<a class='plus' href='#'>[+/-]</a>";
  //   $("#right_ > #content").slideUp("fast", function () {
  //     $(this).load("/" + dest + " #right_ > #content", function () {
  //       $(this).slideDown("slow");
  //       $("p.subhead").next().hide("slow").end().append(link);
  //       $("a.plus").click(function (){
  //         $(this).parent().next().toggle("fast");          
  //         return false;
  //       });
  //     });
  //   });
  //   return false;
  // });   
});
