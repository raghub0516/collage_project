<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<a href="incosts.jsp">back</a><br><br>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
<jsp:useBean id="dt" scope="session" class="mytags.orddte"/>
<%@ page language="Java" import="java.sql.*"%>
<%
String q,q1,q2,dy,month,year,c,c1,c2;
int flag=0;
String s=dlr.retdcode();
dy=dt.retdy();
int id=Integer.parseInt(dy);
if(id<10) 
dy="0"+dy;
month=dt.retmon();
year=dt.retyear();
String need=dt.retneed();
String date=dy+"-"+month+"-"+year;
Statement st5,st6,st7;
ResultSet rs5,rs6,rs7;
Connection con;
q="select distinct(icid) from idpays where rdid='"+s+"' and to_char(dor,'dd-fmmonth-yyyy')";
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
String p1="select icid,iordid,mdp,amount,cmt from idpays where rdid='"+s+"'";
String p2=" and to_char(dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and ";
String p3="need='"+need+"' order by icid";
String p=p1+p2+p3;
rs5=st5.executeQuery(p);
out.println("<table border=\"1\" bgcolor=ffffb0 bordercolor=b75b00 cellpadding=5>");
out.println("<tr bgcolor=b75b00><td><b>Custid</b></td><td><b>Orderno</b></td>");
out.println("<td><b>ModeOfPayt</b></td><td><b>");
out.println("TotalAmount(inc trchges)</b></td><td><b>Comments</b></td></tr>");
while(rs5.next())
{
out.println("<tr><td>"+rs5.getString(1)+"</td><td>"+rs5.getString(2)+"</td>");
out.println("<td>"+rs5.getString(3)+"</td><td>"+rs5.getString(4)+"</td>");
out.println("<td>"+rs5.getString(5)+"</td></tr>");
}
out.println("</table>");
String b1="select d.iorid,d.icid,d.ddnumber,d.bankname from ddinfo d,idpays i where i.rdid='";
String b2=s+"' and i.rdid=d.rdid and to_char(i.dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and ";
String b3="i.need='"+need+"' and i.mdp='dd' and i.icid=d.icid and ";
String b4="d.iorid=i.iordid order by d.icid";
String b=b1+b2+b3+b4;
rs6=st6.executeQuery(b);
rs7=st7.executeQuery(b);
if(!rs6.next()){out.println("<br>All Customers pay their amount through VPP.");}
else
{
out.println("<br><br><u><b>DDInformation</b></u> of customers whoose <b>mode of payment</b> is");
 out.println("<u><b>DD</b></u>.");
out.println("<table border=\"1\" bordercolor=ffffbo bgcolor= cellpadding=5>");
out.println("<tr bgcolor=ffffb0><td><b>Custid</b></td><td><b>OrderNo</b></td><td><b>DDnumber");
out.println("</b></td><td><b>BankName</b></td></tr>");
while(rs7.next())
 {
out.println("<trbgcolor=ffffb0 ><td>"+rs7.getString(2)+"</td><td>"+rs7.getString(1)+"</td><td>");
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

