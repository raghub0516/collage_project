<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<jsp:useBean  id="d" scope="session" class="mytags.applicant" />
<jsp:setProperty  name="d" property="*"/> 
 <% 
   out.println("hi how r u");
   d.processrequest(request);
out.println("Your Application accepted<br>");
out.println("<b>It is valid till date :"+d.retdate()+"</b>");
 %>
</html>
