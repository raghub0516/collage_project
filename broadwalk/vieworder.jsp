<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<jsp:useBean id="pr" scope="session" class="mytags.procls"/>
<%
 String[] prns=pr.retpronames();
 String[] prcs=pr.retprices();
 String[] tcap=pr.retcapacity();
 String[] tamt=pr.retamounts();
 String[] tqty=pr.retquantity();
 double f,temp;
 double total=0.0;
 Double d;
 int m=0; 
int l=prns.length;
 if(l!=0)
 {
 out.println("<h4><U>ITEMS IN CART:</U></h4>");
 out.print("<table border=1 bgcolor=ffffbo bordercolor=brown>");
 out.println("<tr bgcolor=b75b00><td><b>ItemName#</b></td>");
out.print("<td><b>Price per sqft</b></td>");
out.print("<td><b>Quantity in sqft</b></td>");
 out.println("<td><b>Amount</b></td></tr>");
for(int i=0;i<prns.length;i++)
  {
Double dd=new Double(tamt[i]);
double td=dd.doubleValue();
out.print("<tr><td>"+prns[i]+""+tcap[i]+""+"</td><td>");
out.print(prcs[i]+"</td><td>"+tqty[i]+"</td>");
 out.print("<td>"+(float)td+"</td></tr>");
 d=new Double(tamt[i]);
 //out.println(tamt[i]);
 m=m+Integer.parseInt(tqty[i]);
 //out.println(d.doubleValue());
 //out.println(total);	
 total=total+d.doubleValue();
 //out.println((float)total);
  }
  out.println("</table><br><b>No.of sqft  in CART:- </b>"+m);
  double divpart=m/10;
  int qpart=m%10;
  if(qpart>0)divpart=divpart+1.0; 
  out.println("<br><b>Total Amount=</b>"+(float)total);
  if(divpart==0)out.println("<br><b>Transport Charge=</b>"+(pr.transcharge()));
  else
  out.println("<br><b>Transport Charge=</b>"+(pr.transcharge())*divpart);
  if(total!=0.0)
  {
  if(divpart!=0)
  total=total+(pr.transcharge()*divpart);
  else
  total=total+(pr.transcharge()*1.0); 
  out.println("<br><b>Total Amount(including transportcharge)=</b>"+(float)total);}
}
 else
 out.println("<br><B>No Items Added to CART</B>");
//out.println("<A href=\"products.html\">BACK TO ORDER FORM</A>");
%>
