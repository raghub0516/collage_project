<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="dorder.jsp">back</a>&nbsp&nbsp&nbsp<a href="dvieworder.jsp">vieworder</a><br><br><br>
<jsp:useBean id="dr" scope="session" class="mytags.drocls"/>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
<jsp:setProperty name="dr" property="*"/>
<%
  
 if(request.getParameter("submit").equals("Submit Form"))
 {
%>
<jsp:forward page="drdfrm.jsp"/>
<%
} else {
  String s=dlr.retdcode();
  String coun=dlr.retcoun();
  int m=0;
  if(request.getParameter("hide").equals("false"))
         out.println("<B>No Item Added To CART</B>");
    else
        dr.processRequest(request,s,coun);
     String[] prns=dr.retpronames();
      int l=prns.length;
      String[] qt=dr.retquantity();
      for(int i=0;i<l;i++)m=m+Integer.parseInt(qt[i]);
     out.println("<br><b>No.of Items In CART :-<u></b>"+m);
}
%>
</u>
<HR>

</html>

