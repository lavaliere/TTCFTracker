<%@include file="/WEB-INF/menubar.jspf" %>
<%@page import="src.objects.Wod" %>

<script type="text/javascript">
	$(document).ready(function(){
		$('#date').click(function(){
			var wod = $('WOD').val();
			var date = $('date').val();
			alert('Date was selected!');
		
			//Once date is filled, use AJAX to fill rest
			if( wod != "" && date != "" || date != ""){
				var data = "Name=" + wod + "&Date=" + date;
				$.ajax({
				  type: "POST",
				  url: $('#enter').attr('action'),
				  data: data,
				  dataType : "json",
				  success: function(data){
						$('#loading').fadeOut();

					  if(data.Response == "Invalid"){
						  alert('Login failed! Please try again.');
					  }else{
						  //parse JSON and fill fields/enable fields
						  $('#WOD').val(data.Name);
						  $('#date').val(data.Date);
						  $('#type').val(data.Type);
						  $('#rounds').val(data.Rounds);
						  $('#WodID').val(data.WODID);

						  for(var i = 1; i < 11; i++){
							  switch(i){
		        				case 1:
		        					$('#' + "Ex" + i + "ID").val(data.Ex1ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex1Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex1RX);
									break;
			        			case 2:
			        				$('#' + "Ex" + i + "ID").val(data.Ex2ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex2Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex2RX);
									break;
			        			case 3:
			        				$('#' + "Ex" + i + "ID").val(data.Ex3ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex3Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex3RX);
									break;
			        			case 4:
			        				$('#' + "Ex" + i + "ID").val(data.Ex4ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex4Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex4RX);
									break;
			        			case 5:
			        				$('#' + "Ex" + i + "ID").val(data.Ex5ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex5Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex5RX);
									break;
			        			case 6:
			        				$('#' + "Ex" + i + "ID").val(data.Ex6ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex6Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex6RX);
									break;
			        			case 7:
			        				$('#' + "Ex" + i + "ID").val(data.Ex7ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex7Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex7RX);
									break;
			        			case 8:
			        				$('#' + "Ex" + i + "ID").val(data.Ex8ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex8Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex8RX);
									break;
			        			case 9:
			        				$('#' + "Ex" + i + "ID").val(data.Ex9ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex9Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex9RX);
									break;
			        			case 10:
			        				$('#' + "Ex" + i + "ID").val(data.Ex10ID);
			 						$('#' + "Ex" + i + "Reps").val(data.Ex10Reps);
			 						$('#' +  "Ex" + i + "RX").val(data.Ex10RX);
									break;
		        			}//switch
						  }//for
						  
						  $('*').attr('disabled', false);

					  }//else
				  }//success
				});//.ajax
			};	
		});
		
		
		//On submit		
		$('#button').click(function() {
			event.preventDefault();	
			$('#action').val("save");
			$('#loading').fadeIn();
	       if(wod == "" ||  date == ""){
	    	   alert('Empty are not permitted!');
	    	   $('#loading').hide();
				$('#action').val("userfill");
	    	   return;
	       }
	       
	       var data = "";
	       
	       //Write data dynamically depending on the hidden field's count
	       
	       $.ajax({
			  type: "POST",
			  url: $('#enter').attr('action'),
			  data: data,
			  dataType : "json",
			  success: function(data){
				  console.log("Response: " + data.Response);
					$('#loading').fadeOut();

				  if(data.Response == "failed"){
					  alert('Save failed! Please try again.');
					  $('#action').val("userfill");

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
		<h1 id="loadMsg">Saving...</h1>
	</div>
	<form id="enter" action="Process" method="POST"> 
		<input type="hidden" id="action" value="userfill">
		<input type="hidden" id="WodID" value="">
		
		<div align="center">
		<h1 style="color:white">User - WOD Data Entry</h1>
		<table id="entry">
		<tr>
			<td style="color:white">WOD Name: <input type="text" name="WOD"></td>
			<td style="color:white">Date:
				<%=Wod.generateSelect().toString() %>
			</td>
		</tr> 
		<tr>
			<td style="color:white">Type: <input type="text" name="type" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Rounds: <input type="text" name="rounds" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.1 --%>
		<tr>
			<td style="color:white">Exercise: <input type="text" name="ex_1" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_1" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_1" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.2 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_2" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_2" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_2" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.3 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_3" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_3" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_3" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.4 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_4" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_4" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_4" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.5 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_5" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_5" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_5" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.6 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_6" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_6" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_6" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.7 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_7" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_7" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_7" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.8 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_8" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_8" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_8" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.9 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_9" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_9" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_9" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.10 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_10" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Actual Reps: <input type="text" name="reps_10" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">Actual Weight: <input type="text" name="lb_10" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		</table>
		<input id="button" type="submit" value="Submit"> 
		</div>
	</form>		
</div>
</body>
</html>