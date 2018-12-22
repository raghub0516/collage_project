<html>
<script language="JavaScript">
function check()
 {
  if(f1.uid.value=="")
   {
    alert("Please Enter Your UserId");
    f1.uid.focus();
    return false;
   }
 if(f1.pwd.value=="")
   {
    alert("please Enter Your PassWord");
    f1.pwd.focus();
    return false;
   }
 return true;
}
</script>
<hr width=300 size=3 color="lightblue">
<h2><center><font size=4 color="purple"><b>ADMINISTRATOR LOGIN<b></font></center></h2>
<hr width=300 size=3 color="lightblue">
<body background="images/center.jpg" alink=blue vlink=blue>
<center>
<br><br>
<form action="iadmin.jsp" name="f1" onsubmit="return check()" method=post>
<font size=4>
<table border=0>
<tr><td><b>Please Enter Your ID:</b></i></td>
<td> <input name="uid" STYLE="background:"></td></tr>
<tr><td><b>Please Enter Your Password:</b></td>
<td><input type=password name="pwd" STYLE="background:"></td></tr>
<tr><td>
<input type=submit name="submit" value="Login"></td></tr>
</b></i>
</table>
</form>
<jsp:useBean id="ad" class="mytags.admin"/>
<jsp:setProperty name="ad" property="*"/>
<% if(ad.check()==1) { %>
     <jsp:forward page="adlink.html"/>
<% } else { %>
<jsp:include page="nlogin.html" flush="true"/>
<% } %>
<center>
</body>
</html>