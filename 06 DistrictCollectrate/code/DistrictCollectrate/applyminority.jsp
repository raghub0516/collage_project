

<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.minority.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.minority.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.minority.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.minority.dob.value=="")
	{
	alert("Date of birth is required");
	return false;
	}
	else if(document.minority.resadd.value=="")
	{
	alert("Residential address is required");
	return false;
	}
	else if(document.minority.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(document.minority.religion.value=="")
	{
	alert("Religion is required");
	return false;
	}
	else if(document.minority.occup.value=="")
	{
	alert("Occupation is required");
	return false;
	}
	else if(document.minority.income.value=="")
	{
	alert("Annual income is required");
	return false;
	}
	else if(document.minority.purpose.value=="")
	{
	alert("Purpose is required");
	return false;
	}
	else 
	{
		return true;
	}
}
</script>
 </head>

<body bgcolor="lightyellow">
<center>
<font size=4 >
<u>Minority Certificate</u>
</font>
<form name="minority" method="get" action="storeminorityaction.do" target="main" onSubmit="return validate();" >
<table>
 <tr>
  <td><font size=4 >First Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="first"></td>
  <td><font size=4 >Last  Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="last"></td>
 </tr>
  <tr>
  <td><font size=4 >Father Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="fname"></td>
  <td><font size=4>Date Of Birth</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dob">(yyyy-mm-dd)</td>
 </tr>
 <tr>
  <td><font size=4 >Residential Address</td>
  <td><font size=4 >:</td>
  <td><textarea name="resadd"></textarea></td>
  <td><font size=4 >Perminent Address</td>
  <td><font size=4 >:</td>
  <td><textarea name="peradd"></textarea></td>
 </tr>
 <tr>
   <td><font size=4>Sex</td>
  <td><font size=4>:</td>
  <td><input type="radio" name="sex" value="male"><font size=4>Male</font>
  <input type="radio" name="sex" value="female"><font size=4>Female</font></td>
  <td><font size=4>Relegion</td>
  <td><font size=4>:</td>
  <td><input type="text" name="religion"></td>
 </tr>
  <tr>
    <td><font size=4>Occupation</td>
    <td><font size=4>:</td>
   <td><input type="text"  name="occup"></td>
    <td><font size=4>Income</td>
    <td><font size=4>:</td>
   <td><input type="text" name="income"></td>  
 </tr>
 <tr>
   <td><font size=4>CertificatePurpose</td>
  <td><font size=4>:</td>
  <td><input type="text" name="purpose"></td>
</td>
</table>
</center>
<br>
<br>
<table align="center">
 <tr>
  <td>
  <input type="submit" value="submit">
  </td>
  <td>
  <input type="reset" value="cancel">
  </td>
 </tr>
</table>
</form>
</body>
</html>

 