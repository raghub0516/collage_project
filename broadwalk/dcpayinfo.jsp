<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<jsp:useBean id="dte" scope="session" class="mytags.orddte"/>
<%@ page language="Java" import="java.sql.*"%>
<%
String q,q1,q2,dy,month,year,c,c1,c2;
int flag=0;
dy=dte.retdy();
int dp=Integer.parseInt(dy);
if(dp<10)
dy="0"+dy;
month=dte.retmon();
year=dte.retyear();
String need=dte.retneed();
String date=dy+"-"+month+"-"+year;
Statement st5,st6,st7;
ResultSet rs5,rs6,rs7;
Connection con;
q="select distinct(dcustid) from dpays where to_char(dor,'dd-fmmonth-yyyy')";
q1=" LIKE '"+date+"' and need='"+need+"'";
q2=q+q1;
try
 {
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

st5=con.createStatement();
st6=con.createStatement();
st7=con.createStatement();
out.println("<br><br><br><u><b>Payment Information</b></u> of above Orders.");
String p1="select dcustid,dordid,mdp,amount,cmt from dpays where ";
String p2="to_char(dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and ";
String p3="need='"+need+"' order by dcustid";
String p=p1+p2+p3;
rs5=st5.executeQuery(p);
out.println("<table border=\"1\" bordercolor=b75b00 bgcolor=ffffb0 cellpadding=5>");
out.println("<tr bgcolor=b75b00><td><b>CustNo</b></td><td><b>Orderno</b></td><td><b>ModeOfPayt</b></td><td>");
out.println("<b>TotalAmount(inc trchges)</b></td><td><b>Comments</b></td></tr>");
while(rs5.next())
{
out.println("<tr><td>"+rs5.getString(1)+"</td><td>"+rs5.getString(2)+"</td>");
out.println("<td>"+rs5.getString(3)+"</td><td>"+rs5.getString(4)+"</td>");
out.println("<td>"+rs5.getString(5)+"</td></tr>");
}
out.println("</table>");
String b1="select d.dorid,d.dcustid,d.ddno,d.bankname from dddinfo d,dpays i where ";
String b2="to_char(i.dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and ";
String b3="i.need='"+need+"' and i.mdp='dd' and i.dcustid=d.dcustid and ";
String b4="d.dorid=i.dordid order by d.dcustid";
String b=b1+b2+b3+b4;
rs6=st6.executeQuery(b);
rs7=st7.executeQuery(b);
if(!rs6.next()){out.println("<br>All Customers pay their amount through VPP.");}
else
{
out.println("<br><br><u><b>DDInformation</b></u> of customers whoose <b>mode of payment</b> is"); out.println("<u><b>DD</b></u>.");
out.println("<table border=\"1\" bordercolor=b75b00 bgcolor=ffffbo cellpadding=5>");
out.println("<tr bgcolor=b75b00><td><b>CustNo</b></td><td><b>OrderNo</b></td><td><b>DDnumber");
out.println("</b></td><td><b>BankName</b></td></tr>");
while(rs7.next())
 {
out.println("<tr><td>"+rs7.getString(2)+"</td><td>"+rs7.getString(1)+"</td><td>");
out.println(rs7.getString(3)+"</td><td>"+rs7.getString(4)+"</td></tr");
}}
out.println("</table>");
}
catch(Exception e)
 {
out.println(e);
}
%>
</html>

