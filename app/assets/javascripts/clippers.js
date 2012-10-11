$(document).ready(function(){
  var myForm = $("#new_clipper")
  var options = {
    url: myForm.attr('action') + '.json',
    dataType: 'json',
    success: function(res, status, xhr){
      if(status === "success"){
        if(res.ac > 0){
          myForm.clearForm()
          $('#clipper-clip').html(res.clipper.clip);
          $('#clipper-box').fadeIn();
        }
        if(res.ac < 0){
          $('#error-box').fadeIn(300, function(){
            $('#error-box').delay(2000).fadeOut(300);
          });
        }
      }
    }
  }
  $("#new_clipper").ajaxForm(options)
  $('#cliper-box-close').click(function(e){
    $('#clipper-box').fadeOut();
  });
});