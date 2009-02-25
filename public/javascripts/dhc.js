jQuery(document).ready(function() {
    
  $("#loading").hide().load("loading.html");
  
  $('#loading').ajaxStart(function() {
    $(this).show();
  }).ajaxStop(function() {
    $(this).hide();
  });
  
  $("a.nav").click(function (){
    var dest = $(this).attr("href");
    var link = "<a class='plus' href='#'>[+/-]</a>";
    $("#right_ > #content").slideUp("fast", function () {
      $(this).load(dest + " #right_ > #content", function () {
        $(this).slideDown("slow");
        $("p.subhead").next().hide("slow").end().append(link);
        $("a.plus").click(function (){
          $(this).parent().next().toggle("fast");          
          return false;
        });
      });
    });
    return false;
  });   
});
