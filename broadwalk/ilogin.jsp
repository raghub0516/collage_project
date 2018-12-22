<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<form action="ilogin.jsp" name="f1" method="post" onsubmit="return check()">
<br><br><br>
<script language="JavaScript">
function check()
 {
  if(f1.dcode.value=="")
  {
  alert("Please enter dealer code");
  f1.dcode.focus();
  return false;
  }
return true;
 }
</script>
<center>
<hr color=lightblue size=2 width=350>
<h2><font size=4 color="purple"><b><i>DEALER LOGIN FORM</i></b></font></h2>
<hr color=lightblue size=2 width=350>
</center>
<br><br><br><br>
<center>
<table><tr><td>

<b>Please Enter Your Dealer Code:&nbsp;&nbsp;</b></td><td>
<input type="text" name="dcode" size=15 STYLE="background:"></td></tr>
<tr><td><b>Please Enter Your PassWord:&nbsp;&nbsp;</b></td><td>
<input type="password" name="pwd" size=15 STYLE="background:"></td></tr>
<table>
</center>
<tr>
<td width=4%></td>
<td><input type="submit" name="login" value="Login"></td></tr>
</table>
</form>
</body>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
 <jsp:setProperty name="dlr" property="*"/>
<%  int flag=dlr.check();
    if(flag==1)
     {
%>
<jsp:forward page="dealerlogin.jsp"/>
<% } else { %>
<jsp:include page="nlogin.html" flush="true"/>
<% } %>
 
     

