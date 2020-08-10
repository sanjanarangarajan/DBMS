<%@ page import ="java.sql.*" %>
<%
	String fname = request.getParameter("fname");	
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String dept = request.getParameter("dept");
	String reg=request.getParameter("reg");
	String phone=request.getParameter("phone");
	session.setAttribute("fname",fname);
	session.setAttribute("lname",lname);
	session.setAttribute("email",email);
	session.setAttribute("dob",dob);
	session.setAttribute("dept",dept);
	session.setAttribute("phone",phone);
	session.setAttribute("reg",reg);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SEMS?serverTimezone=UTC","root", "System12359r");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into personal(fname,lname,email,dob,dept,phone,reg) values ('" + fname + "','" + lname + "','" + email + "','" + dob + "','" + dept + "','" + phone + "','" + reg + "')");
    if (i > 0) {
        response.sendRedirect("display.jsp");
    } else {
        response.sendRedirect("form.html");
    }
%>