<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="viewchges.jsp">view charges</a>
<br><br>
<jsp:useBean id="cpd" scope="session" class="mytags.delchrges"/>
<%
 String st=cpd.retcoun();
 cpd.deldett(st);
 out.println("<b>From now your products are not available to \""+st+"\".</b>");
%>
