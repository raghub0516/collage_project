<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="cpd" scope="session" class="mytags.delchrges"/>
<jsp:setProperty name="cpd" property="*"/>
<a href="ltschges.html">back</a>
&nbsp;&nbsp;
<a href="viewchges.jsp">view charges</a>
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
    rs=st.executeQuery("select country from chrges");
    rs1=st1.executeQuery("select country from chrges");
    if(!rs1.next())
     {
      out.println("Information Not Available.");
     }
   else
    {
    out.println("<form action=\"tsdelpt.jsp\" method=post>");
    out.println("Select 'name' of Country");
    out.println("<select name=\"coun\" size=1 STYLE=\"background:ffffb0\">");
    while(rs.next())
     {
     String tcoun=rs.getString(1);
     out.println("<option value=\""+tcoun+"\">"+tcoun+"</option>");
     }
    out.println("</select>&nbsp;in which your Products should not available ");
    out.println("<br><input type=\"submit\" name=\"submit\" value=\"O.K\"></form>");
    }
   } 
  catch(Exception e)
   {
    out.println(e.getMessage());}
%>
<br><br>
Make sure your Products  will not be Available to
 "<% out.print(request.getParameter("coun"));%>".<br><br>
Are you Sure 
<a href="tdel.jsp">Yes</a>/
<a href="ltschges.html">No</a>?.
</html>

