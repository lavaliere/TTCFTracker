<%@include file="/WEB-INF/menubar.jspf" %>
	<h1 id="username">User - NA</h1> <%-- this is where we'll load the name of the user clicked from the URL --%>
	<div id="profile" style="display:inline-block">
		<img src="Images/notfound.jpg" width="295px"></img>
	</div>
	<table id="entry" style="display:inline-block">
	<tr>
		<td><h2>Date Joined -</h2></td>
		<td>NA</td>
	</tr>
	<tr>
		<td><h2>Status -</h2></td>
		<td>NA</td>
	</tr>
	<tr>
		<td><h2>Last WOD Logged - </h2></td>
		<td>NA</td>
	</tr>	
	</table>	
	<h1>Stats</h1>
	<table id="entry">
	<%-- load this stuff dynamically depending on how much data they've entered --%>
	<tr>
		<td><h2>None available</h2></td>
		<td></td>
	</tr>
	
	</table>
	</div>	
</body>
</html>