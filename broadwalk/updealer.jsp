<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<a href="ilogin.jsp">back</a>
<script language="JavaScript">
function check()
 {
 if(f1.fnm.value=="")
  {
   alert("please enter your name");
   f1.fnm.focus();
   return false;
   }
 else
 if(f1.fnm.value!="")
 {
 if((f1.fnm.value).length>20)
  {
  alert("please enter your name in 20chars");
  f1.fnm.focus();
  return false;
  }}
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
if((f1.eml.value!="")||(((f1.eml.value).indexOf("@"))==-1)||(((f1.eml.value).indexOf("."))==-1))
   {
if(((f1.eml.value).indexOf("."))-((f1.eml.value).indexOf("@"))<=1)
  {
  alert("Please Enter Valid Mail id!");
   f1.eml.focus();
   return false;
   }
}
if(f1.adr.value=="")
 {
  alert("please enter your address");
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
if(f1.prd.value=="")
{
f1.prd.value="not dealing";
f1.anv.value=0;
}
else
{
if((f1.prd.value).length>25)
{
alert("please enter products dealing in 25 chars");
f1.prd.value="";
f1.prd.focus();
return false;
}
if(f1.anv.value=="")
 {
alert("you are dealing some products\nplease enter annualturnover");
f1.anv.focus();
return false;
}}
return true;
}
</script>
<%@page language="Java" import="java.sql.*"%>
<BR><BR>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
<% 
   String dcd=dlr.retdcode();
   try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


    Statement st=con.createStatement();
    Statement st1=con.createStatement();
    Statement st2=con.createStatement();
    String s="select lname,frmname,phone,fax,email,country,state,district,adr from rdealers ";
    String s1="where rdcode='"+dcd+"'";
    String s2="select prodeal,anntrv from rexper where rdcode='"+dcd+"'";
    ResultSet rs=st.executeQuery(s+s1);
    ResultSet rs1=st1.executeQuery(s+s1);
    ResultSet rs2=st2.executeQuery(s2);
    if(!rs1.next())
    {
     out.println("No Information Available");
    }
    else
     {
     rs.next();
     rs2.next();
     out.println("<form action=\"pupdate.jsp\" name=\"f1\" method=post");
     out.println(" method=post onsubmit=\"return check()\">");
     out.println("<b>Your Information Existing in organization Records.</b>");
     out.println("<table><tr><td width=100></td><td>DealerName  </td><td><input type=text");
     out.println(" value=\""+rs.getString(1)+"\" name=\"fnm\" size=20></td></tr>");
     out.println("<tr><td></td><td>FirmName  </td><td><input type=text READONLY ");
     out.println("value=\""+rs.getString(2)+"\" name=\"frm\" size=20></td></tr>");
     out.println("<tr><td></td><td>Phone  </td><td><input type=text ");
     out.println("value=\""+rs.getString(3)+"\" name=\"phn\" size=20></td></tr>");
     out.println("<tr><td></td><td>Fax  </td><td><input type=text ");
     out.println("value=\""+rs.getString(4)+"\" name=\"fax\" size=20></td></tr>");
     out.println("<tr><td></td><td>Email  </td><td><input type=text ");
     out.println("value=\""+rs.getString(5)+"\" name=\"eml\" size=20></td></tr>");
     out.println("<tr><td></td><td>Country  </td><td><input type=text READONLY ");
     out.println("value=\""+rs.getString(6)+"\" name=\"coun\" size=20></td></tr>");
     out.println("<tr><td></td><td>State  </td><td><input type=text READONLY ");
     out.println("value=\""+rs.getString(7)+"\" name=\"sta\" size=20></td></tr>");
     out.println("<tr><td></td><td>District  </td><td><input type=text READONLY ");
     out.println("value=\""+rs.getString(8)+"\" name=\"dst\" size=20></td></tr>");
     out.println("<tr><td></td><td>Address  </td><td><TEXTAREA ");
     out.println("name=\"adr\" rows=5 cols=10>"+rs.getString(9)+"</TEXTAREA></td></tr>");
     out.println("<tr><td></td><td>ProductsDealing  </td><td><input type=text ");
     out.println("value=\""+rs2.getString(1)+"\" name=\"prd\" size=20></td></tr>");
     out.println("<tr><td></td><td>AnnualTurnOver  </td><td><input type=text ");
     out.println("value=\""+rs2.getString(2)+"\" name=\"anv\" size=20></td></tr>");
     out.println("</table><br>");
     out.println("<b><input type=submit name=\"submit\" value=\"modify\"> Now.</b>");
     out.println("</form>");
     }
   }
catch(Exception e){out.println(e.getMessage());}
 %>
</html>