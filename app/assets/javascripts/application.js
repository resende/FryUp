// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery-ui
//= require_tree .


$(function(){

  var original = false;
  $( ".idv-item" ).mousedown(function(){
    original = true; 
    clicked = $(this)
    console.log(clicked)
  });


  $( ".idv-item" ).draggable({ revert: 'invalid', helper: 'clone' });
    
  $(".plate-items").droppable({ 
    accept: ".idv-item",
    drop: function(event, ui) {
      var draggableId = ui.draggable.attr("data-calories");
      var total = parseInt($(".total-calories").text());
      console.log(total)
    
  
     
      // var draggableId = ui.draggable.attr("data-weight");
      var a = ui.draggable.clone(); 
      $(this).append(a);
   
      if(ui.draggable.parent()[0] != 'plate-items') {
        console.log($(this.firstChild).data("calories"))

        total += parseInt(draggableId)
        
        $(".total-calories").text(total);
        $(this.firstChild).data("calories", 0)  

        }
      }
    
  });
}); 

