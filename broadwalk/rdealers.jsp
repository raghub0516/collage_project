<html>
<a href="adlink.html">back</a>
<head><center><h1><I> 
REGISTERED DEALERS LIST</u></h1></center></head>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<%@page language="java" import="java.sql.*" %>
<%
  try
 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


  Statement st=con.createStatement();
  Statement st1=con.createStatement();
  String s1="select fname,lname,frmname,phone,fax,email,district,state,country,";
  String s2="to_char(dtoreg,'dd-mon-yyyy') from rdealers";
  ResultSet rs1=st1.executeQuery(s1+s2);
  ResultSet rs; 
  if(!rs1.next())
   { 
   out.println("<center><font size=6>NO DEALERS EXISTING</font></center>");
   } 
  else
  {
    rs=st.executeQuery(s1+s2);
   out.println("<center><table border=1 bgcolor=ffff97 bordercolor=b75b00 cellpadding=5>");
   out.println("<tr bgcolor=b75b00><td><b>FIRST NAME</b></td><td><b>LAST NAME</b></td>");
   out.println("<td><b>FIRM NAME</b></td><td><b>PHONE</b></td><td><b>EMAIL</b></td>");
   out.println("<td><b>DISTRICT</b></td><td><b>STATE</b></td><td><b>COUNTRY</b></td>");
   out.println("<td><b>DATE OF REGISTRATION</b></td></tr>");
  while(rs.next())
  {
  out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>");
  out.println(rs.getString(3)+"</td><td>"+rs.getString(4)+"</td>");
  out.println("<td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>");
  out.println(rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10));
  out.println("</td></tr>");
  }
  }
} 
catch(Exception e){out.println(e.getMessage());}
   %>
</table></center>
</html>