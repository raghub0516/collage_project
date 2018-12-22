 

<html>
 <head>
<title>
   District Collectorate Management System
</title>
 </head>

<body>
<center>
<font size=4 >
<u>Tender Information</u>
</font>
<form method="get" name="pform" action="tenderassign.jsp" target="main">
 </tr>
  <%   try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      java.sql.Statement stmt=con.createStatement();
	  String sqlSTMT="update tender set pk='"+request.getParameter("pk")+"',flag=2 where tid='"+request.getParameter("tid")+"'";
	  int flag=stmt.executeUpdate(sqlSTMT);
	  if(flag>0) 
		 out.println("Tender ID="+request.getParameter("tid")+" is successfully changed to Contractor ID="+request.getParameter("pk")); 
	  else
		  out.println("Failed to assign the tender");
 con.close();
	  }catch(Exception e) {System.out.println(e); }
  %>
</table>
</center>
</form>
</body>
</html>

 