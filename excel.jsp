<%@ page import="java.sql.*" %>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	  <style>
body {
font-family: Arial, Helvetica, sans-serif;
text-align:center;
margin:0;
}

h2.header{
color:yellow;
}


table 
{
border: 5px solid red;
width:25%;
display:inline-block;
}

header
{
padding:5px;
text-align:center;
background-color:#2B60DE;
color:white;
width:100%;
}

.button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
}

.button:hover {
  opacity: 0.8;
  color:red
	  </style>
   </head>
   <body bgcolor="gray"><center>
      <header><h1>Excel Report</h1></center></header>
	  <%
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
      <table cellpadding="3"  cellspacing="5" border="1" bgcolor="yellow">
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
		<br>
      </table>
	  <br><br>
	  <form action="excelreport.jsp">
	  <input type="submit" value="EXPORT TO EXCEL" class="button"> 
	  </form>
	  </center>
   </body>
</html>