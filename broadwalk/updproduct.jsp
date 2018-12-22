<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<%@ page language="java" import="java.sql.*"%>
<a href="http://localhost:8000/project/adproducts.html">back</a>
&nbsp;&nbsp;
<a href="dcatalog.jsp">view catalog</a>
<br><br><br>
<b>
<%
  Connection con;
  Statement st,st1;
  ResultSet rs,rs1;
  try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


    st=con.createStatement();
    st1=con.createStatement();
    rs=st.executeQuery("select prodid from products");
    rs1=st1.executeQuery("select prodid from products");
    if(!rs1.next())
     {
      out.println("No Products Existing in Catalog");
     }
   else
    {
    out.println("<form action=\"cfupdpt.jsp\" method=post>");
    out.println("Select 'code' of Product");
    out.println("<select name=\"pid\" size=1 STYLE=\"background:lightblue\">");
    while(rs.next())
     {
     String tid=rs.getString(1);
     out.println("<option value=\""+tid+"\">"+tid+"</option>");
     }
    out.println("</select>&nbsp;to be Updated.");
    out.println("<input type=\"submit\" name=\"submit\" value=\"O.K\"></form>");
    }
   } 
  catch(Exception e)
   {
    out.println(e.getMessage());}
%>
</html> 

