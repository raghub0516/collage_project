<html>
<%@ page language="Java" import="java.sql.*" %>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<% 
   String ud=request.getParameter("uid");
   String pd=request.getParameter("pwd");
   try
     {
      Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


      Statement st=con.createStatement();
      String s="update admin set userid='"+ud+"',password='"+pd+"'";
      st.executeUpdate(s);
      out.println("<font color=brown><b>Your id&password successfully changed.</font></b>");
      }
  catch(Exception e)
   {
   out.println(e.getMessage());
  }
%>
</body>
</html>