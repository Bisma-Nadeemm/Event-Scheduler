<html>
<head>
<title>Add jobs</title>
<style>	
table {
	
	border-collapse: collapse;
	
	}

th,
td {
	padding:15px; 
	color:black;
}

th {
	text-align: left;
}

bb
</style>	
<script language="JavaScript" type="text/javaScript">

function validate()
	
{	var i=document.add.id.value;

	if ( document.add.title.value == "" )
	    {
			alert("Title cannot be empty");			
			return false;
	    }

	if(document.add.location.value == "" )	
	   {
			alert("location cannot be empty");
			return false;
	   }
if(document.add.category.value == "" )	
	   {
			alert("Please select a category");
			return false;
	   }
if(document.add.company.value == "" )	
	   {
			alert("Please select a company");
			return false;
	   }
if(document.add.d.value == "" )	
	   {
			alert("Please enter description");
			return false;
	   }

return true;

}


</script>

</head>
<body>
<%
HttpSession sess=request.getSession(false);
int type = (int)sess.getAttribute("type");
if (type==1)
{
%>
<h1 style="text-align: center">
ADD AND MANAGE EVENTS
</h1>
<br/>
	<form action="AddEvents" name="add" method="post" onsubmit="return validate();" style="background:#add8e6;">
<table>
        <tr><td style="font-size:20px"><b style="margin-left:110px">Title:</td> 
<td><input type="text" name="title" placeholder="title" style="width:230px;height:30px;" required ></td></tr>

<tr><td style="font-size:20px"><b style="margin-left:110px">Description:
<td><textarea name="d" rows="7" cols="50" value="description" placeholder="description" style="width:230px;height:30px" required>
</textarea></td></tr>

<tr><td style="font-size:20px"><b style="margin-left:110px">Date:</td>
<td> <input type="date" id="date" name="date" required></td></tr>
<tr><td style="font-size:20px"><b style="margin-left:110px">Time:
<td><input type="time" value="time" placeholder="time" style="width:230px;height:30px" required>
</textarea></td></tr>
</table>
<br>
<input type="submit" value="Add" style="width:80px;height:35px;text-align: center;background-color:dodgerblue;color:white;margin-left: 215px;border-color:dodgerblue" >

</form> 


<form method="post" action="Logout">
<input type="submit" value="Logout">
</form><br>
	

</body>
</html>
<%
}
else 
	out.println("invalid page");
%>