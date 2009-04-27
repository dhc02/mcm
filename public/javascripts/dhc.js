//Highslide stuff
hs.graphicsDir = '/images/highslide/graphics/';
hs.registerOverlay({
  		thumbnailId: null,
  		overlayId: 'controlbar',
  		position: 'top right',
  		hideOnMouseOut: true
});
hs.outlineType = 'rounded-white';
// Tell Highslide to use the thumbnail's title for captions
hs.captionEval = 'this.thumb.title';
hs.showCredits = false;


jQuery(document).ready(function() {
  
  // hide flash messages after 2 seconds
  $("#flash div").animate({opacity: 1.0}, 2000).slideUp("slow");
  
  // add highslide to all images that aren't already wrapped in a link (to avoid double-highsliding)
  $("img").each(function (){
    if ($(this).parent().is("a") != true) {
      var href = $(this).attr("src");
      var replaced = escape(href);
      $(this).wrap("<a rel='highslide' class='highslide' href='" + replaced + "' ></a>");
    }
  });
  
  // add expand/contract functionality to p.subhead sections
  var link = "<a class='plus' href='#'>[+/-]</a>";
  $("p.subhead").next().hide("slow").end().append(link);
  $("a.plus").click(function (){
    $(this).parent().next().toggle("fast");          
    return false;
  });
	  

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
