<!--<%@ taglib uri="/tags/struts-html" prefix="html"%>-->
<html>
<head>
<title> District Collectorate Management System</title>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<form name="LogonForm" method="post" action="loginaction.do">
<br>
<br>
<center>
 <table border="0" cellspacing="0" cellpadding="0">
  <tr  align="center">
       <td><h2> District Collectorate Management System</h2><td>
  </tr>
 </table>
</center>
<br>
<br>

 <table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr bgcolor="orange">
     <td height="15"></td>
   </tr>
 </table>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
   <td width="200" height="100">&nbsp;</td>
     <td height="29"> 
       <div align="center">
        <table width="55%" border="0" cellspacing="0" cellpadding="0">
         <tr> 
           <td> 
            <p><h2><u>Administrator  Login</u></h2></p>
           </td>
         </tr>
        </table>
       </div>
     </td>
  </tr>
 </table>  	
<div align="center">
<TABLE cellpadding="5" cellspacing="0" border="0" width="30%">
<TBODY>
<tr><td><html:errors/></td></tr>
<tr>
<td align="center" valign="center"><font size=4>User ID</font></td><td valign="center"><b><font color="#ff0000">*</b></font><input  type="text" name="uname" size="20"></td>
</tr>
<tr>
<td align="center" valign="center"><font size=4>Password</font></td><td valign="center"><b><font color="#ff0000">*</b></font><input name="pwd" type="password" value size="20"></b></td>
</tr>
</TABLE>

<p align="center"><table width="80" border="0" cellspacing="0" cellpadding="0">
<table>
<tr> 
  <td width="100">	 
   <p><input  type="submit" name="submit" value="login"></p>
  </td> 
  <td width="100">
   <p><input type="reset" value="cancel"></p>
  </td>
</tr>
</table>
<br>
<br>
<br>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr bgcolor="green">
     <td height="15"></td>
   </tr>
 </table>
<center>
<h3>@ Copy rights on 2009</h3>
</center>
</p>
</form>
</div>
</body>
</html>
