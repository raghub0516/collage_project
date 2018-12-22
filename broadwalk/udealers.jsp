<html>
<a href="adlink.html">back</a>
<br><br>
<head><center><h1><i>UNREGISTERED DEALERS LIST</i><h1>
</center></head>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<%@page language="java" import="java.sql.*"%>
<%
  try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


  Statement st=con.createStatement();
  Statement st1=con.createStatement();
  ResultSet rs1;
  String s="select fname,lname,firm,phone,fax,email,district,state,country,zip,to_char(dtaply,'dd-mon-yyyy') from dealers order by district";
  ResultSet rs=st.executeQuery(s);
  rs1=st1.executeQuery(s); 
 if(!rs.next())
   { 
   out.println("<center><font size=6>NO DEALERS EXISTING</font></center>");
   } 
  else
  {
out.println("<table border=1 bordercolor=b75b00 bgcolor=ffffb0 cellpadding=5>"); 
out.println("<tr bgcolor=b75b00><td><b>FIRSTNAME</b></td><td><b>LASTNAME</b></td>");
out.println("<td><b>FIRMNAME</b></td><td><b>PHONENO</b></td>");
out.println("</td><td><b>EMAILID</b></td>");
out.println("<td><b>DISTRICT</b></td><td><b>STATE</b></td>");
out.println("<td><b>COUNTRY</b></td><td><b>DATE OF APPLY</b></td>");
out.println("</tr>");
  while(rs1.next())
  {
out.println("<tr><td>"+rs1.getString(1)+"</td><td>"+rs1.getString(2)+"</td>");
out.println("<td>"+rs1.getString(3)+"</td><td>"+rs1.getString(4)+"</td><td>");
out.println(rs1.getString(6)+"</td><td>");
out.println(rs1.getString(7)+"</td><td>"+rs1.getString(8)+"</td><td>");
out.println(rs1.getString(9)+"</td><td>");
out.println(rs1.getString(11)+"</td></tr>");
  }
 }}
catch(Exception e){out.println(e.getMessage());}
   %>
</table>
</html>