$(document).ready(function(){
  $('a.edit-password').toggle(function(){
    $('tr.new-password').show();
  },
  function() {
    $('tr.new-password').hide();
  }
  );

  $('tr.new-password').hide();
})