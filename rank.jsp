<html>
<body>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TNEA?serverTimezone=UTC", "root", "System12359r");
    Statement st = con.createStatement();
%>
	<table cellspacing=20 cellpadding=3>
<tr><td></td>
<td><b><u>Admission No</u></b></td>
<td><b><u>Name</u></b></td>
<td><b><u>Cutoff</u></b></td>
<td></td>
</tr>
<% 
ResultSet rs = st.ExecuteQuery("select adno,name,cutoff from personal natural join academics orderby cutoff asc"); 
while(rs.next()){
%>
<tr>
<td><h3><%= rs.getString("adno") %></td>
<td><h3><%= rs.getString("name") %></td>
<td><h3><%=rs.getString("cutoff") %></td>
</tr>
<% 
}
%>
</table>
</body>
</html>