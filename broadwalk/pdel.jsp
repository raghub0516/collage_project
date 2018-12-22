<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="dcatalog.jsp">view catalog</a>
<br><br>
<jsp:useBean id="dpd" scope="session" class="mytags.delprds"/>
<%
 String st=dpd.retpid();
 dpd.delproduct(st);
 out.println("<b>Product with code \""+st+"\" Successfully Removed from CATALOG</b>");
%>
