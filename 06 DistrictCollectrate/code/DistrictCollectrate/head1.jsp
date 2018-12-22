
<html>
  <head>
  <title>
   District Collectorate Management System
  </title>
 </head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
   
    <td align="center"><h2><font color="blue" > District Collectorate Management System</font></h2></td>
    <td><br><br><br><br></td>
 
   </tr>
  <tr> 
<%
  session=request.getSession(false);
   String str=(String)session.getAttribute("username");
%>
  <td align="center">
<h3>   Welcome to Mr.<%out.println(str);%></h3>
  </td>
 <td align="right">
<a href="login.html"  target="_parent">logout</a>
</td>
  </tr>
 </table>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr bgcolor="orange">
     <td height="10"></td>
   </tr>
 </table>
</body>
</html>