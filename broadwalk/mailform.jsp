<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<form action="smail.jsp">
<jsp:useBean id="trd" class="mytags.appt" scope="session"/>
<%@ page language="Java" import="java.sql.*"%>
<%
   String s=trd.retrdc();
String r="select rdcode,pwd,fname,email,country,state,district from rdealers where rdcode='"+s+"'";
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


     Statement st=con.createStatement();
     //out.println(r);
     ResultSet rs=st.executeQuery(r);
     rs.next();
     String rdc=rs.getString(1);
     String pwd=rs.getString(2);
     String fname=rs.getString(3);
     String eml=rs.getString(4);
     String coun=rs.getString(5);
     String sta=rs.getString(6);
     String dst=rs.getString(7);
     out.println("<center><table border=0 bgcolor=b75b00 cellspacing=5 cellpadding=5>");
     out.println("<tr><td width=2 border=1><b>To:</b></td><td>");
     out.println("<input type=text name=\"to\" value=\""+eml+"\"></td></tr>");
     out.println("<tr><td width=2><b>From:</b></td><td>");
     out.println("<input type=text name=\"fr\" value=\"administrator\" READONLY></td></tr>");
     out.println("<tr><td width=2><b>Subject:</b></td><td>");
     out.println("<input type=text name=\"sub\" value=\"BroadWalkapointment\" READONLY></td></tr>");
     out.println("<tr><td width=2><b>Message:</b></td>");
     out.println("<td><textarea name=\"msg\" rows=10 cols=30 READONLY>Hello "+fname+",");
     out.println("You are appointed as an authorized dealer of BroadWalk for the area given below");
     out.println("Country :"+coun+"  State :"+sta+"  District :"+dst);
     out.println("Your DealerCode: "+rdc);
     out.println("Your password: "+pwd);
     out.println("</textarea></td></tr>");
     out.println("<tr><td></td><td align=center><input TYPE=IMAGE src=\"images/sendk.gif\"></td></tr>");
     out.println("</table></center>");
  }
catch(Exception e)
  {
   out.println(e.getMessage());
  }
%>
</form>   
</body>
</html>