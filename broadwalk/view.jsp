<html>
<jsp:useBean id="pr" scope="session" class="mytags.procls"/>
<%
if(request.getParameter("submit").equals("view"))
{
 String[] prns=pr.retpronames();
 String[] prcs=pr.retprices();
 String[] tchg=pr.retchges();
 String[] tcap=pr.retcapacity();
 String[] tamt=pr.retamounts();
 float f,temp,total;
 out.println("you have placed the following order<br>");
 out.print("<table border=1><tr><td>Item Name#</td><td>Price Amt</td><td>Transportchge</td>");
 out.println("<td>Amount</td></tr>");
 
 int l=prns.length;

 if(l!=0)
 {
 for(int i=0;i<l;i++)
  {
 out.print("<tr><td>"+prns[i]+"("+tcap+")"+"</td><td>"+prcs[i]+"</td><td>"+tchg[i]+"</td>");
 out.print("<td>"+tamt[i]+"</td></tr></table>");
  }
 }
 else
 out.println("No order");
 }
  %>
</html>
