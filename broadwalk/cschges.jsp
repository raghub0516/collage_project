<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<b>
<a href="ltschges.html">back</a>&nbsp;&nbsp;
<a href="viewchges.jsp">View Charges</a>
<br><br>
<form action="acschges.jsp" method=post>
<%@ page language="java" import="java.sql.*"%>
<%
   
   try
     {
      Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from chrges");
      Statement st1=con.createStatement();
      ResultSet rs1=st1.executeQuery("select country from chrges");
      if(!rs1.next())
        {
        out.println("No Information Available.");
        }
      else
        {
        out.print("<b><br><br>Select Country ");
        out.print("<select size=1 name=\"coun\" STYLE=\"background:lightblue\">");
        while(rs.next())
            {
         String s=rs.getString(1);
         out.print("<option value=\""+s+"\">"+s);
            }
         out.print("</select>Click <input type=\"submit\" value=\"O.K\"> to change.</form>");
         }
     }
    catch(Exception e)
      {out.println(e.getMessage());}
%>
