<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<a href="ilogin.jsp">home</a><br><br>
<jsp:useBean id="dr" scope="session" class="mytags.drocls"/>
<%
 String[] prns=dr.retpronames();
 String[] prcs=dr.retprices();
 String[] tcap=dr.retcapacity();
 String[] tamt=dr.retamounts();
 String[] tqty=dr.retquantity();
 double f,temp;
 double total=0.0;
 Double d;
 int m=0; 
int l=prns.length;
 //out.println(l);
 if(l!=0)
 {
 out.println("<h4><U>ITEMS IN CART:</U></h4>");
 out.print("<table border=1 bordercolor=b75b00 bgcolor=ffffb0>");
out.print("<tr bgcolor=b75b00><td><b>Item Name#</b></td>");
out.print("<td><b>Price Each</b></td>");
out.print("<td><b>Quantity</b></td>");
 out.println("<td><b>Amount</b></td></tr>");
for(int i=0;i<prns.length;i++)
  {
out.print("<tr><td>"+prns[i]+""+tcap[i]+""+"</td><td>");
out.print(prcs[i]+"</td><td>"+tqty[i]+"</td>");
 out.print("<td>"+tamt[i]+"</td></tr>");
 d=new Double(tamt[i]);
 //out.println(tamt[i]);
 m=m+Integer.parseInt(tqty[i]);
 //out.println(d.doubleValue());
 //out.println(total);	
 total=total+d.doubleValue();
 //out.println((float)total);
  }
  out.println("</table><br><b>No.of Items in CART:- </b>"+m);
  double divpart=m/10;
  int qpart=m%10;
  if(qpart>0)divpart=divpart+1.0; 
  out.println("<br><b>Total Amount=</b>"+(float)total);
  if(divpart==0)out.println("<br><b>Transport Charge=</b>"+(dr.transcharge()));
  else
  out.println("<br><b>Transport Charge=</b>"+(dr.transcharge())*divpart);
  if(total!=0.0)
  {
  if(divpart!=0)
  total=total+(dr.transcharge()*divpart);
  else
  total=total+(dr.transcharge()*1.0); 
  out.println("<br><b>Total Amount(including transportcharge)=</b>"+(float)total);}
}
 else
 out.println("<br><B>No Items Added to CART</B>");
%>
