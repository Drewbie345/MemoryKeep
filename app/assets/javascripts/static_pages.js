$(document).ready(function(){
  $('#login').click(function(e) {
    $('#signin').lightbox_me({
      centered: true,
      onLoad: function() {
        $('#signin').find('input:first').focus()
      }
    });
    e.preventDefault();
  });

  if ($("#hello").length !== 0) {
    $("#hello").show();
  }

  $("form#sign_in_user").bind("ajax:success", function(e, data, status, xhr) {
    if (data.success) {  
      console.log("this has been triggered");
      $('#hello').show();
      $('#login').hide();
      $('#sign-up').hide();
      $('#close1').trigger('close');
      $('#extra').hide();
      //$('#hello').show();
    } else {
      return alert('failure!');
    }
  });

  $('#sign-up').click(function(e) {
    $('#create_account').lightbox_me({
      centered: true,
      onLoad: function() {
        $('#create_account').find('input:first').focus()
      }
    });
    e.preventDefault();
  });

  $("form#sign_up_user").bind("ajax:success", function(e, data, status, xhr) {
    if (data.success) {
      $('#login').hide();
      $('#sign-up').hide();
      $('#close2').trigger('close');
      $('#extra').hide();
      $('#hello').show(); 
    } else {
      return alert('failure!');
    }
  });

  $('#close1').click(function(e) {
    $('#close1').trigger('close');
  })

  $('#close2').click(function(e) {
    $('#close2').trigger('close');
  })
})