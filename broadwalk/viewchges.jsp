<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>

<b>
<a href="ltschges.html">back</a>&nbsp;&nbsp;
<br><br>
<%@ page language="java" import="java.sql.*"%>
<%
   
   try
     {
      Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from chrges");
      Statement st1=con.createStatement();
      ResultSet rs1=st1.executeQuery("select * from chrges");
      if(!rs1.next())
        {
        out.println("No Information Available.");
        }
      else
        {
        out.println("TransportCharges Information:<br><br><br>");
        out.println("<table border=1 bordercolor=b75b00 bgcolor=ffffb0 cellpadding=5>");
        out.println("<tr bgcolor=b75b00><td><b>CountryName</b></td><td><b>Charge(upto");
        out.println("10itms)</b></td></tr>");
        while(rs.next())
        out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td></tr>");
        out.println("</table></b>");
       }
     }
     catch(Exception e)
       {
        out.println(e.getMessage());
        }
%>
    
