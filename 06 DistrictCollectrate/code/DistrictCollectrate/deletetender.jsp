

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
<form method="get" name="pform" action="deletetenderaction.do" onSubmit="return validateAll();" target="main"> 
<script language="JavaScript">
  function validateAll() {
    if(document.pform.tid.length==0)  {
	  alert("ID must be select");
	  return false;
	}
	return true;
  }
</script>
<table>
 <tr><td><html:errors/></td></tr>
 <tr>
  <td><font size=4 >Tender ID</td>
  <td><font size=4 >:</td>
  <td><select name="tid" size="1"> 
  <%   try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      java.sql.Statement stmt=con.createStatement();
	  String sqlSTMT="select tid,tname from tender";
      java.sql.ResultSet rs=stmt.executeQuery(sqlSTMT);
	  while(rs.next()) {
	  %>
	  <option value='<%=rs.getString(1)%>'><%=rs.getString(1)%>&nbsp;(<%=rs.getString(2)%>)</option>
  <%} con.close();
	  }catch(Exception e) {System.out.println(e); }
  %>
  </select>
  </td>
 </tr>
</table>
</center>
<br>
<br>
<input type="hidden" name="method" value="delete"/>
<table align="center">
 <tr>
  <td>
  <input type="submit" name="submit" value="delete">
  </td>
  <td>
  <input type="reset" value="cancel"> 
  </td>
 </tr>
</table>
</form>
</body>
</html>

 