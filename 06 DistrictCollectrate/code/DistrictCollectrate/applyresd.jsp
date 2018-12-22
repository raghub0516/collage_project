

<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.residential.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.residential.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.residential.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.residential.dob.value=="")
	{
	alert("Date of birth is required");
	return false;
	}
	else if(document.residential.resadd.value=="")
	{
	alert("Residential address is required");
	return false;
	}
	else if(document.residential.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(document.residential.caste.value=="")
	{
	alert("Caste is required");
	return false;
	}
	else if(document.residential.occup.value=="")
	{
	alert("Occupation is required");
	return false;
	}
	else if(document.residential.lsince.value=="")
	{
	alert("Living since is required");
	return false;
	}
	else if(document.residential.purpose.value=="")
	{
	alert("Purpose is required");
	return false;
	}
	else if(document.residential.reason.value=="")
	{
	alert("Reason to stay is required");
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
<u>Residential Certificate</u>
</font>
<form name="residential" method="get" action="storeresdaction.do" target="main" onSubmit="return validate();">
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
  <td><font size=4>Caste</td>
  <td><font size=4>:</td>
  <td><input type="text" name="caste"></td>
  <td><font size=4>Occupation</td>
  <td><font size=4>:</td>
  <td><input type="text"  name="occup"></td>
 </tr>
  <tr>
   <td><font size=4>Living Since</td>
   <td><font size=4>:</td>
   <td><input type="text" name="lsince">yrs</td>  
   <td><font size=4>CertificatePurpose</td>
  <td><font size=4>:</td>
  <td><input type="text" name="purpose"></td>
 </tr>
 <tr>
    <td><font size=4>Reason to Stay</td>
    <td><font size=4>:</td>
   <td><input type="text" name="reason"></td> 
</tr>
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

 