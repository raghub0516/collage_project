<html>
<body background="images/center.jpg" alink=lightblue vlink=blue>
<%@ page language="Java" import="java.sql.*" %>
<%
 Connection con;
 Statement st,st1;
 ResultSet rs,rs1;
 out.println("<a href=\"addproduct.html\">addmore</a>&nbsp;&nbsp;");
 out.println("<a href=\"dcatalog.jsp\">viewcatalog</a><br><br>");
 try
  {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con=con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

 st=con.createStatement();
 String sq="select prodid from products where prodid='"+request.getParameter("pcd")+"'";
 rs=st.executeQuery(sq);
 if(rs.next())
  {
    out.println("<b>There is product already Existing with this code in CATALOG</b>.");
  }
 else
  {
   String pid,pname,cupr,depr,desr,capt,wart,elec,stq,stq1;
   pid=request.getParameter("pcd");
System.out.println(pid);
   pname=request.getParameter("pnm");
System.out.println(pname);

   cupr=request.getParameter("cp");
System.out.println(cupr);

   depr=request.getParameter("dp");
System.out.println(pid);

   desr=request.getParameter("des");
System.out.println(pid);

  

  String capty=request.getParameter("capt");
System.out.println(pid);

   float cust=Float.parseFloat(cupr);
System.out.println(pid);

   float deal=Float.parseFloat(depr);
System.out.println(pid);

   wart=request.getParameter("war");
System.out.println(pid);

   elec=request.getParameter("ele");
System.out.println(pid);

   st1=con.createStatement();
   stq="insert into products values('"+pid+"','"+pname+"',"+capty+",'"+elec+"','"+wart+"','";
   stq1=desr+"',"+cust+","+deal+")";
   st1.executeUpdate(stq+stq1); 
   out.println("<b>This product Successfully added to catalog</b>");
  }
}
catch(Exception e){out.println(e.getMessage());
}
%>
</html>
