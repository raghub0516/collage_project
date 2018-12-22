<html>
<%@ page language="Java" import="java.sql.*" %>
<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="adlink.html">back</a>
<script language="JavaScript">
function check()
{
if(f1.uid.value=="")
{
alert("please enter your id");
f1.uid.focus();
return false;
}
else
if((f1.uid.value).length>15)
{
alert("please enter your Id in 15 chars");
f1.uid.value="";
f1.uid.focus();
return false;
}
if(f1.pwd.value=="")
{
alert("please enter your password");
f1.pwd.focus();
return false;
}
else
if((f1.pwd.value).length>15)
{
alert("please enter your password in 15 chars");
f1.pwd.value="";
f1.pwd.focus();
return false;
}
return true;
}
</script>
<center>
<form action="uadchange.jsp" name="f1" onsubmit="return check()" method=post>
<% 
   
   try
     {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from admin");
      rs.next();
      String usid=rs.getString(1);
      String pswd=rs.getString(2);
      out.println("<br><b>Your User Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
      out.println("<input type=\"text\" value=\""+usid+"\" name=\"uid\" size=15");
      out.println("STYLE=\"background:\">");
      out.println("<br><br>Your Pass word:");
      out.println("<input type=\"text\" value=\""+pswd+"\" name=\"pwd\" size=15");
      out.println("STYLE=\"background:\">");
      out.println("<br><br>Click <input type=\"submit\" value=\"O.K\" name=\"submit\"> To Change.");
      }
   catch(Exception e)  
      {
        out.println(e.getMessage());
      }
%>
</center>
</form>
</html>   