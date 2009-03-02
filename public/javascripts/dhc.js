jQuery(document).ready(function() {
  
  $("img").each(function (){
    if ($(this).parent().is("a") != true) {
      var href = $(this).attr("src");
      $(this).wrap("<a rel='highslide' class='highslide' href='" + href + "' ></a>");
    }
  });

  // $("#loading").hide().load("loading.html");
    // 
    // $('#loading').ajaxStart(function() {
    //   $(this).show();
    // }).ajaxStop(function() {
    //   $(this).hide();
    //   $("img").each(function (){
    //     if ($(this).parent().is("a") != true) {
    //       var href = $(this).attr("src");
    //       $(this).wrap("<a rel='highslide' class='highslide' href='" + href + "' ></a>");
    //     }
    //   });
    // });
    
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
