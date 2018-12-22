<%@ page language="Java" import="java.sql.*"%>
<% Class.forName("oracle.jdbc.driver.OracleDriver");
  	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
%>
<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<head>
<%@include file="OPTION.jsp"%>

<SCRIPT language=JavaScript>
function checkinput()
 {
if(f1.mop.value=="dd")
{
if(f1.ddn.value=="")
{
alert("please enter ddno");
f1.ddn.focus();
return false;
}
else
if((f1.ddn.value).length>15)
{
alert("please enter valid DD number");
f1.ddn.value="";
f1.ddn.focus();
return false;
}
}
if(f1.mop.value=="dd")
{
if(f1.bnm.value=="")
{
f1.bnm.focus();
alert("please enter bankname");
return false;
}
else
if((f1.bnm.value).length>25)
{
alert("please enter Bank Name in 25chars");
f1.bnm.value="";
f1.bnm.focus();
return false;
}
}
if((f1.pido.value!=""))
{if(f1.qtyo.value=="")f1.qtyo.value="0";f1.hideo.value="true";f1.hide.value="true";
}else f1.hideo.value="false";
if((f1.pidf.value!=""))
{if(f1.qtyf.value=="")f1.qtyf.value="0";
f1.hide.value="true";
f1.hidef.value="true";}else f1.hidef.value="false";
if((f1.pids.value!=""))
{if(f1.qtys.value=="")f1.qtys.value="0";
f1.hide.value="true";
f1.hides.value="true";}else f1.hides.value="false";
if((f1.pidt.value!=""))
{if(f1.qtyt.value=="")f1.qtyt.value="0";f1.hidet.value="true";f1.hide.value="true";
}else f1.hidet.value="false";
if(f1.lentxt.value>25)
  {
  alert("please check:\nyou have only 25 chars limit for comments");
  return false;
  }
if(f1.comments.value=="")
f1.comments.value="No Comments";
return true;
}
document.onkeyup=countchars;
function countchars()
  {f1.lentxt.value=f1.comments.value.length;}



var names1 = new DynamicOptionList("pido","preo","xmlname1");
<%  try
      {
      	
		Statement st1=con.createStatement();
	      ResultSet rs1=st1.executeQuery("select prodid,deschge from products");
		while(rs1.next())
	{
%>
names1.forValue("<%=rs1.getString("prodid")%>").addOptions("<%=rs1.getInt("deschge")%>");
<%}
}catch(Exception e1){}%>


var names2 = new DynamicOptionList("pidf","pref","xmlname2");
<%  try
      {
      	
		Statement st2=con.createStatement();
	      ResultSet rs2=st2.executeQuery("select prodid,deschge from products");
		while(rs2.next())
	{
%>



names2.forValue("<%=rs2.getString("prodid")%>").addOptions("<%=rs2.getInt("deschge")%>");
<%}
}catch(Exception e2){}%>

var names3 = new DynamicOptionList("pids","pres","xmlname3");
<%  try
      {
		Statement st3=con.createStatement();
	      ResultSet rs3=st3.executeQuery("select prodid,deschge from products");
		while(rs3.next())
	{
%>



names3.forValue("<%=rs3.getString("prodid")%>").addOptions("<%=rs3.getInt("deschge")%>");
<%}
}catch(Exception e3){}%>


var names4 = new DynamicOptionList("pidt","pret","xmlname4");
<%  try
      {
      	Statement st4=con.createStatement();
	      ResultSet rs4=st4.executeQuery("select prodid,deschge from products");
		while(rs4.next())
	{
%>



names4.forValue("<%=rs4.getString("prodid")%>").addOptions("<%=rs4.getInt("deschge")%>");
<%}
}catch(Exception e4){}%>
</script>

</head>
<body onLoad="initDynamicOptionLists()">
<a href="ilogin.jsp">back</a>
<FORM name="f1"  onsubmit="return checkinput()" 
action="http://localhost:8000/project/dpr.jsp" method=post>
<center><h2><u>DEALER ORDER FORM</u></h2></center>
<table><tr><td>Need Of Order</td><td><select size=1 name="need"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">
<option value="immediate">Immediate
<option value="urgent">Urgent
<option value="late">Late
</select style="font-size:9pt;font-family:Century Gothic;color:DCDCDC;background-color:lightblue;">
</td></tr><tr><td>Mode Of Payment</td><td><select size=1 name="mop"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<option value="dd">DD <option value="vpp">Vpp</select></td></tr></table>
<table><tr><td width=45%><b><font color="red">*</b></font>DDNumber
<input type="text" name="ddn" size="15">
&nbsp;<b><font color="red">*</b></font>BankName</td><td>
<input type="text" name="bnm" size="15"></td></tr></table>
<CENTER>To place order fill the Info and click <B>ADD TO CART</B>for each 
item. <BR>For further Information regarding products view <A 
href="http://localhost:8000/project/dcatalog.jsp"><B>CATALOG</B></A> <BR>
<TABLE border=1 bordercolor=b75b00 bgcolor=ffffb0>
  <TR bgcolor=b75b00 >
    <TD><B><U>ITEM CODE#:</B></U> </TD>
    <TD><B><U>PRICE EACH:</U></B></TD>
    <TD><B><U>QUANTITY :</B></U></TD>
    <TD><B><U>ACTION :</B></U></TD></TR>
  <TR>
    <tr>
<td>
<select name="pido" id="pido" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
      	
		Statement st11=con.createStatement();
	      ResultSet rs11=st11.executeQuery("select prodid from products");
		while(rs11.next())
	{
%>


<option value="<%=rs11.getString("prodid")%>""selected"><%=rs11.getString("prodid")%></option>
<%}
}catch(Exception e1){}%>
</select>
</td>
<td>
<select name="preo" id="preo","select" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names1.printOptions("preo");</script>
</select>
</td>


 <TD><INPUT size=10 name="qtyo"></TD>
    <TD><input type="submit" name="submit" value="1.ADD TO CART"></TD></TR>
  <tr>  
    <TD>
</tr>

<tr>
<td>
<select name="pidf" id="pidf" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
      	
		Statement st21=con.createStatement();
	      ResultSet rs21=st21.executeQuery("select prodid from products");
		while(rs21.next())
	{
%>


<option value="<%=rs21.getString("prodid")%>"><%=rs21.getString("prodid")%></option>
<%}
}catch(Exception e21){}%>
</select>
</td>
<td>
<select name="pref" id="pref" selected style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names1.printOptions("district");</script>
</select>
</td>
<TD><INPUT size=10 name="qtyf"></TD>
    <TD><input type="submit" name="submit" value="2.ADD TO CART"></TD></TR>
  <tr>  
    <TD>
</tr>

<tr>
<td>
<select name="pids" id="pids" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
		Statement st31=con.createStatement();
	      ResultSet rs31=st31.executeQuery("select prodid from products");
		while(rs31.next())
	{
%>


<option value="<%=rs31.getString("prodid")%>"><%=rs31.getString("prodid")%></option>
<%}
}catch(Exception e31){}%>
</select>
</td>
<td>
<select name="pres" id="pres"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names3.printOptions("district");</script>
</select>
</td>


 <TD><INPUT size=10 name="qtys"></TD>
    <TD><input type="submit" name="submit" value="3.ADD TO CART"></TD></TR>
  <tr>  
    <TD>
</tr>

<tr>
<td>
<select name="pidt" id="pidt" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
      	
		Statement st41=con.createStatement();
	      ResultSet rs41=st41.executeQuery("select prodid from products");
		while(rs41.next())
	{
%>


<option value="<%=rs41.getString("prodid")%>"><%=rs41.getString("prodid")%></option>
<%}
}catch(Exception e41){}%>
</select>
</td>
<td>
<select name="pret" id="pret"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names4.printOptions("district");</script>
</select>
</td>


 <TD><INPUT size=10 name="qtyt"></TD>
    <TD><input type="submit" name="submit" value="4.ADD TO CART"></TD></TR>
  
 </TABLE></center>
<input type="hidden" val="false" name="hide">
<input type="hidden" val="false" name="hideo">
<input type="hidden" val="false" name="hidef">
<input type="hidden" val="false" name="hides">
<input type="hidden" val="false" name="hidet">
<TABLE border=0>
   <tr><td width="50%"></td><td>For more info</td>
    <td><A href="http://localhost:8000/project/dvieworder.jsp">VIEW ORDER</A></td></tr>
</table>
<TABLE border=0>
  <TBODY>
  <TR>
    <TD width="29%"></TD></tr>
<TR>
    <TD></TD>
    <TD>Please enter any<B> comments</B> below:
    <B>You've Typed<INPUT size=2 value=0 name=lentxt>characters so 
    far</B></TD></TR>
  <TR>
    <TD></TD>
    <TD><TEXTAREA name="comments" rows=2 cols=41 onchange=countchars()></TEXTAREA> 
    </TD></TR>
</table>  
<br>

<input type="submit" name="submit" value="Submit Form"><b> to Order.</b>
</html>
