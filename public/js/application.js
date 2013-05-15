$(document).ready(function() {
  $('form').on('submit', function(event) {
    event.preventDefault();
    $.ajax({
      type: 'POST',
      url: '/',
      data: $(this).serialize()
    }).done(function(response){
      // debugger
      // alert(response)
      for(i=0; i < response.length; i++) { 
        $('ul').append("<li>"+response[i].word.word+"</li>") };
      $('ul').parent().addClass("results");
      $('.results').hide();
         $('.results').slideToggle();
      });
    });
});

              
