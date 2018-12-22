<HTML>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<center><a href="home.html">HOME</a><br><br></center>
<jsp:useBean id="s" scope="session" class="mytags.sendl"/>
<%

  String tto=request.getParameter("to");
  String frm=request.getParameter("fr");
  String tsb=request.getParameter("sub");
  String tms=request.getParameter("msg");
%>
<center>
<table>
<tr><td>To:</td><td><%=tto%></td></tr>
 <tr><td>From:</td><td><%=frm%></td></tr>
<tr><td>sub:</td><td><%=tsb%></td></tr>
<tr><td>Message:</td><td><%=tms%></td></tr>
<%
 int flag=s.sendmail(tto,frm,tsb,tms);
  if(flag==1)
  out.println("<b>Your Mail has been sent.</b>");
  else
  out.println("<b>Failure delivery.</b>");
%>
</table>
</center>

</body>
</html>
