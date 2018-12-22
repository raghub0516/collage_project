

<html>
 <head>
<title>
   District Collectorate Management System
</title>
 </head>

<body bgcolor="lightyellow">
<center>
<font size=4 >
<u>Tender Information</u>
</font>
<form method="get" action="storetenderaction.do" target="main">
<table>
 <tr><td><html:errors/></td></tr>
 <tr>
  <td><font size=4 >Tender Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="tname" size=26></td>
 </tr>
 <tr>
  <td><font size=4 >Tender Place</td>
  <td><font size=4 >:</td>
  <td><textarea name="wplace"></textarea></td>
 </tr>
  <tr>
  <td><font size=4 >Tender Description</td>
  <td><font size=4 >:</td>
  <td><textarea name="tdesc" rows="15" cols="50"></textarea></td>
 </tr>
  <tr>
  <td><font size=4 >Tender Status</td>
  <td><font size=4 >:</td>
  <td><select name="flag">
     <option value="open">open</option>
	 </select></td>
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

 