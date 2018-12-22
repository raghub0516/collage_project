<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<HR width=300 color=lightblue SIZE=2>
<center>
<h2> <font size="4" color="purple"><b><i>PRODUCTS  CATALOG</i></b></font></h2></center>
<HR width=300 color="lightblue"SIZE=2>
<br><br><br><br>
<%@ page language="java" import="java.sql.*"%>
<%
 
  Connection con;
  Statement st,st1;
  ResultSet rs,rs1; 
try
   {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

    st=con.createStatement();
    st1=con.createStatement();
    rs=st.executeQuery("select * from products");
    rs1=st1.executeQuery("select * from products");
    if(!(rs1.next())){out.println("No Catalog Information Avalible");}
    else
     {
        while(rs.next())
         {
          out.println("<hr color=lightblue><b>");
          out.println("Itemcode: "+rs.getString(1)+".<br>");
          out.println("ItemName: "+rs.getString(2)+".<br>");
          out.println("Price   : Rs"+rs.getString(7)+".<br>");
          out.println("Description :"+rs.getString(6)+".<br>");
          out.print("&nbsp;&nbsp;&nbsp;&nbsp;Warrenty :"+rs.getString(5)+".");
          out.print("&nbsp;&nbsp;&nbsp;&nbsp;ElecticalInput(required) :"+rs.getString(4)+".");
         }
     }
    }
 catch(Exception e){out.println(e.getMessage());}
%>   
         
