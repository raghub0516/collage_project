<body background="images/center.jpg" alink=lightblue vlink=blue>
<br>
<br>
<br>

<%@ page language="Java" import="java.sql.*"%>
<% 

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
  	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
Statement st=con.createStatement();
String s="delete from exper";
int i = st.executeUpdate(s);

System.out.println(i);


String s1="delete dealers where add_months(dtaply,6)>sysdate";
    int j=st.executeUpdate(s1);

System.out.println(j);
con.commit();
out.println("<center>");
out.println("<font size=4 color=purple<b>The Unregistered Dealers are deleted Successfully<b></font>");
out.println("</center>");
}


catch(Exception e){System.out.println(e);}
%>
