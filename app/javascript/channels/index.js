
const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


$(document).ready(function() {

  $("#submit_btn").click(function(event) {
    event.preventDefault();
    $("#form_add").submit();
  });

  $("#add_form").hide();

  $("#minus").click(function(){
    $("#add_form").hide();
  });

  $("#plus").click(function(){
    $("#add_form").show();
  });


});