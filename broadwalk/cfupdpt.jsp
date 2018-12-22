<html>
<body bgcolor="a3a352">
<script language="JavaScript">
function check()
{
if(f1.des.value=="")
  {
  f1.des.value="good product";
  }
else
 if((f1.des.value).length>25)
  {
  alert("please enter description in 25 chars.");
  f1.des.focus();
  return false;
  }
 if(f1.cp.value=="")
 {
 alert("please Enter CustomerPrice of Product");
 f1.cp.focus();
  return false;   
}
else
{
if(isNaN(f1.cp.value))
 {
alert("please enter valid Customer Price");
 f1.cp.focus();
 return false;
}
if((f1.cp.value).length>15)
{
alert("please enter valid price for item only");
f1.cp.value="";
f1.cp.focus();
return false;
}}

 if(f1.dp.value=="")
 {
 alert("please Enter DealerPrice of Product");
 f1.dp.focus();
  return false;   
}
else
{
if(isNaN(f1.dp.value))
 {
alert("please enter valid Dealer Price");
 f1.dp.focus();
 return false;
}
if((f1.dp.value).length>15)
{
alert("please enter valid price for item only");
f1.dp.value="";
f1.dp.focus();
return false;
}}
return true;
}
</script>
<%@ page language="java" import="java.sql.*"%>
<a href="adproducts.html">back</a>
&nbsp;&nbsp;
<a href="dcatalog.jsp">view catalog</a>
<br><br><br>
<b>
<form action="pudate.jsp" name="f1" onsubmit="return check()" method=post>
<%
  Connection con;
  Statement st,st1;
  ResultSet rs,rs1;
  int ct=0;
  String s=request.getParameter("pid");
   try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

    st=con.createStatement();
    st1=con.createStatement();
    rs1=st1.executeQuery("select * from products where prodid='"+s+"'");
    rs1.next();
out.println("<b>Information of Product U Selected to Update.<br><br>");
out.println("<table>");
out.println("<tr><td width=150></td><td>Product code</td><td>");
out.println("<input type=\"text\" name=\"prid\" value=\""+rs1.getString(1)+"\" READONLY>");
out.println("</td></tr>");
out.println("<tr><td></td><td>Product Name</td><td>");
out.println("<input type=\"text\" name=\"prnm\" value=\""+rs1.getString(2)+"\" READONLY>");
out.println("</td></tr>");
out.println("<tr><td></td><td>Capacity(ltrs)</td><td>");
out.println("<input type=\"text\" name=\"cap\" value=\""+rs1.getString(3)+"\" READONLY>");
out.println("</td></tr>");
out.println("<tr><td></td><td>ElectricalInput</td><td>");
out.println("<input type=\"text\" name=\"ele\" value=\""+rs1.getString(4)+"\" READONLY>");
out.println("</td></tr>");
out.println("<tr><td></td><td>Warrenty</td><td>");
out.println("<input type=\"text\" name=\"war\" value=\""+rs1.getString(5)+"\" READONLY>");
out.println("</td></tr>");
out.println("<tr><td></td><td>Description</td><td>");
out.println("<input type=\"text\" name=\"des\" value=\""+rs1.getString(6)+"\">");
out.println("</td></tr>");
out.println("<tr><td></td><td>CustomerPrice</td><td>");
out.println("<input type=\"text\" name=\"cp\" value=\""+rs1.getString(7)+"\">");
out.println("</td></tr>");
out.println("<tr><td></td><td>DealerPrice</td><td>");
out.println("<input type=\"text\" name=\"dp\" value=\""+rs1.getString(8)+"\">");
out.println("</td></tr>");
out.println("</table>");
out.println("Click <input type=\"submit\" name=\"submit\" value=\"O.K\"> to Update.</b>");  
out.println("</form>");
      }
 catch(Exception e)
  {out.println(e.getMessage());
  }
%>  
</html>

    
