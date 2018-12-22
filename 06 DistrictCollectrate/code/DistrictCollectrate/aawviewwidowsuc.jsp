<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<html>
 <head>
 </head>  
<body bgcolor="lightyellow">
 <center>
 <table border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td>  
  <center><font size=5><u>Approved Widow Certificate</u></font></center>
 </td>
 </table>
<form  method="get" action="decideWidow.do">
<table width="30%" border="0" cellspacing="5" cellpadding="0" size=4>
  <tr>
   <td>
   <font size=4 >Certificate ID</font></td>
   <td><font size=4 >:</font></td>
   <td><font size=4><c:out value="${requestScope.widowcer.wcid}" /></font></td>
  </tr>
  <tr>
   <td><font size=4>First Name</td>
   <td><font size=4>:</font></td>
   <td><font size=4><c:out value="${requestScope.widowcer.fname}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Last Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.lname}" /></font></td>
  </tr>
 <tr>
  <td><font size=4>Husband Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.hname}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>ResidentailAddress</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.radd}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Perminent Address</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.padd}"/></font></td>
  </tr>
   <tr>
  <td><font size=4>DeathCertificateId</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.dcid}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Date Of Death</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.dod}"/></font></td>
  </tr>
 <tr>
  <td><font size=4>DeathPlace</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.dplace}" /></font></td>
  </tr>
 <tr>
  <td><font size=4>Dr. Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.drname}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Occupation</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.occup}" /></font></td>
  </tr>
<tr>
<tr>
  <td><font size=4>Reason for Death</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.reason}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Dateof Registration</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.dor}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Hospital</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.widowcer.hospital}" /></font></td>
  </tr>
</table>
  </center>
</form>
</body>
</html>