<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<html>
 <head>
 </head>
<body bgcolor="lightyellow">
<form name="aform" method="get" action="decideBirth.do">
 <center>
 <table border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td>
  <center><font size=5><u> Death Certificate</u></font></center>
 </td>
 </table>
<table width="30%" border="0" cellspacing="5" cellpadding="0" size=4>
  <tr>
   <td>
   <font size=4 >Certificate ID</font></td>
   <td><font size=4 >:</font></td>
   <td><font size=4><c:out value="${requestScope.birthcer.bcid}" /></font></td>
  </tr>
  <tr>
   <td><font size=4>First Name</td>
   <td><font size=4>:</font></td>
   <td><font size=4><c:out value="${requestScope.birthcer.fname}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Last Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.lname}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Father Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.father}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Mother Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.mname}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>ResidentailAddress</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.radd}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Perminent Address</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.padd}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Date OF Birth</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.dob}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Sex</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.sex}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Caste</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.cast}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Birth Place</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.bplace}" /></font></td>
  </tr>
 <tr>
  <td><font size=4>Dr. Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.drname}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Father Occupation</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.foccup}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Dateof Registration</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.dor}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Hospital</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.birthcer.hospital}" /></font></td>
  </tr>
    <br><br>
	<input type="hidden" name="bcid" value='<%=((org.district.BirthCer)request.getAttribute("birthcer")).getBcid()%>'/>
  <tr>
  <td align=center><font size=4><input type="submit" name="submit" value="approved"/>  </td>
  <td align=center><font size=4><input type="submit"  name="submit" value="deny"/></font></td>
  </tr>
</table>
 </center>
</form>
</body>
</html>