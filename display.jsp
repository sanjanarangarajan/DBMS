<%@ page import ="java.sql.*" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
width:50%;
display:inline-block;
}

label{
display:inline-block;
width:200px;
margin-right:30px;
text-align:right;
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
  color:red;
}

</style>
</head>
<body bgcolor="red">

<header>
<h2>STUDENT ADMISSION PORTAL</h2>
</header>
<br><br>

<br><br>
<html>
<body>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SEMS?serverTimezone=UTC", "root", "System12359r");
    Statement st = con.createStatement();
%>
<center>
<table cellspacing="20" cellpadding="3" bgcolor="yellow">
<tr>
<td><b><u>Department Id</u></b></td>
<td><b><u>Department Name</u></b></td>
<td><b><u>Subjects</u></b></td>
<td></td>
</tr>
<% 
String dept=(String)session.getAttribute("dept");
ResultSet rs = st.executeQuery("select dept_id,dept_name,subject from department natural join subjects where dept_name='"+dept+"'"); 
while(rs.next()){ 
%>
<tr>
<td><h3><%= rs.getString("dept_id") %></td>
<td><h3><%= rs.getString("dept_name") %></td>
<td><h3><%=rs.getString("subject") %></td>
</tr>
<% 
}
%>
</table>
<br>
<form action="excel.jsp">
<input type="submit" value="ENROLL" class="button">
</form>
</center>
</body>
</html>

