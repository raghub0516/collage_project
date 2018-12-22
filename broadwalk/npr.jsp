<html>
<TITLE>OrderPlaced</TITLE>
<body background="images/center.jpg" alink=blue vlink=blue>
<%@page import="mytags.procls" %>
<jsp:useBean id="pr" scope="session" class="mytags.procls"/>
<jsp:setProperty name="pr" property="*"/>
<%
  if(request.getParameter("submit").equals("Submit Form"))
  {
%>
<jsp:forward page="anordfrm.jsp"/>  

<%
  } else {
  int m=0;
  if(request.getParameter("hide").equals("false"))
         out.println("<B>No Item Added To CART</B>");
    else
	{
	  System.out.println("before processing the request");
        pr.processRequest(request);
	  System.out.println("after processing the request");
	}
     String[] prns=pr.retpronames();
      int l=prns.length;
      String[] qt=pr.retquantity();
      for(int i=0;i<l;i++)m=m+Integer.parseInt(qt[i]);
     out.println("<br><b>No.of Items In CART :-<u></b>"+m);}
String cfname=request.getParameter("fname");
System.out.println(cfname);
String clname=request.getParameter("lname");
String cphn=request.getParameter("phn");
String cfax=request.getParameter("fax");
String ceml=request.getParameter("eml");
String cadr=request.getParameter("adr");
String ccountry=request.getParameter("country");
String csta=request.getParameter("sta");
String cdst=request.getParameter("dst");
String cddn=request.getParameter("ddn");
String cbnm=request.getParameter("bnm");
String cned=request.getParameter("ned");
String cmop=request.getParameter("mop");
System.out.println("=======000000=======");
System.out.println(cmop);
System.out.println("=======000000=======");

Cookie c1=new Cookie("fname",cfname);
Cookie c2=new Cookie("lname",clname);
Cookie c3=new Cookie("phn",cphn);
Cookie c4=new Cookie("fax",cfax);
Cookie c5=new Cookie("eml",ceml);
Cookie c6=new Cookie("adr",cadr);
Cookie c7=new Cookie("country",ccountry);
Cookie c8=new Cookie("sta",csta);
Cookie c9=new Cookie("dst",cdst);
Cookie c10=new Cookie("ddn",cddn);
Cookie c11=new Cookie("bnm",cbnm);
Cookie c12=new Cookie("ned",cned);
Cookie c13=new Cookie("mop",cmop);
response.addCookie(c1);
response.addCookie(c2);
response.addCookie(c3);
response.addCookie(c4);
response.addCookie(c5);
response.addCookie(c6);
response.addCookie(c7);
response.addCookie(c8);
response.addCookie(c9);
response.addCookie(c10);
response.addCookie(c11);
response.addCookie(c12);
response.addCookie(c13);

%>

	<FORM name=f1 onreset="return clearall" onsubmit="return checkinput()" 
action="npr.jsp" method=get>
<body background="images/center.jpg" alink=blue vlink=blue>

<P><FONT face=verdana>
<TABLE border=0>
  <TBODY>
  <TR>
    <TD width="35%"></TD>
    <TD width="25%"><FONT color=red></FONT>FirstName:</TD>
    <TD><INPUT name="fname" value="<%=cfname%>"></TD></TR>
  <TR>
    <TD></TD>
    <TD><FONT color=red></FONT>LastName:</TD>
    <TD><INPUT name="lname"value="<%=clname%>" ></TD></TR>
  <TR>
    <TD></TD>
    <TD><FONT color=red></FONT>Phone:</TD>
    <TD><INPUT name="phn"value="<%=cphn%>" ></TD></TR>
  <TR>
    <TD></TD>
    <TD>Fax:</TD>
    <TD><INPUT name="fax"value="<%=cfax%>" ></TD></TR>
  <TR>
    <TD></TD>
    <TD>Email:</TD>
    <TD><INPUT name="eml" value="<%=ceml%>"></TD></TR>
  <TR>
    <TD></TD>
    <TD><FONT color=red></FONT>Address:</TD>
    <TD><TEXTAREA name="adr" rows=5 value="<%=cadr%>"></TEXTAREA></TD></TR>
  <TR>
    <TD></TD>
    <TD>Country:</TD>
    <TD><input type="text"size="20" name="country" value="<%=ccountry%>"></TD>
</TR>  

<TR>
<TD></TD>
<TD>state:</td><td>
<input type="text"name="sta" size="20" value="<%=csta%>">
</select></TD>
</TR>
<tr>
<TD></TD>
<td>District:</TD><td>
<input type="text" name="dst" size="20"value="<%=cdst%>"></td>
</tr>


  <TR>
   
    <TD width="37%"></TD>
    <TD><B>&#9824;</B>DD Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD><INPUT type="hidden"name="ddn" value="<%=cddn%>"></TD></TR>
  <TR>
    <TD width="33%"></TD>
    <TD><B>&#9824;</B>Bank Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD><INPUT name="bnm" value="<%=cbnm%>"></TD></TR>
<Td><Input type="hidden" name="mop" value="<%=cmop%>"></td>
  <TR>
    <TD width="33%"></TD>
    <TD>Need: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD><input type="text" name="ned"size="20"value="<%=cned%>"></TD></TR>
   <TR><tr></tr><tr></tr>
	<td><td><TD><INPUT type="submit" name="submit" value="Submit Form"><B>to order.</B></TD>
   </TR>
</TABLE>
</html>
