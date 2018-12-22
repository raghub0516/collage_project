<html>
<body bgcolor="a3a352">
<%@ page language="java" import="java.sql.*"%>
<a href="updproduct.jsp">back</a>
&nbsp;&nbsp;
<a href="dcatalog.jsp">view catalog</a>
<br><br><br>
<b>
<%
  String dsr=request.getParameter("des");
  String cup=request.getParameter("cp");
  String dup=request.getParameter("dp");
  String prod=request.getParameter("prid");
  Connection con;
  Statement st;
  ResultSet rs;
  try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


    st=con.createStatement();
    String qr="update products SET cmt='"+dsr+"',cschge='"+cup+"',deschge='"+dup+"'";
    String qr1=" where prodid='"+prod+"'";
    //out.println(qr+qr1);
    String qr2=qr+qr1;
    st.executeUpdate(qr2);
    out.println("Product with code \""+prod+"\" Successfully Updated");
    }
   catch(Exception e)
   {
    out.println(e.getMessage());
   }
%> 
    
