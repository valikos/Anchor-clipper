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
        }
        if(res.ac < 0){
          console.log('Error')
        }
      }
    }
  }
  $("#new_clipper").ajaxForm(options)
});