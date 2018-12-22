<html>
<%@ page language="java" import="java.sql.*"%>
<script language="JavaScript">
function check()
  {
  if(f1.tc.value=="")
  { f1.tc.value=f1.rtc.value;}
  else
  {
 if(isNaN(f1.tc.value))
  {
alert("please enter charge in numeric");
 f1.tc.value="";
 f1.tc.focus();
 return false;
 }
  if((f1.tc.value).length>15)
  {
  alert("please enter reasonable charge");
  f1.tc.value="";
  f1.tc.focus();
  return false;
  }}
  return true;
  }
</script>
<form action="pcschges.jsp" name="f1" onsubmit="return check()" method=post>
<%
 try
  {
      Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


      Statement st=con.createStatement();
      String sr="select trchge from chrges where country='"+request.getParameter("coun")+"'";
      ResultSet rs=st.executeQuery(sr);
      rs.next();
      out.print("<br><br>Current Charge <input type=\"text\" name=\"rtc\" ");
      out.print(" value=\""+rs.getString(1)+"\" size=10 READONLY >");
      out.print("&nbsp;&nbsp;Change to  <input type=\"text\" name=\"tc\" size=20>");
      out.print("<br><input type=\"submit\" name=\"submit\" value=\"O.K\">to apply.</form>");
      out.println("</html>");  
}
 catch(Exception e)
 {
 out.println(e.getMessage());
 }
%>
