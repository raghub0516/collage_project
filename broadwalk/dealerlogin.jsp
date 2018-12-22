<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<BR><BR>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
 <jsp:setProperty name="dlr" property="*"/>
<b>You are an authorised dealer of 
"<u><jsp:getProperty name="dlr" property="district"/></u>" District.</b> 
</b>
<br>
<br>
<img src="images/redDot.gif">&nbsp;&nbsp;
<a href="corder.jsp" TARGET=middle><b><u>click here</a></u></b>
to view <b>Customer order status</b> of <b><jsp:getProperty name="dlr" property="district"/></b>
district.
<br>
<br>
<img src="images/redDot.gif">&nbsp;&nbsp;
<a href="dorder.jsp" TARGET=middle><b><u>click here</a></u></b>
to place <b>Order.</b> 
<BR>
<br>
<img src="images/redDot.gif">&nbsp;&nbsp;
<a href="updealer.jsp" TARGET=middle><b><u>click here</a></u></b>
to Update <b>Your Information.</b> 
</html>
