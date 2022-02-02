$(document).ready(function($) {
  $("#slider-idade").slider({
    range: "min",
    value: 18,
    min: 18,
    max: 100,
    step: 1,
    animate: 200,
    slide: function(event, ui) {
          $("#valor-idade").val(ui.value);
          }
      });
  $("#valor-idade").val($("#slider-idade").slider("value"));
    
    $("#valor-idade").change(function(){
        $("#slider-idade").slider("value", this.value)
    });
});


// Enable Input Clear Field

$(function($){
$.fn.defaultValue = function(){ 
         
         return this.each(function(){ 
            var default_value = $(this).val(); 
            var $this = $(this);
    
            $this.focus( function() {

                if ($this.val() == default_value) $(this).val("");
                });
            $this.blur( function() {
                if ($this.val().length == 0){
                    $this.val(default_value); 
                }
            })            
         }); 
         }; 
$('input[type=text], textarea, input[type=email], input[type=tel], input[type=number], input[type=password]').defaultValue(); 
 }); 