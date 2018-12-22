<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<jsp:useBean id="trd" scope="session" class="mytags.appt"/>
<jsp:setProperty name="trd" property="*"/>
<jsp:useBean id="ad" scope="session" class="mytags.appdlr"/>
<%@ page language="Java" import="java.sql.*"%>
<%
  String fdcode,ffname,flname,ffirm,fphone,ffax,femail,faddress,fdistrict,fstate;
  String fcountry,fzip,fprodeal,fanntrv,fme,fpwd,iq,iqa,iqb,eqa,eqb; 
  try
    {
    String cty=ad.retcoun();
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

    Statement rst=con.createStatement();
    Statement st=con.createStatement();
    Statement ast=con.createStatement();
    Statement bst=con.createStatement();
    Statement ist=con.createStatement();
    Statement est=con.createStatement();
    Statement dist=con.createStatement();
    Statement dest=con.createStatement();
    String dcd=request.getParameter("rdc");
    Statement abc=con.createStatement();
     // out.println(dcd);
    ResultSet rrs=rst.executeQuery("select * from rdealers where rdcode='"+dcd+"'");
    ad.estconnection();
    int flag=ad.existing();
    //out.println("flag="+flag);
    if(flag==1)
    {
     out.println("<b>Dealer already existing in the area specified.</b>");
    }
    else
    {
    if(rrs.next())
    {
     out.println("<b>Dealer Appointed just Now.</b>");
    }
    else
    {
    ResultSet rs=st.executeQuery("select * from dealers where dcode='"+dcd+"'");
    ResultSet rs1=ast.executeQuery("select * from exper where dcode='"+dcd+"'");
    String spd="select concat(substr(dcode,13,15),substr(lname,1,3)) from dealers ";
    String dpd="where dcode='"+dcd+"'";
    ResultSet rs2=bst.executeQuery(spd+dpd);
    //out.println(spd+dpd);
    rs.next();
    rs1.next();
    rs2.next();
    fdcode=rs.getString(1);
    fpwd=rs2.getString(1);
    ffname=rs.getString(2);
    flname=rs.getString(3);
    ffirm=rs.getString(4);
    fphone=rs.getString(5);
    ffax=rs.getString(6);
    femail=rs.getString(7);
    faddress=rs.getString(8);
    fdistrict=rs.getString(9);
    fstate=rs.getString(10);
    fcountry=rs.getString(11);
    fzip=rs.getString(12);
    fprodeal=rs1.getString(2); 
    fanntrv=rs1.getString(3);
    fme=rs1.getString(4);
    iq="insert into rdealers values('"+fdcode+"','"+fpwd+"','"+ffname+"','"+flname+"','"+ffirm;
    iqa="','"+fphone+"','"+ffax+"','"+femail+"','"+fcountry+"','"+fstate+"','"+fdistrict;
    iqb="','"+fzip+"',sysdate,'"+faddress+"')";
    //out.println(iq+iqa+iqb);
    out.println("<b>Newly appointed Dealer code:<font color=brown>"+fdcode+"</font></b><br>");
    out.println("<b>Dealer password:<font color=brown>"+fpwd+"</font></b><br>");
    out.println("<b>Dealer MailId:<font color=brown>"+femail+"</font></b><br>");
    out.println("<b><font color=brown>");
    out.println("<br>Communicate this code and password information to New Dealer.</font><br>");
    out.println("<a href=\"http://localhost:8000/project/mailform.jsp\" method=post TARGET=\"_top\">");
    out.println("Click here</a> to send this information as mail.</b>");
    ist.executeUpdate(iq+iqa+iqb);
    eqa="insert into rexper values('"+fdcode+"','"+fprodeal+"','"+fanntrv+"','"+fme+"')";
    //out.println(eqa);
    est.executeUpdate(eqa);
    dist.executeUpdate("delete from exper where dcode='"+fdcode+"'"); 
    dest.executeUpdate("delete from dealers where dcode='"+fdcode+"'");
    if(request.getParameter("hd").equals("0"))
    {
    String tcs=request.getParameter("trs");
    String tts="insert into chrges values('"+cty+"','"+tcs+"')";
    //out.println(tts);
    abc.executeUpdate(tts);
    }
}}}
  catch(Exception e)
  {
  out.println(e.getMessage());
  }
%>