<html>
<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<jsp:useBean id="dpd" scope="session" class="mytags.delprds"/>
<jsp:setProperty name="dpd" property="*"/>
<%@ page language="java" import="java.sql.*"%>
<a href="adproducts.html">back</a>
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
    con=con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


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
    out.println("<form action=\"cfdelpt.jsp\" method=post>");
    out.println("Select 'code' of Product");
    out.println("<select name=\"pid\" size=1 STYLE=\"background:lightblue\">");
    while(rs.next())
     {
     String tid=rs.getString(1);
     out.println("<option value=\""+tid+"\">"+tid+"</option>");
     }
    out.println("</select>&nbsp;to be removed from CATALOG");
    out.println("<input type=\"submit\" name=\"submit\" value=\"O.K\"></form>");
    }
   } 
  catch(Exception e)
   {
    out.println(e.getMessage());}
  %>
<br><br>
Product with code "<% out.print(request.getParameter("pid"));%>" will be removed from catalog.<br><br>
<font color=brown> Are you Sure 
<a href="pdel.jsp">Yes</a>/
<a href="adproducts.html">No</a>?.</font>
</html>
