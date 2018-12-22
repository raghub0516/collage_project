<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="apdlr.html">back</a>
<br><br><br><br>
<jsp:useBean id="ad" scope="session" class="mytags.appdlr"/>
 <jsp:setProperty name="ad" property="*"/>
<%@page import="java.sql.*"%>

<%@page import="java.util.*"%>
<%
   String cty,ste,dtt,qrf,qrs,qrt;
   ad.estconnection();
   int flag=0;
   flag=ad.existing();
   if(flag==1)
   {
    out.println("<b> Dealer already Existing in Area specified by you.<br><br>");
    out.print("<img src=\"images/redDot.gif\">");
    out.println("<a href=\"ddlrship.jsp\">Clickhere</a> ");
    out.println("to remove existing Dealer.</b>");
   }  
   else
   {
   ad.expire();
   
   try
    {
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

     Statement sts=con.createStatement();
     Statement sta=con.createStatement();
     Statement mst=con.createStatement();
     Statement chr=con.createStatement();
     cty=ad.retcoun();
     ste=ad.retsta();
     dtt=ad.retdst();
    qrf="select d.dcode,d.lname,d.firm,d.phone,d.email,d.address,e.prodeal,e.anntrv,e.me from ";
    qrs="dealers d,exper e where d.dcode=e.dcode and d.status='u' and ";
    qrt="d.country='"+cty+"' and d.state='"+ste+"' and district='"+dtt+"'";
   // out.println(qrf+qrs+qrt);
    ResultSet rsq=sta.executeQuery(qrf+qrs+qrt);
    ResultSet rss=sts.executeQuery(qrf+qrs+qrt);
    if(!rsq.next())
     {
     out.println("<b><font color=brown>No Applications Recieved from Speicified Area</font></b>");
      }
    else
     {
  out.println("<b><u>Applications existing for the Specified area are as below:-</u></b>");
  out.println("<table border=\"1\" cellpadding=5 bordercolor=b75b00 bgcolor=ffffb0>");
  out.println("<tr bgcolor=b75b00><td><b>CodeNo</b></td><td><b>Name</b></td>");
  out.println("<td><b>FirmName</b></td><td><b>PhoneNum</b></td>");
  out.println("<td><b>EmailId</b></td><td><b>Address</b></td><td><b>ProductsDealing</b>");
  out.println("</td><td><b>AnnualTrOver</b></td>");
  out.println("<td><b>MktgExper</b><br>(inyrs)</td></tr>");
  Vector v=new Vector();
  while(rss.next())
  {
   String tt=rss.getString(1);
   v.addElement(tt);
   out.println("<tr><td>"+tt+"</td><td>"+rss.getString(2)+"</td><td>");
   out.println(rss.getString(3)+"</td><td>"+rss.getString(4)+"</td><td>");
   out.println(rss.getString(5)+"</td><td>"+rss.getString(6)+"</td><td>");
   out.println(rss.getString(7)+"</td><td>"+rss.getString(8)+"</td><td>");
   out.println(rss.getString(9)+"</td></tr>");
  }
  out.println("</table>");
  String mqr="select max(k.me) from exper k,dealers s where k.dcode=s.dcode and ";
  String mqs="s.country='"+cty+"' and s.state='"+ste+"' and s.district='"+dtt+"' and s.status='u'";
  String mqo="select d.dcode from dealers d,exper e where e.dcode=d.dcode and ";
  String mqt="d.country='"+cty+"' and d.state='"+ste+"' and d.district='"+dtt+"' and d.status='u' and ";
  String mqq="e.me IN ("+mqr+mqs+")";
  //out.println(mqo+mqt+mqq);
  ResultSet mrs=mst.executeQuery(mqo+mqt+mqq);
  mrs.next();
  String temp=mrs.getString(1);
  out.println("<br>We Recommend the person with code no <b>'"+temp+"'</b> can be appointed as ");
  out.println(" dealer because he has Max marketing experience or applied first among ");
  out.println("above applicants.");
  String[] dcs=new String[v.size()];
  v.copyInto(dcs);
  ResultSet crs=chr.executeQuery("select * from chrges where country='"+cty+"'");
  int ff=0;
  if(!crs.next())
  {
  ff=1;
  out.println("<form action=\"appoint.jsp\" name=\"f1\" onsubmit=\"return check()\" method=post>");
  out.println("<input type=\"hidden\" name=\"hd\" value=\"0\">");
  }
  else
  {out.println("<form action=\"appoint.jsp\" method=post>");
   out.println("<input type=\"hidden\" name=\"hd\" value=\"1\">"); 
   }
  out.println("<br><br><b>select codeno <select name=\"rdc\" size=1 STYLE=\"background:lightblue\">");
  for(int i=0;i<dcs.length;i++)
   out.println("<option value=\""+dcs[i]+"\">"+dcs[i]+"</option>");
  out.println("</select><br> ");
  //ResultSet crs=chr.executeQuery("select * from chrges where country='"+cty+"'");
  if(ff==1)
  {
   out.println("<script language=\"JavaScript\">");
   out.println("function check(){ if(f1.trs.value==\"\") {");
   out.println("alert(\"please enter transport charge\");");
   out.println("f1.trs.focus();");
   out.println("return false; } return true; } </script>");
   out.print("Please enter TransportCharge(upto 10itms)");
   out.println("<input type=\"text\" name=\"trs\" size=10>"); 
  }
  out.println("<br><br>click <input type=\"submit\" name=\"submit\" value=\"O.K\"> to appoint.</b>");
  out.println("</form>");
}
}
catch(Exception e)
{out.println(e.getMessage());}}
%>
</body>
</html>
