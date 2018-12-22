<html>
<%@include file="OPTION.jsp"%>
<head>
<script language="Javascript" type="text/javascript">
function picker(){

var xmlnameField = document.getElementById('xmlname');
var seasonField = document.getElementById('Season');

}
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
   if((f1.fname.value).length>20)
    {
     alert("First name Should not Exceed 20 Characters");
     f1.fname.value="";
     f1.fname.focus();
     return false;
    }
}
 if(f1.lname.value=="")
  {
  alert("please enter lastname!"); 
  f1.lname.focus();
  return false;
  }
else
  {
   if((f1.lname.value).length>20)
    {
     alert("Last name Should not Exceed 20 Characters");
     f1.lname.value="";
     f1.lname.focus();
     return false;
    }
}
 if(f1.frmne.value=="")
  {
  alert("please enter firmname!");
  f1.frmne.focus();
  return false;
  }
else
  {
   if((f1.frmne.value).length>25)
    {
     alert("Firm name Should not Exceed 25 Characters");
     f1.frmne.value="";
     f1.frmne.focus();
     return false;
    }
}
 if(f1.phn.value=="")
  {
  alert("Please Enter phone number!");
  f1.phn.focus();
  return false;
  }
else
  {
   if((f1.phn.value).length>20)
    {
     alert("phone number Should not contain more than 20 digits.");
     f1.phn.value="";
     f1.phn.focus();
     return false;
    }
}
 if(f1.fax.value!="")
  {
   if((f1.fax.value).length>20)
    {
     alert("fax number Should not contain more than 20 digits.");
     f1.fax.value="";
     f1.fax.focus();
     return false;
    }

  }
 if(f1.eml.value=="")
  {
  alert("Please Enter mailid!");
  f1.eml.focus();
  return false;
  }
else
  {
   if((f1.eml.value).length>25)
    {
     alert("your emailId should contain 25 chars only");
     f1.eml.value="";
     f1.eml.focus();
     return false;
    }
}
if(f1.adr.value=="")
  {
  alert("Please enter your address!"); 
  f1.adr.focus();
  return false;
  }
else
  {
   if((f1.adr.value).length>65)
    {
     alert("Please Specify your address in 65 characters");
     f1.adr.value="";
     f1.adr.focus();
     return false;
    }
}
if(f1.dst.value=="")
  {
  alert("Please enter your dst!");
  f1.dst.focus();
  return false;
  }
else
  {
   if((f1.dst.value).length>20)
    {
     alert("dst name Should not Exceed 20 Characters");
     f1.dst.value="";
     f1.dst.focus();
     return false;
    }
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
if((f1.fax.value!="")&&(f1.fax.value!="not existing"))
{
if((f1.fax.value).indexOf('-')==-1)
 {
 alert("please enter valid fax number\nformat STD/ISD-phoneno");
 f1.fax.focus();
 return false;
 }
if((f1.fax.value).substring(1,(f1.fax.value).indexOf('-'))<3)
  {
  alert("Please enter valid fax number\nSTD/ISD-phonenum");
  f1.fax.focus();
  return false;
  }
}
if(f1.fax.value=="")
{
f1.fax.value="not existing";
}
if(f1.sta.value=="")
 {
 alert("sta is not specified\nwe consider you as local to Karnataka");
 f1.sta.value="Karnataka";
 f1.cty.value="India";
 f1.sta.focus();
return false;
}
if((f1.sta.value).length>20)
    {
     alert("sta name Should not contain more than 20 chars.");
     f1.sta.value="";
     f1.sta.focus();
     return false;
    }
if((f1.pdg.value=="")&&(f1.ato.value=="")&&(f1.me.value==""))
{
f1.pdg.value="not dealing";
f1.ato.value=0;
f1.me.value=0;
}
if((f1.pdg.value!="")&&(f1.pdg.value!="not dealing"))
 {
if((f1.pdg.value).length>25)
    {
     alert("Products dealing Should not contain more than 25 chars.");
     f1.pdg.value="";
     f1.pdg.focus();
     return false;
    }
if((f1.ato.value=="")||(f1.ato.value==0))
 {
  alert("you are dealing some product\nPlease enter annual turnover");
  f1.ato.focus();
  return false;
   }
 else{
if((f1.ato.value).length>20)
    {
     alert("Annturnover Should not contain more than 20 digits.");
     f1.sta.value="";
     f1.sta.focus();
     return false;
    }
 if(isNaN(f1.ato.value))
 {
 alert("please enter valid annual turn over");
 f1.ato.focus();
 return false;
 }}
  if((f1.me.value=="")||(f1.me.value==0))
 {
 alert("you are dealing some product\nPlease enter your experience");
 f1.me.focus();
 return false; 
}
 else
{if((f1.me.value).length>7)
    {
     alert("Enter your Max Expr in 7 digits.");
     f1.me.value="";
     f1.me.focus();
     return false;
    }
 if(isNaN(f1.me.value))
 {
 alert("please enter valid experience value");
 f1.me.focus();
 return false;
 }}
}
else
 {
 if((f1.ato.value!="")&&(f1.pdg.value=="")&&(f1.ato.value!="0"))
{
alert("You should specify product dealing");
f1.pdg.focus();
return false;
}else
if((f1.me.value!="")&&(f1.pdg.value=="")&&(f1.me.value!="0"))
 {
alert("You have experience\nYou should specify product dealing");
f1.pdg.focus();
return false;
}}
if(f1.cty.value=="")
  {
  alert("Please enter your ctytry Name!");
  f1.cty.focus();
  return false;
  }
else
if(f1.cty.value!="")
 {
  if((f1.cty.value).length>20)
   {
   alert("please enter ctytry name in 20 chars");
   f1.cty.value="";
   f1.cty.focsu();
  return false;
  }
}
if(f1.zip.value!="")
 {
if((f1.zip.value).length>10)
    {
     alert("please enter valid zip number");
     f1.zip.value="";
     f1.zip.focus();
     return false;
    }
 if(isNaN(f1.zip.value))
 {
alert("please enter valid zip code");
 f1.zip.focus();
 return false;
} }
return true; 
}
function clearall()
 {
 f1.fname.focus();
 }
</script>
</head>
<form action="dealer.jsp" onsubmit="return checkinput()" onreset="return clearall()" name="f1" method="post">
<font face="sans-serif">
<body background="images/center.jpg" alink=blue vlink=blue>
<body onLoad="initDynamicOptionLists()">

<script language="Javascript" type="text/javascript">
var names = new DynamicOptionList("sta","dst","xmlname");
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

names.forValue("MAHARASHTRA").addOptions("AURANGABAD","BANDRA(MUMBAI SUBURBAN dst)","NAGPUR ","PUNE",
"AKOLA","CHANDRAPUR","JALGAON","PARBHANI","SHOLAPUR","THANE",
"LATUR","MUMBAI-CITY","BULDHANA","DHULE","KOLHPUR","NANDED",
"RAIGAD","AMRAVATI","NASHIK","WARDHA","AHMEDNAGAR ","BEED",
"BHANDARA","GADCHIROLI","JALNA","OSMANABAD ","RATNAGIRI ",
"SANGLI","SATARA","SINDUDURG","YAVATMAL","NANDURBAR",
"WASHIM","GONDIA","HINGOLI");

names.forValue("MANIPUR").addOptions("IMPHAL EAST ","IMPHAL WEST ","THOUBAL",
"BISHNUPUR","CHANDEL ","CHURACHANDPUR",
"SENAPATI","UKHRUL","TAMENGLONG");


names.forValue("MEGHALAYA").addOptions("RI-BHOI dst","SOUTH GARO HILLS","EAST KHASI HILL",
"EAST GARO HILL","WEST GARO HILL","JAINTIA HILL",
"WEST KHASI HILL");

names.forValue("MIZORAM").addOptions("LUGLEI dst","CHIMTIPUI dst","AIZAWAL",
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

names.forValue("TRIPURA").addOptions("NORTH dst","SOUTH dst","WEST dst","DHALAI dst");

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
 
</script>


<A HREF="helpme.html#NewDealer">Help</A>
<CENTER>
<hr width=350 color=lightblue size=3>
<h2><font size=4 color="purple"><b><i>DEALER  APPLICATION FORM </i></font></b></h2>
<hr width=350 color=lightblue size=3>
</font></center></PRE><font face="verdana" text="black" size="3">
<table border="0" cellspacing="0" cellpadding="0" width=100%>
<tr>
<td width=25%></td><td width=30%><font color="red">*</font>First Name:</td><td><input size=20 name="fname"></td></tr><tr>
<td></td><td><font color="red">*</font>Last  Name:</td><td><input size=20 name="lname">
</td></tr><tr>
<td></td><td><font color="red">*</font>Firm  Name:</td><td><input size=20 name="frmne">
</td></tr><tr>
<td></td><td>Product Dealing:</td><td><input size=20 name="pdg"></td></tr><tr>
<td></td><td>Annual Turn Over:</td><td><input size=20 name="ato"></td></tr><tr>
<td></td><td>Marketing Experience( in yrs):<br>(ex:- for 6months enter as 0.5)</td><td><input size=20 name="me">
</td></tr>
<tr>
<td></td><td><font color="red">*</font>Phone:</td><td><input size=20 name="phn">
</td></tr><tr>
<td></td><td>Fax:</td><td><input size=20 name="fax">
</td></tr><tr>
<td></td><td>
<font color="red">*</font>Email:</td><td><input size=20 name="eml"></td></tr><tr>
<td></td><td>
<font color="red">*</font>Address:</td><td><textarea cols=20 rows="5" name="adr"></textarea>
</td></tr><tr><td>
<td>country Name </td><td>
<input type="hidden" name="cty"value ="India"size=13 STYLE="background:"><b><font Size="3">India</b></font></td></tr>
<tr><td></td><td>state Name </td><td>
<select name="sta" id="sta" style="font-size:9pt;font-family:Century Gothic;color:12345;background-color:lightblue;">
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
</select>
</td></tr>
<tr>
<td></td>
<td>District:</td>
<td><select name="dst" id="dst"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">
<script language="Javascript" type="text/javascript">names.printOptions("dst");</script>
</select>
</td></tr>
<tr>
<td></td><td>
Zip:</td><td><input size=20 name="zip"></td></tr><tr>
<td></td></tr>
</table>
<BR>
<table border="0">
<tr>
<td width=52%></td><td><font color="red">'*'</font><b>fields are compulsory.</b></td></tr>
<tr></tr><tr>
<td></td><td><input type=submit value="Submit Form"><b>to apply.</b></td></tr><tr>
<td></td><td><input type=reset  value="Clear"><b>to startup.</b></td></tr>
</font>
</form>
</html>


