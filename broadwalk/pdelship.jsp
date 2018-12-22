<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href=ddlrship.jsp>back</a><br>
<jsp:useBean id="dd" scope="session" class="mytags.deldlr"/>
<%@page language="Java" import="java.sql.*"%>
<%
    String st=dd.retrde();
System.out.println(st);
    dd.removeall(st);
    out.println("<b>Dealer removed successfully.</b>");
%>
</body>
</html>  
