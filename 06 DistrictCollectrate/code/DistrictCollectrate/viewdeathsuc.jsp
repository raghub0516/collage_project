<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<html>
 <head>
 </head>
<body bgcolor="lightyellow">
 <center>
 <table border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td>
  <center><font size=5><u>Death Certificate</u></font></center>
 </td>
 </table>
<table width="30%" border="0" cellspacing="5" cellpadding="0" size=4>
  <tr>
   <td>
   <font size=4 >Certificate ID</font></td>
   <td><font size=4 >:</font></td>
   <td><font size=4><c:out value="${requestScope.deathcer.dcid}" /></font></td>
  </tr>
  <tr>
   <td><font size=4>First Name</td>
   <td><font size=4>:</font></td>
   <td><font size=4><c:out value="${requestScope.deathcer.fname}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Last Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.lname}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Father Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.father}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Mother Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.mname}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>ResidentailAddress</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.radd}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Perminent Address</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.padd}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Date Of  Birth</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.dob}"/></font></td>
  </tr>
 <tr>
  <td><font size=4>Date Of Death</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.dod}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Sex</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.sex}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Caste</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.cast}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>DeathPlace</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.dplace}" /></font></td>
  </tr>
 <tr>
  <td><font size=4>Dr. Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.drname}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Occupation</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.occup}" /></font></td>
  </tr>
<tr>
<tr>
  <td><font size=4>Reason for Death</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.reason}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Dateof Registration</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.dor}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Hospital</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.deathcer.hospital}" /></font></td>
  </tr>
</table>
</center>
</form>
</body>
</html>