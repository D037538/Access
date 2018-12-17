$(document).ready(function() {
            $(document).on('click', '#insert', function() {
         	var firstName = document.getElementById("firstname").value;
	     	var lastName =  document.getElementById("lastname").value;
	    	var userName =  document.getElementById("username").value;
	    	var passWord =  document.getElementById("password").value;
	

           $.ajax({
                  type: 'post',
                  url: 'inserregistration',
                  data:{"r_firstname":firstName,"r_lastname":lastName,"r_username":userName,"r_password":passWord
                       },
                       success: function(response){
                           alert("Sign Up Successfully");           
                       },
                       error: function(e){
                        alert('Error: ' + e);
                      }
              });
         });
	       
});


 