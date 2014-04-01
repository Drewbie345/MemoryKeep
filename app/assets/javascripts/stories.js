// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){  
  var reco = new WebSpeechRecognition();
  reco.statusText('status');
  reco.statusImage('microphone');
  reco.finalResults('final_span');
  reco.interimResults('interim_span');
  reco.continuous = true;

  reco.onEnd = function() {
    reco.final_transcript;
  };

  $('#record').click(function(){
    reco.toggleStartStop();
    $("#story_body").val($("#results").text().trim())
  })

  $('#btn').click(function(){

    if (reco.inProgress()) {
      reco.stop();
    } 
    // var text = reco.final_transcript;

    reco.onState('complete');
    $('.speech').remove();

  })

  $('#share-story').click(function(e){

    $('#clean-story').show();
    $('#recording').hide();
    e.preventDefault();
  })

});