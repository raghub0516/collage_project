

<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.cform.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.cform.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.cform.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.cform.dob.value=="")
	{
	alert("Date of birth is required");
	return false;
	}
	else if(document.cform.resadd.value=="")
	{
	alert("Residential address is required");
	return false;
	}
	else if(document.cform.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(document.cform.caste.value=="")
	{
	alert("Caste is required");
	return false;
	}
	else if(document.cform.religion.value=="")
	{
	alert("Religion is required");
	return false;
	}
	else if(document.cform.occup.value=="")
	{
	alert("Occupation is required");
	return false;
	}
	else if(document.cform.income.value=="")
	{
	alert("Income is required");
	return false;
	}
	else if(document.cform.purpose.value=="")
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
<u>Cast Certificate</u>
</font>
<form name="cform" method="get" action="storecasteaction.do" target="main" onSubmit="return validate();">
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
   <td><font size=4>Caste</td>
  <td><font size=4>:</td>
  <td><input type="text" name="caste"></td>
 </tr>
  <tr> 
   <td><font size=4>Relegion</td>
  <td><font size=4>:</td>
  <td><input type="text" name="religion"></td>
    <td><font size=4>Occupation</td>
    <td><font size=4>:</td>
   <td><input type="text"  name="occup"></td>
 </tr>
 <tr>
    <td><font size=4>Income</td>
    <td><font size=4>:</td>
   <td><input type="text" name="income"></td>  
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

 