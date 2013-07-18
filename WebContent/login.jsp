<%@include file="/WEB-INF/menubar.jspf" %>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#button').click(function(){
			event.preventDefault();	
		});
		
		$('#button').click(function() {
		   $('#loading').fadeIn();
	       var name = $('#username').val();
	       var pass = $('#password').val();
	       
	       if(name == "" ||  pass == ""){
	    	   alert('Empty fields are not permitted!');
	    	   $('#loading').hide();
	    	   return;
	       }
	       
	       var data = 'username=' + name + '&password=' + pass;
	       console.log("Username: " + name + " password: " + pass);
			$.ajax({
			  type: "POST",
			  url: $('#login').attr('action'),
			  data: data,
			  dataType : "json",
			  success: function(data){
				  console.log("Response: " + data.Response);
					$('#loading').delay(500).fadeOut();

				  if(data.Response == "Invalid"){
					$('#invalid').fadeIn();
					$('#invalid').delay(1000).fadeOut();
				  }else{
					  //send user to the proper user page
					  window.location =  data.Response;
				  }//else
			  }//success
			});//.ajax
		});
	});
	</script>
	<div id="loading">
		<h1 id="loadMsg">Logging in...</h1>
	</div>
	<div id="invalid">
		<h1 style="size:50px">Invalid Login Credentials!</h1>
		<img src="Images/invalidlogin.png" width="500px">
	</div>
	<form id="login" action="login">
		<div align="center">
		<h1 style="color:white">Login</h1>
		<table>
		<tr>
			<td style="color:white">Username: <input type="text" id="username" value=""></td>
		</tr>
		<tr>
			<td style="color:white">Password: <input type="password" id="password" value=""></td>
		</tr>
		</table>
		<input type="submit" id="button"> 
		</div>
	</form>		
</div>
</body>
</html>