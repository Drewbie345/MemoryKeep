$(document).ready(function(){

  var token = $("meta[name='csrf-token']").attr('content');

  $('#login').click(function(e) {
    $('#signin').lightbox_me({
      centered: true,
      onLoad: function() {
        $('#signin').find('input:first').focus()
      }
    });
    e.preventDefault();
  });

  $("form#sign_in_user").bind("ajax:success", function(e, data, status, xhr) {
    if (data.success) {  
      $("meta[name='csrf-token']").attr('content', data.csrfToken);
      $("#helloName").text(data.user.first_name);
      $("#hello").show();
      $('#login').hide();
      $('#sign-up').hide();
      $('#close1').trigger('close');
      $('#extra').hide();
    } else {
      for (var issue in data.errors) {
        $('.error').append(data.errors[issue] + '<br />').show();
      }
    }
  });

  $('#need-account').click(function() {
    $('#close1').trigger('close');
    $('#create_account').lightbox_me({
      centered: true,
      onLoad: function() {
        $('#create_account').find('input:first').focus()
      }
    });
    e.preventDefault();
  })

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
      $('#hello').show();
      $('#login').hide();
      $('#sign-up').hide();
      $('#close2').trigger('close');
      $('#extra').hide();
    } else {
      for (var issue in data.errors) {
        $('.error').append(issue + ": " + data.errors[issue] + '<br />').show();
      }
    }
  });

  $('#close1').click(function(e) {
    $('#close1').trigger('close');
  })

  $('#close2').click(function(e) {
    $('#close2').trigger('close');
  })
})