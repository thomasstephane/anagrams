$(document).ready(function() {
  $('#anagram').submit(function(even)) {
    event.preventDefault();
    $.ajax({
      type = 'POST'
      url = '/'
      data = $('#anagram'),
      success: function(response){
        $('#anagram').text(($(response).find('#anagram').text()));
      }
    })
  }
  });
