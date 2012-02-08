function get_film(){
  
}

$(document).ready(function(){
  
  $("#tip_button").live("click", (function()
   {
     
     var film = $(this).attr("data_title") 
     alert(film);
      window.location.reload();
   }));
   
   
   
  
});  
