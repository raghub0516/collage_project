<html>
 <head>
<title>
   District Collectorate Management System
</title>
 </head>

<body bgcolor="lightyellow">
<center>
<br>
<br>
<font size=4 >
<u>Caste Certificate</u>
</font>
<br>
<br>
<br>
<br>
<form method="get" action="showcasteaction.do" target="main">
<table>
<tr>
<td>Select Caste Certificate ID</td>
<td>:</td>
<td> 
 <%@ page import="java.sql.*" %>
<%    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe","srinivas","srinivas");

    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select  cid  from  castcertificate where flag=0");
    out.println("<select name=ccid  STYLE=\"width: 100px\">");
    while(rs.next())
    {
      String str=rs.getString("cid");
      out.println("<option>");
      out.println(str);
    }
    out.println("</select>");
  %>
</td>
</tr>
<tr>
<td>
<br>
<br>
</td>
</tr>
<tr align="right">
<td>
<input type="submit" value="View">
</td>
</tr>
</table>
</form>
</center>
</body>
</html>

