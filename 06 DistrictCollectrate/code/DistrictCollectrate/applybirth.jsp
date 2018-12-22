<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.bform.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.bform.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.bform.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.bform.mname.value=="")
	{
	alert("Mother Name is required");
	return false;
	}
	else if(document.bform.resadd.value=="")
	{
	alert("Residential adress is required");
	return false;
	}
	else if(document.bform.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(document.bform.dob.value=="")
	{
	alert("Date of Birth is required");
	return false;
	}
	else if(document.bform.caste.value=="")
	{
	alert("Caste is required");
	return false;
	}
	else if(document.bform.bplace.value=="")
	{
	alert("BirthPlace is required");
	return false;
	}
	else if(document.bform.drname.value=="")
	{
	alert("Doctor name is required");
	return false;
	}
	else if(document.bform.foccup.value=="")
	{
	alert("Father Occupation is required");
	return false;
	}
	else if(document.bform.hname.value=="")
	{
	alert("Hospital name is required");
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
<u>Birth Certificate</u>
</font>
<form name="bform" method="get" action="storebirthaction.do" target="main" onSubmit="return validate();">
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
  <td><font size=4 >Mother Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="mname"></td>
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
  <td><font size=4>Date Of Birth</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dob">(yyyy-mm-dd)</td>
  <td><font size=4>Sex</td>
  <td><font size=4>:</td>
  <td><input type="radio" name="sex" value="male"><font size=4>Male</font>
 <input type="radio" name="sex" value="female"><font size=4>Female</font></td>
 </tr>
  <tr>
  <td><font size=4>Caste</td>
  <td><font size=4>:</td>
  <td><input type="text" name="caste"></td>
 <td><font size=4>Birth Place</td>
  <td><font size=4>:</td>
  <td><input type="text" name="bplace"></td>
 </tr>
 <tr>
  <td><font size=4>Dr. Name</td>
  <td><font size=4>:</td>
  <td><input type="text" name="drname"></td>
  <td><font size=4>Father Occupation</td>
  <td><font size=4>:</td>
  <td><input type="text" name="foccup"></td>
 </tr>
  <tr>
  <td><font size=4>Hospital Name</td>
  <td><font size=4>:</td>
  <td><input type="text" name="hname"></td>
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

 