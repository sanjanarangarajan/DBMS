<html>
<body>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SEMS?serverTimezone=UTC", "root", "System12359r");
		Statement st = con.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
		if(rs.next()){
		session.setAttribute("userid", userid);
		response.sendRedirect("form.html");
		}%>
		<script>
		alert('Wrong Username or Password') 
		window.location.href='index.html';
		</script>
		<%
	}
	catch(Exception e)
	{
		out.println("Exception:" +e+"");
	}
%>
</body>
</html>