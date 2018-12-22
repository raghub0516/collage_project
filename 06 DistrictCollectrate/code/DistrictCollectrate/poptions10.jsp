<html>
<head>
<title>
 District Collectorate Management System
</title>
</head>

<body>

<br>
<br>
<br>
<br>
<br>
<br>
<center>
<%if(session.getAttribute("username")!=null) {
   session.invalidate();
   response.sendRedirect("PoliceLogin.jsp");
   System.out.println("code is executed");
} %>
</center>
</body>
</html>