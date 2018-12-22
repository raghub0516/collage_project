<html>
 <body bgcolor=skyblue>
<%@page language="java" import="java.sql.*" %>
<%
  String usid="",pawd="",fuid,fpwd;
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


  Statement st=con.createStatement();
  String s="select * from admin";
  ResultSet rs=st.executeQuery(s);
  rs.next();
  usid=rs.getString(1);
  fuid=request.getParameter("uid");
  fpwd=request.getParameter("pwd");
  pawd=rs.getString(2);
if((usid.equals(fuid)) && (pawd.equals(fpwd)))
     {
out.println("<table border=0><ul>");  
out.println("<tr><td><li><font size=4 face=arial color=green>1.DIRECT CUSTOMER</font></li></td></tr>");
out.println("<tr><td><li><font size=4 face=arial color=green>2.CUSTOMER THROUGH DEALERS</font></li></td></tr>");
out.println("<tr><td><li><font size=4 face=arial color=green><a href=\"rdealers.jsp\">  3.REGISTERED DEALERS LIST </a>");
out.println("</font></li></td></tr>");
out.println("<tr><td><li><font size=4 face=arial color=green><a href=\"udealers.jsp\">  4.UNREGISTERED DEALERS LIST </a>");
  out.println("</font></li></td></tr>");
  out.println("<tr><td><li><font size=4 face=arial color=green><a href=\"dm1.jsp\"> 5.DELETE/MODIFY DEALER </a>");
  out.println("</font></li></td></tr>");  
  out.println("<tr><td><li><font size=4 face=arial color=green><a href=\"dp.jsp\">6.DEALER APPOINTMENT</a>");
  out.println("</font></li></td></tr>");
  out.println("</ul></table>");
 }
 else
  {
   out.println(" <center> invalid login...try again!</center><br><center>");
   out.println("<form action=\"admin.jsp\" name=\"f1\">");
   out.println("<input type=submit name=back></form></center>");
 } %>
  </html>
     