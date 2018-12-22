package mytags;
import java.io.*;
import java.sql.*;
public class deldlr
  {
  String coun,sta,dst;
  Connection con;
  Statement st;
  ResultSet rs;
  String rde;
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
   public void estconnection()
    {
    try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


    st=con.createStatement();
    }
    catch(Exception e)
    {
    System.out.println(e.getMessage());
    }
   }
   public int existing()
   {
   int flag=0;
   try{
   String s="select rdcode from rdealers where country='"+this.coun+"' and state='"+this.sta+"' and district='"+this.dst+"'";
   System.out.println(s);
   rs=st.executeQuery(s);
System.out.println("======");
   if(rs.next())
   {flag=1; rde=rs.getString(1);
	System.out.println(rde);}
   else flag=0;
   }
   catch(Exception e){System.out.println(e.getMessage());}
   if(flag==0)return 0;
   return 1;
   }
   public String retrde()
   {return rde;}
   public void removeall(String rdd)
    {
System.out.println(rdd);
    try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","broadwalk","broadwalk");
    Statement st1,st2,st3,st4,st5,st6,st7,st8,st9,st10,st11;
    st1=conn.createStatement();
    st2=conn.createStatement();
    st3=conn.createStatement();
    st4=conn.createStatement();
    st5=conn.createStatement();
    st6=conn.createStatement();
    st7=conn.createStatement();
    st8=conn.createStatement();
    st9=conn.createStatement();
    st10=conn.createStatement();
    st11=conn.createStatement();
    st1.executeUpdate("delete from dltrans where rdid='"+rdd+"'");
System.out.println("1");
   // st2.executeUpdate("delete from deddinfo where rdid='"+rdd+"'");
//System.out.println("2");
    st3.executeUpdate("delete from depays where rdid='"+rdd+"'");
System.out.println("3");
    st4.executeUpdate("delete from dlorder where rdid='"+rdd+"'");
System.out.println("4");
    st5.executeUpdate("delete from rexper where rdcode='"+rdd+"'");
System.out.println("5");
    st6.executeUpdate("delete from idtrans where rdid='"+rdd+"'");
System.out.println("6");
    st7.executeUpdate("delete from ddinfo where rdid='"+rdd+"'");
System.out.println("7");
    st8.executeUpdate("delete from idpays where rdid='"+rdd+"'");
System.out.println("8");
    st9.executeUpdate("delete from idrorders where rdid='"+rdd+"'");
System.out.println("1");
    st10.executeUpdate("delete from icustomers where rdcode='"+rdd+"'");
System.out.println("9");
    st11.executeUpdate("delete from rdealers where rdcode='"+rdd+"'");
System.out.println("10");
     }
  catch(Exception e){System.out.println(e.getMessage());}
  }
  }
