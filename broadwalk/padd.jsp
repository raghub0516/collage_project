<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<b>
<a href="addchges.html">back</a>&nbsp;&nbsp;
<a href="viewchges.jsp">View Charges</a>
<br><br>
<%@ page language="java" import="java.sql.*"%>
<%
   
   try
     {
      Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


      Statement st=con.createStatement();
      String coun=request.getParameter("coun");
      String cs=request.getParameter("tc");
      String qr="select * from chrges where country='"+coun+"'";
      ResultSet rs=st.executeQuery(qr);
      if(rs.next())
      {
       out.println("Your Products already available to "+coun+".");
      }
      else
      {
      Statement st1=con.createStatement();
      String qry="insert into chrges values('"+coun+"','"+cs+"')";
      st1.executeUpdate(qry);
      out.println("Now Your products are Available to "+coun+".");
      }
   }
 catch(Exception e)
  {
    out.println(e.getMessage());
  }
%>
