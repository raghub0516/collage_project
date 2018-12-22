
<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<a href="incosts.jsp">back</a><br><br>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
<jsp:useBean id="dt" scope="session" class="mytags.orddte"/>
<%@ page language="Java" import="java.sql.*"%>
<%
String q,q1,q2,dy,month,year,c,c1,c2,need;
int flag=0;
String[] hd=new String[100];
String s=dlr.retdcode();
dy=dt.retdy();
int idy=Integer.parseInt(dy);
if(idy<10)
dy="0"+dy;
month=dt.retmon();
year=dt.retyear();
need=dt.retneed();
String date=dy+"-"+month+"-"+year;
Statement st,st1,st2,st4;
ResultSet rs,rs1,rs2,rs4;
Connection con;
q="select distinct(icid) from idpays where rdid='"+s+"' and to_char(dor,'dd-fmmonth-yyyy')";
q1=" LIKE '"+date+"' and need='"+need+"'";
q2=q+q1;
try
 {
Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st4=con.createStatement();
rs=st.executeQuery(q2);
out.println("<br><b><u>Order Information</u> Of above customers.</b>");
out.println("<table border=\"1\" bordercolor=b75b00 bgcolor=ffffb0 cellpadding=5>");
out.println("<tr bgcolor=b75b00><td><b>CustId</b></td><td><b>OrderInformation</b></td>");
out.println("</tr>");
while(rs.next())
  {
String id=rs.getString(1);
out.println("<tr><td>"+id+"</td>");
out.println("<td><table border=\"1\"bordercolor=b75b00  cellpadding=4><tr bgcolor=ffffb0><td>");
out.println("<b>OrderNo</b></td><td><b>ProductInfo</b></td></tr>"); 
String q3="select iordid from idpays where rdid='"+s+"' and icid='"+id+"' and ";
String q4="to_char(dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and need='";
String q5=need+"' order by iordid";
String q6=q3+q4+q5;
int i=0;
rs1=st1.executeQuery(q6);
while(rs1.next())
 {
 hd[i]=rs1.getString(1);
 i++;
 }
int j;
for(j=0;j<i;j++)
 {
out.println("<tr><td>"+hd[j]+"</td>");
String q7="select prodid,quantity,idamt from idrorders where rdid='"+s+"' and icid='"+id+"'";
String q8=" and iordid='"+hd[j]+"'";
String q9=q7+q8;
out.println("<td><table border=\"1\"bordercolor=b75b00  cellpadding=4><tr bgcolor=ffffb0>");
out.println("<td><b>prodid</b></td><td><b>Quantity</b></td><td><b>Amount</b></td></tr>");
rs2=st2.executeQuery(q9);
while(rs2.next())
 {
out.println("<tr><td>"+rs2.getString(1)+"</td><td>"+rs2.getString(2)+"</td>");
out.println("<td>"+rs2.getString(3)+"</td></tr>");
 }
out.println("</table></td></tr>");
}
out.println("</td></tr></table>");
}
out.println("</table>");
String d1="select to_char(dor+4,'dd-fmmonth-yyyy'),to_char(dor+8,'dd-fmmonth-yyyy')";
String d2=",to_char(dor+12,'dd-fmmonth-yyyy') from idpays where to_char(dor,'dd-fmmonth-yyyy')";
String d3="LIKE '"+date+"' and rdid='"+s+"'";
String d=d1+d2+d3;
rs4=st4.executeQuery(d);
rs4.next();
out.println("<font color=\"red\">");
if(need.equals("urgent"))
out.println("<b>These Orders need to be dispatched on/before</b></font> "+rs4.getString(1)+".");
else
if(need.equals("immediate"))
out.println("<b>These Orders need to be dispatched on/before</b></font> "+rs4.getString(2)+".");
else
out.println("<b>These Orders need to be dispatched on/before</b></font> "+rs4.getString(3)+".");
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
