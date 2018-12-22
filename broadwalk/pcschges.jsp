<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="ltschges.html">back</a>&nbsp;&nbsp;
<a href="viewchges.jsp">View Charges</a>
<br><br>
<jsp:useBean id="cn" scope="session" class="mytags.tschges"/>
<%@ page language="java" import="java.sql.*"%>
<%
 try
  {   
      String acon=cn.retcoun();
      Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


      Statement st=con.createStatement();
      String sr="update chrges set trchge='"+request.getParameter("tc")+"' where ";
      String sr1="country='"+acon+"'";
      st.executeUpdate(sr+sr1);
out.println("<br><b>Transport charge of \""+acon+"\" changed");
 out.println("successfully.</b>"); 
  }
 catch(Exception e){out.println(e.getMessage());}
%>
