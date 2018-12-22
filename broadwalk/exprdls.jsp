<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<a href="http:\\localhost:8000\project\adlink.html">back</a>

<%@page language="Java" import="java.sql.*"%>
<%
  try
    {
    	Class.forName("oracle.jdbc.driver.OracleDriver");
  	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

    Statement st=con.createStatement();
    Statement st1=con.createStatement();
    String s="select fname,phone,email,country,state,district,address ";
    String s1="from dealers where add_months(dtaply,6)>sysdate";
    ResultSet rs=st.executeQuery(s+s1);
    ResultSet rs1=st1.executeQuery(s+s1);
   if(!rs1.next())
    out.println("<h4> No Expired Applications Existing</h4>");
   else
     {
  		out.println("<form action=\"expdel.jsp\" name=\"f1\">");
 		 out.println("<h5>Application for dealership that are Expired</h5>");
 		 out.println("<center><TABLE border= bordercolor= bgcolor=ffffb0><TR bgcolor=b75b00><td><b>Name</b></td><td><b>Phone</b></td><td><b>EmailId</b>");
 		 out.println("</td><td><b>Country</b></td><td><b>State</b></td><td><b>District</b></td>");
 		 out.println("<td>Address</td></tr>");
 		  while(rs.next())
   		 {
   			 out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>");
   			 out.println(rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>");
    			out.println(rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>");
   			 out.println(rs.getString(7)+"</td></tr>");
   		 }
 	 out.println("</table></center><br>");
 	 out.println("<b><input type=submit name=\"submit\" value=\"Delete\"> all.</b>");
 	 out.println("</form></html>");
	}
  }catch(Exception e)
  {
  out.println(e.getMessage());
  }
 %>