package mytags;
import java.sql.*;
import java.io.*;
public class appdlr
 {
 String coun,sta,dst;
 Statement st,ste;
 Connection con;
 public void setCoun(String coun)
 {
 this.coun=coun;
 }
 public void setSta(String sta)
 {
 this.sta=sta;
 }
 public void setDst(String dst)
 {
 this.dst=dst;
 }
 public String retcoun()
  {
  return this.coun;
  }
  public String retsta()
  {
  return this.sta;
  }
  public String retdst()
  {
  return this.dst;
  }
 public void estconnection()
 {
 try
  {
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


  st=con.createStatement();
  ste=con.createStatement();
  }
  catch(Exception e)
  {
  System.out.println(e.getMessage());
  }
  }
  public int existing()
  {
  int flag=0;
  try
  {
  String sqr="select rdcode from rdealers where country='"+coun+"' and state='"+sta+"' and district='"+dst+"'";
  System.out.println(sqr);
  ResultSet rs=st.executeQuery(sqr);
  if(rs.next())
  flag=1;
  else
  flag=0;
  }
  catch(Exception e)
  {System.out.println(e.getMessage());}
  if(flag==1)return 1;
  else
  return 0;
  }
 public void expire()
  {
  try
  {
  String qre="update dealers set status='e' where add_months(dtaply,6)<sysdate";
  ste.executeUpdate(qre);
  }
  catch(Exception e)
  {System.out.println(e.getMessage());}
}
}
