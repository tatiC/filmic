$(document).ready(function()
{

  $("#add_tip").click(function()
  {                          
    var amountOfHelpForms = $(".help_field").length; 
    var helpInputId = "help_films_attributes_" + amountOfHelpForms + "_film";  
    var helpInputName = "film[helps_attributes][" + amountOfHelpForms + "][tip]";

    if(amountOfHelpForms == 0) 
      $(this).parent().after('<div class="help_field" style="text-align:left"></div>');
    else
      $(".help_field").last().after('<div class="help_field" style="text-align:left"></div>');

    $(".help_field").last().append('<label for="' + helpInputId + '"><br />Tip:</label>');
    $(".help_field").last().append('<input type="tip" name="' + helpInputName + '">');
    $(".help_field").last().append('<button type="button" class="remove_help">Remover</button>');

    return false;  
  });

  $(".remove_help").live("click", function()
  {
    var editingFilm = $("form").attr("data-new-film") == "false";

    if(editingFilm)
    {
      var helpInputName = $(this).parent().children("input").attr("name");
      var hiddenDestroyInputName = helpInputName.replace("tip", "_destroy");

      $(this).parent().append('<input type="hidden" name="' + hiddenDestroyInputName + '" value="true" >');
    }

    $(this).parent().hide();

    return false; 
  });
  
});         