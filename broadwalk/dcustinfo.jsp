<html>
<jsp:useBean id="dte" scope="session" class="mytags.orddte"/>
<jsp:setProperty name="dte" property="*"/>
<%@ page import="java.sql.*"%>
<%
String q,q1,q2,dy,month,year,c,c1,c2;
int flag=0;
dy=request.getParameter("dy");
int idd=Integer.parseInt(dy);
if(idd<10)
dy="0"+dy;
month=request.getParameter("month");
year=request.getParameter("year");
String date=dy+"-"+month+"-"+year;
Statement st3,st8;
ResultSet rs3,rs8;
Connection con;
if(request.getParameter("submit").equals("O.K"))
  {
q="select distinct(dcustid) from dpays where to_char(dor,'dd-fmmonth-yyyy')";
q1=" LIKE '"+date+"' and need='"+request.getParameter("need")+"'";
q2=q+q1;
c1="select dcid,fname,lname,phone,fax,email,address,zip from dcustomers where dcid IN";
c2=" ("+q2+") order by dcid";
c=c1+c2;
try
 {
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

st3=con.createStatement();
st8=con.createStatement();
rs3=st3.executeQuery(q2);
if(!rs3.next())
{out.println("No Orders Placed on <u>"+date+"</u> with need "+request.getParameter("need")+".");
}
else{
out.println("<b><u>Customers Information</u> who placed order on <u>"); 
out.println(date+"</u>&nbsp;with need "+request.getParameter("need")+".</b><br>");
rs8=st8.executeQuery(c);
out.println("<br><table border=\"1\" bordercolor=b75b00 bgcolor=ffffb0 cellpadding=5>");
out.println("<tr bgcolor=b75b00><td><b>CustomerNo</b></td><td><b>Firstname</b></td>");
out.println("<td><b>Lastname</b></td><td><b>Phone no</b></td><td><b>Fax no</b></td>");
out.println("<td><b>Email</b></td><td><b>Address</b></td><td><b>Zip</b></td></tr>");
while(rs8.next())
{
out.println("<tr><td>"+rs8.getString(1)+"</td><td>"+rs8.getString(2)+"</td><td>");
out.println(rs8.getString(3)+"</td><td>"+rs8.getString(4)+"</td><td>"+rs8.getString(5));
out.println("</td><td>"+rs8.getString(6)+"</td><td>"+rs8.getString(7)+"</td><td>");
out.println(rs8.getString(8)+"</</td></tr>");
}
out.println("</table>");
out.print("<br><br><img src=\"images/redDot.gif\">  ");
out.print("<a href=\"http://localhost:8000/project/dcorderinfo.jsp\"><b><u>click here</a></u></b>");
out.print("<b>to get Order Information of above customers.</b>"); 
out.print("<br><br><img src=\"images/redDot.gif\">  ");
out.print("<a href=\"http://localhost:8000/project/dcpayinfo.jsp\"><b><u>click here</a></u></b>");
out.print("<b>to get Payment Information of above customers.</b>"); 
}
}
catch(Exception e)
{
out.println(e.getMessage());
}}%>

