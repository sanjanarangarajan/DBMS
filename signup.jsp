<%@ page import ="java.sql.*" %>
<%
try{
    String user = request.getParameter("uname");  
    String pwd = request.getParameter("psw");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SEMS?serverTimezone=UTC","root", "System12359r");
    Statement st = con.createStatement();
	String query="insert into members(uname,pass) values ('" + user + "','" + pwd + "')";
    int i = st.executeUpdate(query);
    if (i > 0) {
        response.sendRedirect("index.html");
    } else {
		response.sendRedirect("signup.html");		
    }
}
catch(Exception e)
{
out.println(e);
}			
%>