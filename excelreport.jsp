<%@ page import="java.sql.*" %>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   </head>
   <body>
	  <%
	  response.setContentType("application/vnd.ms-excel"); 
	  response.setHeader("Content-Disposition","inline; filename="+ "enrollment.xls");
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SEMS?serverTimezone=UTC", "root", "System12359r");
      Statement st = con.createStatement();
	  String fname=(String)session.getAttribute("fname");
	  String lname=(String)session.getAttribute("lname");
	  String email=(String)session.getAttribute("email");
	  String dob=(String)session.getAttribute("dob");
	  String dept=(String)session.getAttribute("dept");
	  String phone=(String)session.getAttribute("phone");
	  String reg=(String)session.getAttribute("reg");
	  %>
	  <center>
      <table cellpadding="1"  cellspacing="1" border="1">
         <tr>
            <td>First Name</td>
			<td><%= fname %></td>
		</tr>
		<tr>
            <td>Last Name</td>
			<td><%= lname %></td>
		</tr>
		<tr>
            <td>Email</td>
			<td><%= email %></td>
		</tr>
		<tr>
			<td>DOB</td>
			<td><%= dob %></td>
		</tr>
		<tr>
            <td>Department</td>
			<td><%= dept %></td>
		</tr>
		<tr>
            <td>Phone Number</td>
			<td><%= phone %></td>
		</tr>
		<tr>
			<td>Register Number</td>
			<td><%= reg %></td>
		</tr>
		<%
		  int i=0;
		  ResultSet rs = st.executeQuery("select subject from department natural join subjects where dept_name='"+dept+"'"); 
		  while(rs.next()){ 
		%>
		<tr>
			<td>Course <%=++i %></td>
			<td><%=rs.getString("subject")%></td>
		</tr>
		<%
		}
		%>
      </table>
   </body>
</html>