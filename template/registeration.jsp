<html>
<head>
<title>Information</title></head>

<%@ page language = "java" import = "java.sql.*" %>
<body>



<%
HttpSession sess=request.getSession();
try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/event scheduler";
    Connection con=DriverManager.getConnection(url, "root", "root");
 String uname=request.getParameter("name");
    String email=request.getParameter("Email");
    String password=request.getParameter("pwd");
  
String q = "SELECT * FROM registeration WHERE email = ?";
PreparedStatement ps = con.prepareStatement(q);
ps.setString(1, email);
ResultSet r = ps.executeQuery();
if (r.next()) {
    out.println("Email already exists.Please use a different email.");
	%>
	<a href="registeration.html">Registeration Page</a><br> 
<%	
} 

else{


%>



<%

Statement stmt = con.createStatement();
int rs = stmt.executeUpdate("INSERT INTO registeration(username,password,email)VALUES('"+ uname + "','" + password+ "','" + email+ "')");
     if(rs==1){	out.println("Registeration Successful");
	 out.println("<br><a href="Login.html">Login</a>");
	 }
	 
	else{out.println("Registeration not successful");}

stmt.close();
}
		   ps.close();
           con.close();
		   

    }catch(Exception e){

      out.println(e);
    }
 %>

</body>
</html>