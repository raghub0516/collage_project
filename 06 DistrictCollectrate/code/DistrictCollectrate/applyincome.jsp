

<html>
 <head>
<title>
   District Collectorate Management System
</title>
<script language="javascript" >
function validate()
{
if(document.inform.first.value=="")
	{
	alert("First Name is required");
	return false;
	}
else if(document.inform.last.value=="")
	{
	alert("Last Name is required");
	return false;
	}
	else if(document.inform.fname.value=="")
	{
	alert("Father Name is required");
	return false;
	}
	else if(document.inform.dob.value=="")
	{
	alert("Date of birth is required");
	return false;
	}
	else if(document.inform.resadd.value=="")
	{
	alert("Residential address is required");
	return false;
	}
	else if(document.inform.peradd.value=="")
	{
	alert(" Permenant address is required");
	return false;
	}else if(document.inform.qual.value=="")
	{
	alert("Qualification is required");
	return false;
	}
	else if(document.inform.occup.value=="")
	{
	alert("Occupation is required");
	return false;
	}
	else if(document.inform.income.value=="")
	{
	alert("Annual income is required");
	return false;
	}
	else if(document.inform.purpose.value=="")
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
<u>Income Certificate</u>
</font>
<form  name="inform"method="get" action="storeincomeaction.do" target="main" onSubmit="return validate();">
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
  <td><font size=4>Qualification</td>
  <td><font size=4>:</td>
  <td><input type="text" name="qual"></td>
  <td><font size=4>Occupation</td>
  <td><font size=4>:</td>
  <td><textarea name="occup"></textarea></td>
 </tr>
  <tr>
    <td><font size=4>Annual Income</td>
    <td><font size=4>:</td>
   <td><input type="text" name="income"></td>  
   <td><font size=4>Purpose</td>
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

 