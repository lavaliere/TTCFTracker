<%@include file="/WEB-INF/menubar.jspf" %>
	<form id="enter" action="Process" method="POST">
		<input type="hidden" name="action" value="enter">
		<div align="center">
		<h1 style="color:white">Admin - WOD Data Entry</h1>
		<table id="entry">
		<tr>
			<td style="color:white">WOD Name: <input type="text" name="WOD"></td>
			<td style="color:white">Date: <input type="text" name="date"></td>
		</tr>
		<tr>
			<td style="color:white">Type: <input type="text" name="type" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">Rounds: <input type="text" name="rounds" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.1 --%>
		<tr>
			<td style="color:white">Exercise: <input type="text" name="ex_1" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_1" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_1" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.2 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_2" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_2" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_2" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.3 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_3" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_3" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_3" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.4 --%>
		<td style="color:white">Exercise: <input type="text" name="ex_4" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_4" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_4" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.5 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_5" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_5" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_5" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.6 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_6" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_6" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_6" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.7 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_7" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_7" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_7" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.8 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_8" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_8" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_8" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.9 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_9" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_9" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_9" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		<%-- Ex.10 --%>
		<tr style="display: none">
			<td style="color:white">Exercise: <input type="text" name="ex_10" disabled></td> <%-- make this a dropdown --%>
			<td style="color:white">RX'd Reps: <input type="text" name="reps_10" disabled></td> <%-- auto populate if WOD name exists --%>
			<td style="color:white">RX'd Weight: <input type="text" name="lb_10" disabled></td> <%-- auto populate if WOD name exists --%>
		</tr>
		</table>
		<input type="submit" value="Submit" onclick="login()"> <%-- Write this later --%>
		<input type="button" value="Cancel" onclick="cancel()"> <%-- Write this later --%>
		</div>
	</form>		
</div>
</body>
</html>