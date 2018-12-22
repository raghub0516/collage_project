<%@ page language="Java" import="java.sql.*"%>
<% Class.forName("oracle.jdbc.driver.OracleDriver");
  	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="OPTION.jsp"%>
<script language="Javascript" type="text/javascript">
function checkinput()
 {
if(f1.fname.value=="")
  {
  alert("please enter firstname!");
  f1.fname.focus();
  return false;
  }
else
  {
if((f1.fname.value).length>15)
  {
   alert("please enter your first name in 15chars");
   f1.fname.value="";
   f1.fname.focus();
   return false;
   }}
 if(f1.lname.value=="")
  {
  alert("please enter lastname!"); 
  f1.lname.focus();
  return false;
  }
else
  {
if((f1.lname.value).length>15)
  {
   alert("please enter your last name in 15chars");
   f1.lname.value="";
   f1.lname.focus();
   return false;
   }}
if(f1.phn.value=="")
  {
  alert("Please Enter phone number!");
  f1.phn.focus();
  return false;
  }
if(f1.phn.value!="")
{
if((f1.phn.value).length>15)
{
alert("please enter valid phone number");
f1.phn.value="";
f1.phn.focus();
return false;
}
if((f1.phn.value).indexOf('-')==-1)
 {
 alert("please enter valid phone number\nformat STD/ISD-phoneno");
 f1.phn.focus();
 return false;
 }
if((f1.phn.value).substring(1,(f1.phn.value).indexOf('-'))<3)
  {
  alert("Please enter valid phone number\nSTD/ISD-phonenum");
  f1.phn.focus();
  return false;
  }
if(((f1.phn.value).substring((f1.phn.value).indexOf('-')+1,f1.phn.length))==-1)
{
alert("Please Enter Valid Phone Number");
return false;
}
}
if((f1.fax.value!="")&&(f1.fax.value!="not existing"))
{
if((f1.fax.value).length>15)
{
alert("please enter valid fax number");
f1.fax.value="";
f1.fax.focus();
return false;
}
if((f1.fax.value).indexOf('-')==-1)
 {
 alert("please enter valid fax number\nformat STD/ISD-faxnum");
 f1.fax.focus();
 return false;
 }
if((f1.fax.value).substring(1,(f1.fax.value).indexOf('-'))<3)
  {
  alert("Please enter valid fax number\nSTD/ISD-faxnum");
  f1.fax.focus();
  return false;
  }}
if(f1.fax.value=="")
{
f1.fax.value="not existing";
}
if((f1.eml.value!="")&&(f1.eml.value!="not existing"))
{
if((f1.eml.value).length>25)
{
alert("please enter mailid in 25chars");
f1.eml.value="";
f1.eml.focus();
return false;
}
if((((f1.eml.value).indexOf("@"))==-1)||(((f1.eml.value).indexOf("."))==-1))
   {
   alert("Please Enter Valid Mail id!");
   f1.eml.focus();
   return false;
   }}
if(f1.eml.value=="")
 {
 f1.eml.value="not existing";
 }
if(f1.adr.value=="")
  {
  alert("Please enter your address!"); 
  f1.adr.focus();
  return false;
  }
else
if((f1.adr.value).length>65)
{
alert("please enter your address in 65chars");
f1.adr.value="";
f1.adr.focus();
return false;
}
if(f1.dst.value=="")
  {
  alert("Please enter your district!");
  f1.dst.focus();
  return false;
}
else
if((f1.dst.value).length>15)
{
alert("please enter valid district name");
f1.dst.value="";
f1.dst.focus();
return false;
}
if(f1.sta.value=="")
 {
 alert("state is not specified\nwe consider you as local to Karnataka");
 f1.sta.value="Karnataka";
 f1.country.value="India";
 f1.sta.focus();
return false;
}
else
if((f1.sta.value).length>15)
{
alert("please enter valid state name");
f1.sta.value="";
f1.sta.focus();
return false;
}
if(f1.lentxt.value>25)
  {
  alert("please check:\nyou have only 25 chars limit for comments");
  return false;
  }
if(f1.zip.value!="")
 {
if((f1.zip.value).length>15)
{
alert("please enter valid zip number");
f1.zip.value="";
f1.zip.focus;
return false;
}
if(isNaN(f1.zip.value))
 {
alert("please enter valid zip code");
 f1.zip.focus();
 return false;
} }
if((f1.pido.value!=""))
{if(f1.qtyo.value=="")f1.qtyo.value="0";f1.hideo.value="true";f1.hide.value="true";
}else f1.hideo.value="false";
if((f1.pidf.value!=""))
{if(f1.qtyf.value=="")f1.qtyf.value="0";
f1.hide.value="true";
f1.hidef.value="true";}else f1.hidef.value="false";
if((f1.pids.value!=""))
{if(f1.qtys.value=="")f1.qtys.value="0";
f1.hide.value="true";
f1.hides.value="true";}else f1.hides.value="false";
if((f1.pidt.value!=""))
{if(f1.qtyt.value=="")f1.qtyt.value="0";f1.hidet.value="true";f1.hide.value="true";
}else f1.hidet.value="false";
if(f1.mop.value=="dd")
{
if(f1.ddn.value==""){alert("please enter DD number!");f1.ddn.focus();return false;}
else
if(f1.ddn.value!=""){
if((f1.ddn.value).length>15)
{
alert("please enter valid DD Number");f1.ddn.value="";f1.ddn.focus();return false;
}}
if(f1.bnm.value==""){alert("please specify BankName");f1.bnm.focus();return false;}
else
if(f1.bnm.value!=""){
if((f1.bnm.value).length>25)
{
alert("please enter valid BankName in 25chars");f1.bnm.value="";f1.bnm.focus();return false;
}}
}
if(f1.comments.value=="")
{
f1.comments.value="No Comments";
}
return true; 
}
function clearall()
 {
 f1.fname.focus();
 }
document.onkeyup=countchars;
function countchars()
  {f1.lentxt.value=f1.comments.value.length;}

var names = new DynamicOptionList("sta","district","xmlname");
names.forValue("ANDHRA PREDESH").addOptions("ADILABAD", "NIZAMABAD", "KARIMNAGAR", "WARNGAL", "VIZIANAGARAM", "SRIKAKULAM", "VISHAKAPTNAM", "KHAMMAM","MEDAK", "RANGAREDDY", "HYDARABAD", "NALGONDA",
"EASTGODAVARI","WESTGODAVARI","KRISHNA","GUNTUR","MAHABUBNAGAR","PRAKASHAM","KARNOOL",
"ANANTHPOOR","CUDDAPAH","CHITTUR","NELLORE");

names.forValue("ASSAM").addOptions("KARIMGANJ","DARRANG","DIBRUGARH","MORIGAON","TINSUKIA","BONGAIGAON",
"NALBARI","KOKRAJHAR","KAMRUP","KARBI-ANGLONG","NAGAON","N.C.HILLS","DHEMAJI","HAILAKANDI","LAKHIMPUR",
"SONITPUR","DHUBRI","GOALPARA","BARPETA","GOLAGHAT","JORHAT","SIBSAGAR","CACHAR");

names.forValue("ARUNACHAL PREDESH").addOptions("DIBAN VALLEY(Anni Valley)","EAST KAMENG SEPPA","ITANGAR","EAST SIANG(Passight)","LOHIT(Tezu)","LOWER SUBANSIRI(Ziro)","KHONSA","ROIN","TAWANG","CHANGALANG","DIBANG VALLEY","DAPORIJO","BOMDILA","ALOG(West Siang)");

names.forValue("GUJRATH").addOptions("PANCHMAHALS","VADODARA ","AMRELA" ,"KHEDA", "AHMEDABAD","VALSAD",
"UNAGADH" ,"MEHSANA ","BANASKANTHA ","GANDHINAGAR ","BHARUCH ","DANGS ","JAMNAGAR ","RAJKOT ","SURAT ",
"KUTCH ","BHAVNAGAR", "SURENDRANAGAR", "NAVSARI ","ANAND ","NARMADA", "PATAN ","PORBANDER", "DAHOD");

names.forValue("BIHAR").addOptions("MUZAFFARPUR","JEHANABAD","GAYA ","PATNA ","SARAN( CHAPRA )","DARBHANGA ",
"SAHARSA ","PURNEA ","BHAGALPUR","MUNGER ","AURANGABAD","BHOJPUR(ARAH)",
"BEGUSARAI ","EAST CHAMPARAN","GOPALGANJ ",
"JAMUI ","KATIHAR","KHAGARIA","MADHEPURA","MADHUBANI ","NALANDA ",
"NAWADA ","ROHTAS(SASARAM)","SAMASTIPUR","SITAMARHI ",
"SIWAN ","VAISHALI(HAJIPUR)","WEST CHAMPARAN ","KISHANGANJ ","ARARIA ",
"BHABUA ","BANKA ","BUXAR ","SUPAUL ","SEKHPURA","SEOHAR ","LAKHISARAI");

names.forValue("HARYANA").addOptions("GURGAON ","ROHTAK ","AMBALA ","BHIWANI ","FARIDABAD","HISSAR ",
"JIND ","KAITHA","KARNAL ","KURUKSHETRA","MAHENDRAGARH","PANCHKULA ","PANIPAT ","SONIPAT ",
"YAMUNANAGAR","SIRSA ","REWARI","JHANJHAR ","FATEHABAD");

names.forValue("HIMACHAL PRADESH").addOptions("SIRMOUR ","HAMIRPUR ","KULLU ","SOLAN ","MANDI ","CHAMBA ",
"BILASPUR ","KANGRA ","KINNAUR ","LAHAUL-SPITI ","SHIMLA ","UNA");


names.forValue("JAMMU&KASHMIR").addOptions("KATHUA ","BADGAN","POONCH ","RAJAURI ","BARAMULA","DODA ",
"UDHAMPUR ","JAMMU ","KUPWARA","PULWAMA ","ANANTNAG ","SRINAGAR ","LEH ","KARGIL");


names.forValue("KARNATAKA").addOptions("MYSORE ","GULBERGA ","CHITRADURGA ","KOLAR ","BIJAPUR ","DAKSHINA",
"KANNADA ","RAICHUR ","BELLARY ","BELGAUM ","HASSAN ","DHARWAD","BANGALORE RURAL ",
"SHIMOGA ","MANDYA ","CHICKMAGALUR ","BANGALORE URBAN ","MADIKERI ",
"TUMKUR ","BIDAR ","KARWAR ","UDUPI ","DAVANAGARE ","CHAMRAJNAGAR",
"KOPPAL ","HAVERI ","GADAK ","YADGIR");

names.forValue("KERALA").addOptions("KOZHIKODE","KASARAGOD ","IDUKKI ","ERNAKULAM ","CANNANORE ",
"MALLAPURAM ","PALGHAT ","PATHANAMTHITTA ","QUILON ",
"TRICHUR ","WAYANAD","TRIVANDRUM","KOTTAYAM ","ALAPUZZHA");

names.forValue("MADHYA PRADESH").addOptions("SINDI ","VIDISHA","JABALPUR ","BHOPAL ","HOSHANGABAD ","INDORE ",
"REWA ","SATNA ","SHAHDOL ","CHHINDWARA ","RATLAM ","BALAGHAT ",
"BETUL ","BHIND ","MANDLA ","CHHATTARPUR ","DAMOH ","DATIA ",
"DEWAS ","DHAR ","GUNA ","GWALIOR ","JHABUA ","SEHORE ","MANDSAUR ",
"NARSINGHPUR","PANNA ","RAISEN ","RAJGARH ","SAGAR ",
"SEONI ","MORENA","SHIVPURI","SHAJAPUR ","TIKAMGARH","UJJAIN ",
"KHANDWA ","KHARGONE ","DINDORI ","UMARIA ","BADWANI ","SHEOPUR ","KATNI ",
"NEEMUCH ","HARDA ","ANOOPPUR ","BURHANPUR ","ASHOKNAGAR");

names.forValue("MAHARASHTRA").addOptions("AURANGABAD","BANDRA(MUMBAI SUBURBAN DISTRICT)","NAGPUR ","PUNE",
"AKOLA","CHANDRAPUR","JALGAON","PARBHANI","SHOLAPUR","THANE",
"LATUR","MUMBAI-CITY","BULDHANA","DHULE","KOLHPUR","NANDED",
"RAIGAD","AMRAVATI","NASHIK","WARDHA","AHMEDNAGAR ","BEED",
"BHANDARA","GADCHIROLI","JALNA","OSMANABAD ","RATNAGIRI ",
"SANGLI","SATARA","SINDUDURG","YAVATMAL","NANDURBAR",
"WASHIM","GONDIA","HINGOLI");

names.forValue("MANIPUR").addOptions("IMPHAL EAST ","IMPHAL WEST ","THOUBAL",
"BISHNUPUR","CHANDEL ","CHURACHANDPUR",
"SENAPATI","UKHRUL","TAMENGLONG");


names.forValue("MEGHALAYA").addOptions("RI-BHOI DISTRICT","SOUTH GARO HILLS","EAST KHASI HILL",
"EAST GARO HILL","WEST GARO HILL","JAINTIA HILL",
"WEST KHASI HILL");

names.forValue("MIZORAM").addOptions("LUGLEI DISTRICT","CHIMTIPUI DISTRICT","AIZAWAL",
"CHAMPHAI","MAMIT","KOLASIB","SERCHHIP","LAWNGTLAI");

names.forValue("NAGALAND").addOptions("WOKHA","PHEK","TUENSANG","MON",
"KOHIMA","ZUNHEBOTO","MOKOKCHUNG","DIMAPUR");

names.forValue("ORISSA").addOptions("KHURDA","NAVARAGPUR","NAVAPADA","GAJAPATI",
"BOUDH","BHADRAK","GANJAM","DHENKANAL","ANGUL",
"PURI","CUTTAK","SAMBALPUR","KALHANDI","KORAPUT",
"PHULBANI","BALANGIR","BARGAH","DEOGARH","JAGATSINGHPUR",
"JAJPUR","JHARSUGUDA","KENDRAPARA","MALKANGIRI",
"NAYAGARH","RAYAGADA","SONEPUR","BALASORE",
"MAYURBHANJ","KEONJHAR","SUNDERGARH");

names.forValue("PUNJAB").addOptions("SANGRUR","JALANDHAR","LUDHIANA","BHATINDA","KAPURTHALA",
"PATIALA","AMRITSAR",  "FEROZEPUR","FATEHGARH SAHEB ",
"ROPAR","GURDASPUR ","HOSIARPUR ","FARIDKOT ","MANSA ",
"MOGA ","'MUKTSAR ","NAVANSAHAR");

names.forValue("RAJASTHAN").addOptions("JAIPUR","BARMER","DUNGARPUR","JODHPUR",
"KOTA","UDAIPUR","BIKANER","DAUSA","BUNDI",
"SIKAR","TONK","JAISALMER","NAGAUR","RAJSAMAND",
"BANSWARA","BHILWARA","AJMER","ALWAR","BHARATPUR",
"CHITTORGARH","CHURU","DHOLPUR","GANGANAGAR",
"JALOR","JHALAWAR","JHUNJHUNU","PALI","SAWAI MADHOPUR",
"SIROHI","BARAN","HANUMANGARH","KARAULI");

names.forValue("SIKKIM").addOptions("EAST","SOUTH","WEST","NORTH");


names.forValue("TAMIL NADU").addOptions("CHENNAI", "COIMBOTORE","CUDDALOREI","DHARMAPURI",
 "DINDIGUL","ERODE","KANCHEEPURAM","KANNIYAKUMARI (HQ : NAGERCOIL)",
"KARUR","MADURAI","NAGAPATTINAM","NAMAKKAL","NILGIRIS (HQ:UDHAGAMANDALAM)",
"PERAMBALUR","PUDUKKOTTAI","RAMANATHAPURAM","SALEM",
"SIVAGANGA","THANJAVUR","THENI","THOOTHKUDI",
"TIRUCHIORAPPALLI","TIRUNELVELI","TIRUVALLUR","TIRUVANNAMALAI", 
"TIRUVARUR","VELLORE","VILLUPURAM","VIRUDHUNAGAR");

names.forValue("TRIPURA").addOptions("NORTH DISTRICT","SOUTH DISTRICT","WEST DISTRICT","DHALAI DISTRICT");

names.forValue("UTTAR PRADESH").addOptions("ALLAHABAD", "ALIGARH","BAREILLY", "GONDA","HARDOI", "KANPUR DEHAT",
"GHAZIABAD","UNNAV","VARANASI","FAIZABAD","GORAKPUR","JHANSI",
"LUCKNOW","AGRA","MEERUT", "MORADABAD", "BARABANKI", "MAINPURI", 
"ETAWAH","GAZIPUR","ETAH","MUZAFFAR NAGAR","SAHARANPUR","BULANDSHEHAR", 
"MATHURA","FIROZABAD", "BUDAUN","SHAHJAHANPUR","PILIBHIT","BIJNOR", "RAMPUR","KANPUR(NAGAR)", "FARRUKHABAD", "FATEHPUR", "PRATAPGARH",
 "JALAUN", "HAMIRPUR", "LALITPUR", "MIRZAPUR",  "BASTI",
"DEORIA","RAEBAREILI", "SITAPUR","BANDA","LAKHIMPUR-KHEDI",
 "BAHRAICH","SULTANPUR","MAU","AZAMGARH","JAUNPUR" , "BALIA",
 "BHADOI", "PADRAUNA", "MAHARAJGANJ", "SIDDHARTH NAGAR", "SUNBHADRA", 
 "MAHOBA","AMBEDKARNAGAR", "GAUTAM BODDA NAGAR","MAHA MAYA NAGAR",
 "JYOTIBA PHOOLE NAGAR",  "KAUSHAMBI", "SHOOJI MAHARAJ","CHANDAULI",
 "BALRAMPUR","SHRAVATI", "BAGPAT", "KANOOJ","ORAIYYA",
  "SANT KABIR NAGAR");

  names.forValue("WESTBENGAL").addOptions("HOWRAH", "DARJEELING", "MEDINIPUR","MURSHIDABAD", 
"COOCHBEHAR","MALDA","BIRBHUM", "NORTH 24 PARGANAS",
"SOUTH 24 PARGANAS","BANKURA","BARDHAMAN",
"JALPAIGURI","HOOGHLY","NADIA","DAKSHIN DINAJPUR",
"PURULIA","UTTAR DINAJPUR","SILIGURI")

names.forValue("DELHI").addOptions("NEW DELHI","CENTRAL", "NORTH","NORTH WEST", 
"WEST","SOUTH WEST","NORTH","NORTH EAST");

names.forValue("GOA").addOptions("NORTH GOA","SOUTH GOA");


names.forValue("PONDICHERY").addOptions("KARIKAL","MAHE","YAMAN", "PONDICHERRY");


names.forValue("LAKSHDWEEP").addOptions("LAKSHDWEEP");


names.forValue("DAMAN&DIU").addOptions("DAMA","DIU");


names.forValue("DADRA&NAGAR").addOptions("DADRA");


names.forValue("CHANDIGARH").addOptions("CHANDIGARH");


names.forValue("ANDAMAN&NICOBAR").addOptions("ANDAMAN","NICOBAR");

names.forValue("UTTARANCHAL").addOptions("NAINITAL","ALMORA","PITORAGARH","UDHAMSINGH NAGAR",
"BAGESHWAR","CHAMPAWAT","GARHWAL(PAURI)","TEHRI-GARHWAL","CHAMOLI( GOPESHWAR )",
"UTTARKASHI","DEHRADUN","RUDRAPRAYAG","HARIDWAR");

names.forValue("JHARKHAND").addOptions("DEOGHAR","DHANBAD","GIRIDIH","GODDA", 
"GUMLA","HAZARIBAGH","LOHARDAGA","PALAMU","RANCHI","DUMKA ","CHAIBASA(WEST SINGHBHUM)",
"JAMSHEDPUR(EAST SINGHBHUM)","BOKARO","CHATRA","GARHWA","KODERMA","PAKUR","SAHEBGANJ", 
"SIMDEGA","LATEHAR","SARAIKELA","JAMTARA");

names.forValue("CHATTISGARH").addOptions("BASTAR","BILASPUR","DANTEWADA","DHAMTARI","DURG",
"JANJGIR-CHAMPA","JASHPUR","KANKER","KAWARDHA","KORBA","KORIYA","MAHASAMUND", 
"RAIGARH","RAJNANDGAON","SURGUJA","RAIPUR");

var names1 = new DynamicOptionList("pido","preo","xmlname");
<%  try
      {
      	
		Statement st1=con.createStatement();
	      ResultSet rs1=st1.executeQuery("select prodid,cschge from products");
		while(rs1.next())
	{
%>
names1.forValue("<%=rs1.getString("prodid")%>").addOptions("<%=rs1.getInt("cschge")%>");
<%}
}catch(Exception e1){}%>


var names2 = new DynamicOptionList("pidf","pref","xmlname");
<%  try
      {
      	
		Statement st2=con.createStatement();
	      ResultSet rs2=st2.executeQuery("select prodid,cschge from products");
		while(rs2.next())
	{
%>



names2.forValue("<%=rs2.getString("prodid")%>").addOptions("<%=rs2.getInt("cschge")%>");
<%}
}catch(Exception e2){}%>

var names3 = new DynamicOptionList("pids","pres","xmlname");
<%  try
      {
		Statement st3=con.createStatement();
	      ResultSet rs3=st3.executeQuery("select prodid,cschge from products");
		while(rs3.next())
	{
%>



names3.forValue("<%=rs3.getString("prodid")%>").addOptions("<%=rs3.getInt("cschge")%>");
<%}
}catch(Exception e3){}%>


var names4 = new DynamicOptionList("pidt","pret","xmlname");
<%  try
      {
      	Statement st4=con.createStatement();
	      ResultSet rs4=st4.executeQuery("select prodid,cschge from products");
		while(rs4.next())
	{
%>



names4.forValue("<%=rs4.getString("prodid")%>").addOptions("<%=rs4.getInt("cschge")%>");
<%}
}catch(Exception e4){}%>
</script>

</head>

<body onLoad="initDynamicOptionLists()">

<FORM name=f1 onreset="return clearall" onsubmit="return checkinput()" 
action="npr.jsp" method=get>
<body background="images/center.jpg" alink=blue vlink=blue>
<A href="helpme.html#CustomerOrder">HelpMe</A> 
<CENTER>
<hr width=350 color=lightblue size=3>
<h2><font size=4 color="purple"><b><i>CUSTMER ORDER FORM</i></b></font></h2>
<hr width=350 color=lightblue size=3>
</HR></CENTER>
<P><FONT face=verdana>
<TABLE border=0>
  <TBODY>
  <TR>
    <TD width="35%"></TD>
    <TD width="25%"><FONT color=red>*</FONT>FirstName:</TD>
    <TD><INPUT name="fname"></TD></TR>
  <TR>
    <TD></TD>
    <TD><FONT color=red>*</FONT>LastName:</TD>
    <TD><INPUT name="lname"></TD></TR>
  <TR>
    <TD></TD>
    <TD><FONT color=red>*</FONT>Phone:</TD>
    <TD><INPUT name="phn"></TD></TR>
  <TR>
    <TD></TD>
    <TD>Fax:</TD>
    <TD><INPUT name="fax"></TD></TR>
  <TR>
    <TD></TD>
    <TD>Email:</TD>
    <TD><INPUT name="eml"></TD></TR>
  <TR>
    <TD></TD>
    <TD><FONT color=red>*</FONT>Address:</TD>
    <TD><TEXTAREA name="adr" rows=5></TEXTAREA></TD></TR>
  <TR>
    <TD></TD>
    <TD>Country:</TD>
    <TD><input type="hidden"size=1 name="country" value="India">India</TD>
</TR>  

<TR>
<TD></TD>
<TD>state:</td><td>
<select name="sta" id="sta" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">
<option value="ANDHRA PREDESH">ANDHRA PREDESH</option>
<option value="ASSAM">ASSAM</option>
<option value="ARUNACHAL PREDESH">ARUNACHAL PREDESH</option>
<option value="GUJRATH">GUJRATH</option>
<option value="BIHAR">BIHAR</option>
<option value="HARYANA">HARYANA</option>
<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
<option value="JAMMU&KASHMIR">JAMMU&KASHMIR</option>
<option value="KARNATAKA">KARNATAKA</option>
<option value="KERALA">KERALA</option>
<option value="MADHYA PRADESH">MADHYA PRADESH</option>
<option value="MAHARASHTRA">MAHARASHTRA</option>
<option value="MANIPUR">MANIPUR</option>
<option value="MEGHALAYA">MEGHALAYA</option>
<option value="MIZORAM">MIZORAM</option>
<option value="NAGALAND">NAGALAND</option>
<option value="ORISSA">ORISSA</option>
<option value="PUNJAB">PUNJAB</option>
<option value="RAJASTHAN">RAJASTHAN</option>
<option value="SIKKIM">SIKKIM</option>
<option value="TAMIL NADU">TAMIL NADU</option>
<option value="TRIPURA">TRIPURA</option>
<option value="UTTAR PRADESH">UTTAR PRADESH</option>
<option value="WESTBENGAL">WESTBENGAL</option>
<option value="DELHI">DELHI</option>
<option value="GOA">GOA</option>
<option value="PONDICHERY">PONDICHERY</option>
<option value="LAKSHDWEEP">LAKSHDWEEP</option>
<option value="DAMAN&DIU">DAMAN&DIU</option>
<option value="DADRA&NAGAR">DADRA&NAGAR</option>
<option value="CHANDIGARH">CHANDIGARH</option>
<option value="ANDAMAN&NICOBAR">ANDAMAN&NICOBAR</option>
<option value="UTTARANCHAL">UTTARANCHAL</option>
<option value="JHARKHAND">JHARKHAND</option>
<option value="CHATTISGARH">CHATTISGARH</option>
</select></TD>
</TR>
<tr>
<TD></TD>
<td>District:</TD><td>
<select name="dst" id="district"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">


<script language="Javascript" type="text/javascript">names.printOptions("district");</script>
</select>
</td>
</tr>


<TR>
    <TD></TD>
    <TD>Zip:</TD>
    <TD><INPUT name="zip"></TD></TR></TBODY></TABLE>
<CENTER><BR>To place order fill the Info and click <B>ADD TO CART</B>for each 
item. <BR>For further Information regarding products view <A href="catalog.jsp"><B>CATALOG</B></A> <BR>
<body onLoad="initDynamicOptionLists()">
<TABLE border= bordercolor= bgcolor=>
  <TR bgcolor=b75b00 >
    <TD><B><U>ITEM CODE#:</B></U> </TD>
    <TD><B><U>PRICE EACH:</U></B></TD>
    <TD><B><U>QUANTITY:</B></U></TD>
    <TD><B><U>ACTION :</B></U></TD></TR>
  <!--<TR>-->
   <tr>
<td>

<select name="pido" id="pido" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
      	
		Statement st11=con.createStatement();
	      ResultSet rs11=st11.executeQuery("select prodid from products");
		while(rs11.next())
	{
%>


<option value="<%=rs11.getString("prodid")%>"><%=rs11.getString("prodid")%></option>
<%}
}catch(Exception e1){}%>
</select>
</td>
<td>
<select name="preo" id="preo"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names1.printOptions("preo");</script>
</select>
</td>


 <TD><INPUT size=10 name="qtyo"></TD>
    <TD><input type="submit" name="submit" value="1.ADD TO CART"></TD></TR>
  <tr>  
    <TD>
</tr>

<tr>
<td>
<select name="pidf" id="pidf" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
      	
		Statement st21=con.createStatement();
	      ResultSet rs21=st21.executeQuery("select prodid from products");
		while(rs21.next())
	{
%>


<option value="<%=rs21.getString("prodid")%>"><%=rs21.getString("prodid")%></option>
<%}
}catch(Exception e21){}%>
</select>
</td>
<td>
<select name="pref" id="pref" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names1.printOptions("district");</script>
</select>
</td>
<TD><INPUT size=10 name="qtyf"></TD>
    <TD><input type="submit" name="submit"bgcolor="lightblue" value="2.ADD TO CART"></TD></TR>
  <tr>  
    <TD>
</tr>

<tr>
<td>
<select name="pids" id="pids" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
		Statement st31=con.createStatement();
	      ResultSet rs31=st31.executeQuery("select prodid from products");
		while(rs31.next())
	{
%>


<option value="<%=rs31.getString("prodid")%>"><%=rs31.getString("prodid")%></option>
<%}
}catch(Exception e31){}%>
</select>
</td>
<td>
<select name="pres" id="pres"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names3.printOptions("district");</script>
</select>
</td>


 <TD><INPUT size=10 name="qtys"></TD>
    <TD><input type="submit" name="submit" value="3.ADD TO CART"></TD></TR>
  <tr>  
    <TD>
</tr>

<tr>
<td>
<select name="pidt" id="pidt" style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<%  try
      {
      	
		Statement st41=con.createStatement();
	      ResultSet rs41=st41.executeQuery("select prodid from products");
		while(rs41.next())
	{
%>


<option value="<%=rs41.getString("prodid")%>"><%=rs41.getString("prodid")%></option>
<%}
}catch(Exception e41){}%>
</select>
</td>
<td>
<select name="pret" id="pret"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names4.printOptions("district");</script>
</select>
</td>


 <TD><INPUT size=10 name="qtyt"></TD>
    <TD><input type="submit" name="submit" value="4.ADD TO CART"></TD></TR>
  

 </TABLE></center>
<input type="hidden" val="false" name="hide">
<input type="hidden" val="false" name="hideo">
<input type="hidden" val="false" name="hidef">
<input type="hidden" val="false" name="hides">
<input type="hidden" val="false" name="hidet">
<TABLE border=0>
   <tr><td width="42%"></td><td>For more info</td>
    <td><A href="vieworder.jsp">VIEW ORDER</A></td></tr>
    <tr>
    <TD width="40%"></TD>
    <TD>Mode Of Payment:</TD>
    <TD><SELECT name="mop"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

 <OPTION value="dd" selected>DD<OPTION 
      value="vpp">VPP</OPTION></SELECT></TD></TR></TBODY></TABLE>
<TABLE border=0>
  <TBODY>
  <TR>
    <TD width="28%"></TD>
    <TD>(In case modeofpayment is <B>DD</B> fill the details marked with 
      <B>'&spades;'</B>)</TD></TR></TBODY></TABLE>
<TABLE border=0>
  <TBODY>
  <TR>
    <TD width="37%"></TD>
    <TD><B>&#9824;</B>DD Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD><INPUT name="ddn"></TD></TR>
  <TR>
    <TD width="33%"></TD>
    <TD><B>&#9824;</B>Bank Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD><INPUT name="bnm"></TD></TR>
  <TR>
    <TD width="33%"></TD>
    <TD>Need: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    <TD><SELECT size=1 name="ned"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">
<OPTION value=immediate 
        selected>Immediate<OPTION value=urgent>Urgent<OPTION 
        value=late>Late</OPTION></SELECT></TD></TR></TBODY></TABLE>
<TABLE border=0>
  <TBODY>
  <TR>
    <TD width="26%"></TD>
    <TD><FONT color=red>'*'</FONT><B>fields are compulsory.</B></TD></TR>
  <TR>
    <TD></TD>
    <TD>Enter any<B> comments</B> below:
        <B>You've Typed<INPUT size=2 value=0 name=lentxt>characters so 
    far</B></TD></TR>
  <TR>
    <TD></TD>
    <TD><TEXTAREA name="comments" rows=2 cols=41 onchange=countchars()></TEXTAREA> 
    </TD></TR>
  <TR>
    <TD></TD>
    <TD><INPUT type="submit" name="submit" value="Submit Form"><B>to order.</B></TD></TR>
  <TR>
    <TD></TD>
    <TD><INPUT type=reset value=Clear><B>to 
startup.</B></TD></TR></TBODY></TABLE></FORM></FONT>
</body></HTML>

