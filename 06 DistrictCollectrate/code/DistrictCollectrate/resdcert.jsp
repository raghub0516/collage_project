<html>
 <head>
<title>
   District Collectorate Management System
</title>
 </head>

<body>
<center>
<br>
<br>
<font size=4 >
<u>Residential Certificate</u>
</font>
<br>
<br>
<br>
<br>
<form method="get" action="showresdaction.do" target="main">
<table>
<tr>
<td>Select  Residential Certificate ID</td>
<td>:</td>
<td> 
 <%@ page import="java.sql.*" %>
<%    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe","srinivas","srinivas");

    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select  iid  from  residentialcertificate where flag=0");
    out.println("<select name=rcid  STYLE=\"width: 100px\">");
    while(rs.next())
    {
      String str=rs.getString("iid");
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

