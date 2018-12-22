

<html>
 <head>
<title>
   District Collectorate Management System
</title>
 </head>

<body bgcolor="lightyellow">
<center>
<font size=4 >
<u>Police Station Information</u>
</font>
<form method="get" action="storepolicestaction.do" target="main">
<table>
 <tr><td><html:errors/></td></tr>
 <tr>
  <td><font size=4 >Police Station Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="pname" size=26></td>
 </tr>
 <tr>
  <td><font size=4 >Address</td>
  <td><font size=4 >:</td>
  <td><textarea name="addr"></textarea></td>
 </tr>
 <tr>
  <td><font size=4>Login ID</td>
  <td><font size=4>:</td>
  <td><input type="text" name="login" size=26></td>
 </tr>
 <tr>
  <td><font size=4 >Password</font></td>
  <td><font size=4 >:</td>
  <td><font size=1><input type="password" name="pwd" size=26></font></td>
 </tr>
</table>
</center>
<br>
<br>
<input type="hidden" name="method" value="create"/>
<table align="center">
 <tr>
  <td>
  <input type="submit" name="submit" value="create">
  </td>
  <td>
  <input type="reset" value="cancel">
  </td>
 </tr>
</table>
</form>
</body>
</html>

 