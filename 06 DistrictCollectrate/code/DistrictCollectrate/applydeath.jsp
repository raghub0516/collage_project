

<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
	var x=document.dform.dod.value;
		var y=document.dform.dob.value;
if(document.dform.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.dform.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.dform.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.dform.mname.value=="")
	{
	alert("Mother Name is required");
	return false;
	}
	else if(document.dform.resadd.value=="")
	{
	alert("Residential address is required");
	return false;
	}
	else if(document.dform.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(x=="")
	{
	alert("Date of Death is required");
	return false;
	}
	else if(document.dform.caste.value=="")
	{
	alert("Caste is required");
	return false;
	}
	else if(document.dform.dplace.value=="")
	{
	alert("Death place is required");
	return false;
	}
	else if(document.dform.drname.value=="")
	{
	alert("Doctor name is required");
	return false;
	}
	else if(document.dform.occup.value=="")
	{
	alert("Occupation is required");
	return false;
	}
	else if(document.dform.hname.value=="")
	{
	alert("Hospital name is required");
	return false;
	}
	else if(document.dform.rdeath.value=="")
	{
	alert("Reason for death is required");
	return false;
	}
	else if(y=="")
	{
	alert("Date of Birth is required");
	return false;
	}
	else if(x<y)
	{
	alert("Please check date of birth");
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
<u>Death  Certificate</u>
</font>
<form name="dform" method="get" action="storedeathaction.do" target="main" onSubmit="return validate();">
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
  <td><font size=4>Date Of Death</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dod">(yyyy-mm-dd)</td>
  <td><font size=4>Sex</td>
  <td><font size=4>:</td>
  <td><input type="radio" name="sex" value="male"><font size=4>Male</font>
 <input type="radio" name="sex" value="female"><font size=4>Female</font></td>
 </tr>
  <tr>
  <td><font size=4>Caste</td>
  <td><font size=4>:</td>
  <td><input type="text" name="caste"></td>
 <td><font size=4>Death Place</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dplace"></td>
 </tr>
 <tr>
  <td><font size=4>Verified Dr. Name</td>
  <td><font size=4>:</td>
  <td><input type="text" name="drname"></td>
  <td><font size=4>Occupation</td>
  <td><font size=4>:</td>
  <td><input type="text" name="occup"></td>
 </tr>
  <tr>
  <td><font size=4>Hospital Name</td>
  <td><font size=4>:</td>
  <td><input type="text" name="hname"></td>
  <td><font size=4>Reason for Death</td>
  <td><font size=4>:</td>
  <td><textarea name="rdeath"></textarea></td>
 </tr>
  <tr>
  <td><font size=4>Date Of Birth</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dob">(yyyy-mm-dd)</td>
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

 