<html>
<TITLE>Updateinfo</TITLE>
<body bgcolor="a3a352">
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
    String ffnm,ffrm,fphn,ffax,feml,fcoun,fsta,fdst,fadr,fprd,fatv,s,s1,s2,s3;
    ffnm=request.getParameter("fnm");
    ffrm=request.getParameter("frm");
    fphn=request.getParameter("phn");
    ffax=request.getParameter("fax");
    feml=request.getParameter("eml");
    fcoun=request.getParameter("coun");
    fsta=request.getParameter("sta");
    fdst=request.getParameter("dst");
    fadr=request.getParameter("adr");
    fprd=request.getParameter("prd");
    fatv=request.getParameter("anv");
    s="update rdealers set lname='"+ffnm+"',frmname='"+ffrm+"',phone='"+fphn+"',fax='"+ffax;
    s1="',email='"+feml+"',country='"+fcoun+"',state='"+fsta+"',district='"+fdst+"',adr='";
    s2=fadr+"' where rdcode='"+dcd+"'";
    s3="update rexper set prodeal='"+fprd+"',anntrv='"+fatv+"' where rdcode='"+dcd+"'";
    st.executeUpdate(s+s1+s2);
    st1.executeUpdate(s3);
   }
  catch(Exception e){out.println(e.getMessage());}
 %>
<b><font color=brown>Your Information Successfully Modified.</font></b>
</html>
 