

<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.widow.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.widow.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.widow.hname.value=="")
	{
	alert("Husband Name is required");
	return false;
	}
	else if(document.widow.dod.value=="")
	{
	alert("Date of death is required");
	return false;
	}
	else if(document.widow.resadd.value=="")
	{
	alert("widow address is required");
	return false;
	}
	else if(document.widow.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(document.widow.dcid.value=="")
	{
	alert("Death certificate id is required");
	return false;
	}
	else if(document.widow.rdeath.value=="")
	{
	alert("Reason for death is required");
	return false;
	}
	else if(document.widow.dplace.value=="")
	{
	alert("Death place is required");
	return false;
	}
	else if(document.widow.drname.value=="")
	{
	alert("Verified Dr. Name is required");
	return false;
	}
	else if(document.widow.occup.value=="")
	{
	alert("Occupation is required");
	return false;
	}
	else if(document.widow.hosname.value=="")
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
<u>Widow  Certificate</u>
</font>
<form name="widow" method="get" action="storewidowaction.do" target="main" onSubmit="return validate();">
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
  <td><font size=4 >Husband Name</td>
  <td><font size=4 >:</td>
  <td><input type="text" name="hname"></td>
  <td><font size=4>Date Of Death</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dod">(yyyy-mm-dd)</td>
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
  <td><font size=4>Death Certificate ID</td>
  <td><font size=4>:</td>
  <td><input type="text" name="dcid"></td>
  <td><font size=4>Reason for Death</td>
  <td><font size=4>:</td>
  <td><textarea name="rdeath"></textarea></td>
 </tr>
  <tr>
    <td><font size=4>Death Place</td>
    <td><font size=4>:</td>
   <td><input type="text" name="dplace"></td>  
   <td><font size=4>Verified Dr. Name</td>
  <td><font size=4>:</td>
  <td><input type="text" name="drname"></td>
 </tr>
 <tr>
  <td><font size=4>Occupation</td>
  <td><font size=4>:</td>
  <td><input type="text" name="occup"></td>
  <td><font size=4>Hospital Name</td>
  <td><font size=4>:</td>
  <td><input type="text" name="hosname"></td>
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

 