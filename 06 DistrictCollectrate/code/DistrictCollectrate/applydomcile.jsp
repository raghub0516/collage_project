<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.domcile.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.domcile.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.domcile.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.domcile.dob.value=="")
	{
	alert("Date of birth is required");
	return false;
	}
	else if(document.domcile.resadd.value=="")
	{
	alert("Residential address is required");
	return false;
	}
	else if(document.domcile.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(document.domcile.caste.value=="")
	{
	alert("Caste is required");
	return false;
	}
	else if(document.domcile.occup.value=="")
	{
	alert("Occupation is required");
	return false;
	}
	else if(document.domcile.lsince.value=="")
	{
	alert("Living since is required");
	return false;
	}
	else if(document.domcile.purpose.value=="")
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
<u>Domcile Certificate</u>
</font>
<form name="domcile" method="get" action="storedomcileaction.do" target="main" onSubmit="return validate();">
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
   <td><input type="text" name="lsince">(yrs)</td>  
   <td><font size=4>CertificatePurpose</td>
  <td><font size=4>:</td>
  <td><input type="text" name="purpose"></td>
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

 