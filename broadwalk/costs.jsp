
<html>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
<%@ page language="Java" import="java.sql.*"%>
<%
String q,q1,q2,dy,month,year,c,c1,c2;
int flag=0;
String[] hd=new String[100];
String s=dlr.retdcode();
dy=request.getParameter("dy");
month=request.getParameter("month");
year=request.getParameter("year");
String date=dy+"-"+month+"-"+year;
Statement st,st1,st2,st3,st4,st5,st6,st7,st8;
ResultSet rs,rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8;
Connection con;
if(request.getParameter("submit").equals("O.K"))
  {
q="select distinct(icid) from idpays where rdid='"+s+"' and to_char(dor,'dd-fmmonth-yyyy')";
q1=" LIKE '"+date+"' and need='"+request.getParameter("need")+"'";
q2=q+q1;
c1="select icid,fname,lname,phone,fax,email,address,zip from icustomers where icid IN";
c2=" ("+q2+")";
c=c1+c2;
//out.println(c);
try
 {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();
st4=con.createStatement();
st5=con.createStatement();
st6=con.createStatement();
st7=con.createStatement();
st8=con.createStatement();
rs=st.executeQuery(q2);
rs3=st3.executeQuery(q2);
if(!rs3.next())
{out.println("No Orders Placed on <u>"+date+"</u> with need "+request.getParameter("need")+".");
}
else{
out.println("<b><u>Customers Information</u> who placed order on <u>"); 
out.println(date+"</u>&nbsp;with need "+request.getParameter("need")+".</b>");
rs8=st8.executeQuery(c);
out.println("<table border=\"1\"><tr><td>Custid</td><td>Firstname</td><td>Lastname</td>");
out.println("<td>Phone no</td><td>Fax no</td><td>Email</td><td>Address</td><td>Zip</td></tr>");
while(rs8.next())
{
out.println("<tr><td>"+rs8.getString(1)+"</td><td>"+rs8.getString(2)+"</td><td>");
out.println(rs8.getString(3)+"</td><td>"+rs8.getString(4)+"</td><td>"+rs8.getString(5));
out.println("</td><td>"+rs8.getString(6)+"</td><td>"+rs8.getString(7)+"</td><td>");
out.println(rs8.getString(8)+"</td></tr>");
}
out.println("</table>");
out.println("<br><b><u>Order Information</u> Of above customers.</b>");
out.println("<table border=\"1\">");
out.println("<tr><td>CustId</td><td>OrderInformation</td>");
out.println("</tr>");
while(rs.next())
  {
String id=rs.getString(1);
out.println("<tr><td>"+id+"</td>");
out.println("<td><table border=\"1\"><tr><td>OrderNo</td><td>ProductInfo</td></tr>"); 
String q3="select iordid from idpays where rdid='"+s+"' and icid='"+id+"' and ";
String q4="to_char(dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and need='";
String q5=request.getParameter("need")+"'";
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
out.println("<td><table border=\"1\"><tr><td>prodid</td><td>Quantity</td><td>Amount</td></tr>");
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
if(request.getParameter("need").equals("urgent"))
out.println("<b>These Orders need to be dispatched on/before</b></font> "+rs4.getString(1)+".");
else
if(request.getParameter("need").equals("immediate"))
out.println("<b>These Orders need to be dispatched on/before</b></font> "+rs4.getString(2)+".");
else
out.println("<b>These Orders need to be dispatched on/before</b></font> "+rs4.getString(3)+".");
out.println("<br><br><br><u><b>Payment Information</b></u> of above Orders.");
String p1="select icid,iordid,mdp,amount,cmt from idpays where rdid='"+s+"'";
String p2=" and to_char(dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and ";
String p3="need='"+request.getParameter("need")+"'";
String p=p1+p2+p3;
rs5=st5.executeQuery(p);
out.println("<table border=\"1\"><tr><td>Custid</td><td>Orderno</td><td>ModeOfPayt</td><td>");
out.println("TotalAmount(inc trchges)</td><td>Comments</td></tr>");
while(rs5.next())
{
out.println("<tr><td>"+rs5.getString(1)+"</td><td>"+rs5.getString(2)+"</td>");
out.println("<td>"+rs5.getString(3)+"</td><td>"+rs5.getString(4)+"</td>");
out.println("<td>"+rs5.getString(5)+"</td></tr>");
}
out.println("</table>");
String b1="select d.iordid,d.icid,d.ddno,d.bankname from ddinfo d,idpays i where i.rdid='";
String b2=s+"' and i.rdid=d.rdid and to_char(i.dor,'dd-fmmonth-yyyy') LIKE '"+date+"' and ";
String b3="i.need='"+request.getParameter("need")+"' and i.mdp='dd' and i.icid=d.icid and ";
String b4="d.iordid=i.iordid";
String b=b1+b2+b3+b4;
rs6=st6.executeQuery(b);
rs7=st7.executeQuery(b);
if(!rs6.next()){out.println("<br>All Customers pay their amount through VPP.");}
else
{
out.println("<br><br><u>DDInformation</u> of customers whoose <b>mode of payment</b> is"); out.println("<u><b>DD</b></u>.");
out.println("<table border=\"1\"><tr><td>Custid</td><td>OrderNo</td><td>DDnumber");
out.println("</td><td>BankName</td></tr>");
while(rs7.next())
 {
out.println("<tr><td>"+rs7.getString(2)+"</td><td>"+rs7.getString(1)+"</td><td>");
out.println(rs7.getString(3)+"</td><td>"+rs7.getString(4)+"</td></tr");
}}
out.println("</table>");
}
}
catch(Exception e)
 {
out.println(e);
}}
%>
</html>

