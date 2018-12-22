<html>
<jsp:useBean id="dlt" scope="session" class="mytags.orddte"/>
<jsp:setProperty name="dlt" property="*"/>
<%@ page language="Java" import="java.sql.*"%>
<%
String q,q1,q2,dy,month,year,c,c1,c2;
int flag=0;
dy=request.getParameter("dy");
int ddy=Integer.parseInt(dy);
if(ddy<10)
dy="0"+dy;
month=request.getParameter("month");
year=request.getParameter("year");
String date=dy+"-"+month+"-"+year;
Statement st3,st8;
ResultSet rs3,rs8;
Connection con;
if(request.getParameter("submit").equals("O.K"))
  {
q="select distinct(rdid) from depays where to_char(dor,'dd-fmmonth-yyyy')";
q1=" LIKE '"+date+"' and need='"+request.getParameter("need")+"'";
q2=q+q1;
c1="select rdcode,fname,lname,frmname,phone,fax,email,adr,zip from rdealers where rdcode IN";
c2=" ("+q2+") order by rdcode";
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
out.println("<b><u>Dealers Information</u> who placed order on <u>"); 
out.println(date+"</u>&nbsp;with need "+request.getParameter("need")+".</b>");
rs8=st8.executeQuery(c);
out.println("<br><table border=\"1\" bordercolor=b75b00 bgcolor=ffffb0 cellpadding=5>");
out.println("<tr bgcolor=b75b00><td><b>Dealercode</b></td><td><b>FirstName</b></td><td><b>Lastname</b></td>");
out.print("<td><b>FirmName</b></td><td><b>phone</b></td><td><b>FaxNo</b>"); 
out.println("</td><td><b>Email</b></td><td><b>Address</b></td><td><b>Zip</b></td></tr>");
while(rs8.next())
{
out.println("<tr><td>"+rs8.getString(1)+"</td><td>"+rs8.getString(2)+"</td><td>");
out.println(rs8.getString(3)+"</td><td>"+rs8.getString(4)+"</td><td>"+rs8.getString(5));
out.println("</td><td>"+rs8.getString(6)+"</td><td>"+rs8.getString(7)+"</td><td>");
out.println(rs8.getString(8)+"</td><td>"+rs8.getString(9)+"</td></tr>");
}
out.println("</table>");
out.print("<br><br><img src=\"images/redDot.gif\">  ");
out.print("<a href=\"dlorderinfo.jsp\"><b><u>click here</a></u></b>");
out.print("<b>to get Order Information of above Dealers.</b>"); 
out.print("<br><br><img src=\"images/redDot.gif\">  ");
out.print("<a href=\"dlpayinfo.jsp\"><b>clickhere</a></u></b>");
out.print("<b>to get Payment Information of above Dealers.</b>"); 
}
}
catch(Exception e)
{
out.println(e.getMessage());
}}%>

