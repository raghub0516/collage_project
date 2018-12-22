<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<jsp:useBean id="dd" scope="session" class="mytags.deldlr"/>
 <jsp:setProperty name="dd" property="*"/>
<%
  dd.estconnection();
  int flag=dd.existing();
  if(flag==0)
  out.println("<font color=brown><b>No dealer existing in Specified Area</b></font>");
  else
  {
out.println("<br><b>You would like to remove dealer of "+request.getParameter("dst")+" district.</b>");
out.println("<br><br><b>Are You Sure");
out.println("<a href=\"pdelship.jsp\"><b>yes</a>/");
out.println("<a href=\"adlink.html\">no</a>?</b>");
out.println("<br><br><br><b>Note:-<br>If you Click 'yes' All the orders placed in his area gets");
out.println(" cancelled and all orders placed by that dealer will also be removed.</b>");
}
%>

 
</html> 