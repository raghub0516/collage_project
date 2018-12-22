<html>
<TITLE>MailingComments</TITLE>
<a href="mails.html">back</a>
<br><br>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.io.*"%>

<%
  try
 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


  Statement st=con.createStatement();
  int mailno;
  String mailid,uname,cmt;
  ResultSet rs=st.executeQuery("select nvl(max(mailno)+1,1) from mailus");
  rs.next(); 
  mailno=Integer.parseInt(rs.getString(1));
  mailid=request.getParameter("mail");
  uname=request.getParameter("uname");
  cmt=request.getParameter("comments");
  String s="insert into mailus values(sysdate,"+mailno+",'"+mailid+"','"+cmt+"','"+uname+"')";
//  out.println(s);
  st.executeUpdate(s);
  out.println("Hello "+uname+",<br>");
  out.println("<h4><i>Thanks for mailing<br>");
  out.println("You're Mail has been recieved.</h4></i></body>");
}
catch(Exception e)
 {
   out.println(e.getMessage());
 }
%>
</html>  

