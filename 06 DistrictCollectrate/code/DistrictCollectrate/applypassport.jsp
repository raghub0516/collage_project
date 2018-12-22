
<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.passport.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.passport.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.passport.dob.value=="")
	{
	alert("Date of birth is required");
	return false;
	}
	else if(document.passport.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.passport.mname.value=="")
	{
	alert("Mother Name is required");
	return false;
	}
		else if(document.passport.resadd.value=="")
	{
	alert("Residential address is required");
	return false;
	}
	else if(document.passport.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}
	else if(document.passport.bplace.value=="")
	{
	alert(" Birth place is required");
	return false;
	}
	else if(document.passport.telno.value=="" && document.passport.mobileno.value=="")
	{
	alert(" Contact number  is required");
	return false;
	}
	else if(document.passport.emailid.value=="")
	{
	alert("Email id is required");
	return false;
	}
	else if(document.passport.qul.value=="")
	{
	alert("Qualification is required");
	return false;
	}
	else if(document.passport.prof.value=="")
	{
	alert("Profession is required");
	return false;
	}
	else if(document.passport.id.value=="")
	{
	alert("Identification mark is required");
	return false;
	}
	else if(document.passport.height.value=="")
	{
	alert("Height is required");
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
<u>Passport Certificate</u>
</font>
<form name="passport" method="get" action="storepassportaction.do" target="main" onSubmit="return validate();">
<table>
 <tr><td><html:errors/></td></tr>
 <tr>
  <td><font size=4 >First Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="first"></td>
  <td><font size=4 >Last  Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="last"></td>
 </tr>
 <tr>
  <td><font size=4>Date Of Birth</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dob"><br>(yyyy-mm-dd)</td>
  <td><font size=4>Sex</td>
  <td><font size=4>:</td>
  <td><input type="radio" name="sex" value="male"><font size=4>Male</font>
 <input type="radio" name="sex" value="female"><font size=4>Female</font></td>
 </tr>
  <tr>
  <td><font size=4 >Spouse Name</font></td>
  <td><font size=4 >:</td>
  <td><font size=1><input type="text" name="sname"></font></td>
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
 <td><font size=4>Birth Place</td>
  <td><font size=4>:</td>
  <td><input type="text" name="bplace"></td>
 </tr>
 <tr>
  <td><font size=4>Telephone No.</td>
  <td><font size=4>:</td>
  <td><input type="text" name="telno"></td>
  <td><font size=4>Mobile No.</td>
  <td><font size=4>:</td>
  <td><input type="text" name="mobileno"></td>
 </tr>
  <tr>
  <td><font size=4>Email ID</td>
  <td><font size=4>:</td>
  <td><input type="text" name="emailid"></td>
 </tr>
 <tr>
  <td><font size=4 >Qualification</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="qul"></td>
  <td><font size=4 >Profession</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="prof"></td>
 </tr>
 <tr>
  <td><font size=4 >Identification Mark</td>
  <td><font size=4 >:</td>
  <td><textarea name="id"></textarea></td>
  <td><font size=4 >Height</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="height"></td>
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

 