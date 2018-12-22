<html>
<head>
<%@include file="OPTION.jsp"%>
<script language="Javascript" type="text/javascript">
function picker(){

var xmlnameField = document.getElementById('xmlname');
var seasonField = document.getElementById('Season');

}
</script>
<body onLoad="initDynamicOptionLists()">
<script language="JavaScript">
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

function check()
{
if(f1.coun.value=="")
{
alert("Please enter country name");
f1.coun.focus();
return false;
}
else
if((f1.coun.value).length>15)
{
alert("please enter country name in 15 chars only");
f1.coun.value="";
f1.coun.focus();
return false;
}
if(f1.sta.value=="")
{
alert("Please enter sta name");
f1.sta.focus();
return false;
}
else
if((f1.sta.value).length>15)
{
alert("please enter sta name in 15 chars only");
f1.sta.value="";
f1.sta.focus();
return false;
}
if(f1.dst.value=="")
{
alert("Please enter dst name");
f1.dst.focus();
return false;
}
else
if((f1.dst.value).length>15)
{
alert("please enter dst name in 15 chars only");
f1.dst.value="";
f1.dst.focus();
return false;
}
return true;
}

</script>
</head>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="adlink.html">back</a>
<form action="aptdlr.jsp" method=post
TARGET="middle" name="f1" onsubmit="return check()">
<center>
<b>Please Enter Following Information about area to appoint NewDealer.</b>
<br><br>
<table>
<tr><td width=15%></td>
<td><b>Country Name  </b></td><td>
<input type="hidden" name="coun"value ="India"size=13 STYLE="background:ffcc97"><b><font Size="3">India</b></font></td></tr>
<tr><td></td><td><b>StateName </b></td><td>
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
</select>
</td></tr>
<tr><td></td><td><b>DistrictName  </b></td><td>
<select name="dst" id="dst"style="font-size:9pt;font-family:Century Gothic;color:;background-color:lightblue;">

<script language="Javascript" type="text/javascript">names.printOptions("dst");</script>
</select>
</td></tr>
</table><br><br>
<b>Click <input type="submit" name="submit" value="O.K">to appoint.</b>
</form>
</center>
</body>
</html> 