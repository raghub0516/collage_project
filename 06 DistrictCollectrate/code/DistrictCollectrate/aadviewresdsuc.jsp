<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<html>
 <head>
 </head>
<body bgcolor="lightyellow">  
<form name="aform" method="get" action="decideResident.do">
 <center>
 <table border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td>
  <center><font size=5><u>Residential Certificate</u></font></center>
 </td>
 </table>
<table width="30%" border="0" cellspacing="5" cellpadding="0" size=4>
  <tr>
   <td>
   <font size=4 >Certificate ID</font></td>
   <td><font size=4 >:</font></td>
   <td><font size=4><c:out value="${requestScope.resdcer.rcid}" /></font></td>
  </tr>
  <tr>
   <td><font size=4>First Name</td>
   <td><font size=4>:</font></td>
   <td><font size=4><c:out value="${requestScope.resdcer.fname}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Last Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.lname}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>Father Name</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.father}" /></font></td>
  </tr>
  <tr>
  <td><font size=4>ResidentailAddress</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.radd}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Perminent Address</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.padd}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Date Of  Birth</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.dob}"/></font></td>
  </tr>
  <tr>
  <td><font size=4>Living Since</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.ls}"/></font></td>
  </tr>
 <tr>
  <td><font size=4>Occupation</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.occup}" /></font></td>
  </tr>
 <tr>
  <td><font size=4>Caste</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.cast}" /></font></td>
  </tr>
<tr>
<tr>
  <td><font size=4>Purpose of Certificate</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.purpose}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Dateof Registration</font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.dor}" /></font></td>
  </tr>
<tr>
  <td><font size=4>Reason </font></td>
  <td><font size=4>:</font></td>
  <td><font size=4><c:out value="${requestScope.resdcer.reason}" /></font></td>
  </tr>
      <br><br>
	<input type="hidden" name="rcid" value='<%=((org.district.ResdCer)request.getAttribute("resdcer")).getRcid()%>'/>
  <tr>
  <td align=center><font size=4><input type="submit" name="submit" value="approved"/>  </td>
  <td align=center><font size=4><input type="submit"  name="submit" value="deny"/></font></td>
  </tr>  
</table>
 </center>
</form>
</body>
</html>