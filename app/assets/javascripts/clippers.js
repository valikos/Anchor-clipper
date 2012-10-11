$(document).ready(function(){
  var myForm = $("#new_clipper")
  var options = {
    url: myForm.attr('action') + '.json',
    dataType: 'json',
    success: function(res, status, xhr){
      console.log(res, status, xhr)
      if(status === "success"){
        if(res.ac > 0){
          myForm.clearForm()
          $('#clipper-clip').html(res.clipper.clip);
          $('#clipper-box').fadeIn();
        }
        if(res.ac < 0){
          console.log('Error')
        }
      }
    }
  }
  $("#new_clipper").ajaxForm(options)



  $('#on').click(function(e){
    $('#clipper-box').fadeIn();
  });
  $('#off').click(function(e){
    $('#clipper-box').fadeOut();
  });
});