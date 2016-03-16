//= require jquery-ui/sortable
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

  // Fix sortable helper
  var fixHelper = function(e, ui) {
      ui.children().each(function() {
          $(this).width($(this).width());
      });
      return ui;
  };

  // Handle sortable tables
  $('table.sortable').ready(function(){
    var td_count = $(this).find('tbody tr:first-child td').length
    $('table.sortable tbody').sortable(
      {
        handle: '.handle',
        helper: fixHelper,
        placeholder: 'ui-sortable-placeholder',
        update: function(event, ui) {
          $("#progress").show();
          positions = {};
          $.each($('table.sortable tbody tr'), function(position, obj){
            reg = /(\w+_?)+_(\d+)/;
            parts = reg.exec($(obj).prop('id'));
            if (parts) {
              positions['positions['+parts[2]+']'] = position;
            }
          });
          $.ajax({
            type: 'POST',
            dataType: 'script',
            url: $(ui.item).closest("table.sortable").data("sortable-link"),
            data: positions,
            success: function(data){ $("#progress").hide(); }
          });
        },
        start: function (event, ui) {
          // Set correct height for placehoder (from dragged tr)
          ui.placeholder.height(ui.item.height())
          // Fix placeholder content to make it correct width
          ui.placeholder.html("<td colspan='"+(td_count-1)+"'></td><td class='actions'></td>")
        },
        stop: function (event, ui) {
          // Fix odd/even classes after reorder
          $("table.sortable tr:even").removeClass("odd even").addClass("even");
          $("table.sortable tr:odd").removeClass("odd even").addClass("odd");
        }

      });
  });

});

$('body').on('click', 'a.spree_remove_fields', function() {
  el = $(this);
  el.prev("input[type=hidden]").val("1");
  el.closest(".fields").hide();
  if (el.prop("href").substr(-1) == '#') {
    el.parents("tr").fadeOut('hide');
  }else if (el.prop("href")) {
    $.ajax({
      type: 'POST',
      url: el.prop("href"),
      data: {
        _method: 'delete',
        authenticity_token: AUTH_TOKEN
      },
      success: function(response) {
        el.parents("tr").fadeOut('hide');
      },
      error: function(response, textStatus, errorThrown) {
        show_flash('error', response.responseText);
      }

    })
  }
  return false;
});

show_flash = function(type, message) {
  var flash_div = $('.flash.' + type);
  if (flash_div.length == 0) {
    flash_div = $('<div class="alert alert-' + type + '" />');
    $('#content').prepend(flash_div);
  }
  flash_div.html(message).show().delay(5000).slideUp();
}







  
