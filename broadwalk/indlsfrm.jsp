<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<script language="JavaScript">
function check()
{
if((f1.fmon.value==0)||(f1.fdy.value==0)||(f1.fyr.value==0))
{
alert("please select month/day/year");
f1.fmon.focus();
return false;
}
if((f1.smon.value==0)||(f1.sdy.value==0)||(f1.syr.value==0))
{
alert("please select month/day/year");
f1.smon.focus();
return false;
}
if((f1.fmon.value=="april")||(f1.fmon.value=="september")||(f1.fmon.value=="june")||(f1.fmon.value=="november"))
{
if(f1.fdy.value>30)
{
alert("Invalid Date!");
f1.fmon.focus();
return false;
}}
if((f1.smon.value=="april")||(f1.smon.value=="september")||(f1.smon.value=="june")||(f1.smon.value=="november"))
{
if(f1.sdy.value>30)
{
alert("Invalid Date!");
f1.smon.focus();
return false;
}}
if((f1.fmon.value=="february")&&(f1.fdy.value>28))
{
if((f1.fyr.value)%4!=0)
{
alert("Please enter correct date");
f1.fdy.focus();
return false;
}
if(((f1.fyr.value%4)==0)&&(f1.fyr.value%100==0)&&(f1.fyr.value%400!=0))
{
alert("Please enter correct date");
f1.fdy.focus();
return false;
}
}
if((f1.fmon.value=="february")&&(f1.fdy.value>29)&&((f1.fyr.value)%4==0))
{
 if((f1.fyr.value%100==0)&&(f1.fyr.value%400==0))
{
alert("This is leap year enter proper date");
f1.fdy.focus();
return false;
}
if((f1.fyr.value%100)!=0)
{
alert("This is leap year enter proper date");
f1.fdy.focus();
return false;
}
}
if((f1.smon.value=="february")&&(f1.sdy.value>28))
{
if((f1.syr.value)%4!=0)
{
alert("Please enter correct date");
f1.sdy.focus();
return false;
}
if(((f1.syr.value%4)==0)&&(f1.syr.value%100==0)&&(f1.syr.value%400!=0))
{
alert("Please enter correct date");
f1.fdy.focus();
return false;
}
}
if((f1.smon.value=="february")&&(f1.sdy.value>29)&&((f1.syr.value)%4==0))
{
 if((f1.syr.value%100==0)&&(f1.syr.value%400==0))
{
alert("This is leap year enter proper date");
f1.sdy.focus();
return false;
}
if((f1.syr.value%100)!=0)
{
alert("This is leap year enter proper date");
f1.sdy.focus();
return false;
}
}
return true;
}
</script>
<form name="f1" action="indlsfrm.jsp" onsubmit="return check()" method=post>
<b>Display the Dealers Info whoose Orders need to be dispatched beween 
<br><br>
<table>
<tr><td>
<select size=1 name="fmon" STYLE="background:lightblue">
<option value="0">Month
<option value="january">January
<option value="febraury">February
<option value="march">March
<option value="april">April
<option value="may">May
<option value="june">June
<option value="july">July
<option value="august">August
<option value="september">September
<option value="october">October
<option value="november">November
<option value="december">December</select></td><td>
<select size=1 name="fdy" STYLE="background:lightblue">
<option value="0">Day
<option value="1">1 <option value="2">2 <option value="3">3 <option value="4">4
<option value="5">5 <option value="6">6 <option value="7">7 <option value="8">8
<option value="9">9 <option value="10">10 <option value="11">11 <option value="12">12
<option value="13">13 <option value="14">14 <option value="15">15 <option value="16">16
<option value="17">17 <option value="18">18 <option value="19">19 <option value="20">20
<option value="21">21 <option value="22">22 <option value="23">23 <option value="24">24
<option value="25">25 <option value="26">26 <option value="27">27 <option value="28">28
<option value="29">29 <option value="30">30 <option value="31">31 </select>
</td>
<td>
<select size=1 name="fyr" STYLE="background:lightblue">
<option value="0">year
<option value="2000">2000 <option value="2001">2001 <option value="2002">2002
<option value="2003">2003
<option value="2004">2004 <option value="2005">2005
 <option value="2006">2006 <option value="2007">2007 <option value="2008">2008
 <option value="2009">2009 <option value="2010">2010
</select>
</td><td>
<b>&nbsp; and &nbsp;</b></td>
<td>
<select size=1 name="smon" STYLE="background:lightblue">
<option value="0">Month
<option value="january">January
<option value="febraury">Febraury
<option value="march">March
<option value="april">April
<option value="may">May
<option value="june">June
<option value="july">July
<option value="august">August
<option value="september">September
<option value="october">October
<option value="november">November
<option value="december">December</select></td><td>
<select size=1 name="sdy" STYLE="background:lightblue">
<option value="0">Day
<option value="1">1 <option value="2">2 <option value="3">3 <option value="4">4
<option value="5">5 <option value="6">6 <option value="7">7 <option value="8">8
<option value="9">9 <option value="10">10 <option value="11">11 <option value="12">12
<option value="13">13 <option value="14">14 <option value="15">15 <option value="16">16
<option value="17">17 <option value="18">18 <option value="19">19 <option value="20">20
<option value="21">21 <option value="22">22 <option value="23">23 <option value="24">24
<option value="25">25 <option value="26">26 <option value="27">27 <option value="28">28
<option value="29">29 <option value="30">30 <option value="31">31 </select>
</td>
<td>
<select size=1 name="syr" STYLE="background:lightblue">
<option value="0">year
<option value="2000">2000 <option value="2001">2001 <option value="2002">2002
<option value="2003">2003
<option value="2004">2004 <option value="2005">2005
 <option value="2006">2006 <option value="2007">2007 <option value="2008">2008
 <option value="2009">2009 <option value="2010">2010
</select>
</td></tr></table>
<br>
<br>
<input type="submit" name="submit" value="O.K">
</form>
<hr color="lightblue">
<jsp:include page="dldispatch.jsp" flush="true"/>
</html>
