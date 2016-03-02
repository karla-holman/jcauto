//= require_self

/**
This is a collection of javascript functions and whatnot
under the spree namespace that do stuff we find helpful.
Hopefully, this will evolve into a propper class.
**/

$(document).ready(function() {

  // Replace ▼ and ▲ in sort_link with nicer icons
  $(".sort_link").each(function(){
    // Remove the &nbsp; in the text
    var sort_link_text = $(this).text().replace('\xA0', '');

    if(sort_link_text.indexOf("▼") >= 0){
      $(this).text(sort_link_text.replace("▼",""));
      $(this).append('<span class="icon icon-chevron-down"></span>');
    } else if(sort_link_text.indexOf("▲") >= 0){
      $(this).text(sort_link_text.replace("▲",""));
      $(this).append('<span class="icon icon-chevron-up"></span>');
    }
  });

  
  // Make flash messages dissapear
  setTimeout('$(".alert-auto-dissapear").slideUp()', 5000);

});

show_flash = function(type, message) {
  var flash_div = $('.flash.' + type);
  if (flash_div.length == 0) {
    flash_div = $('<div class="alert alert-' + type + '" />');
    $('#content').prepend(flash_div);
  }
  flash_div.html(message).show().delay(5000).slideUp();
}







  
