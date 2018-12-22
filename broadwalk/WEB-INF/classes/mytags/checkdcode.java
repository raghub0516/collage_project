package mytags;
import java.io.*;
import java.sql.*;
public class checkdcode
  {
  String dcode,dist,coun,pwd;
  int flag;
 public void setDcode(String dcode)
   {
   this.dcode=dcode;
   System.out.println(this.dcode);
   }
 public void setPwd(String pwd)
  {
   this.pwd=pwd;
   }
 public String getDcode()
   {
    System.out.println(this.dcode);
    return this.dcode;
    }
 public String retdcode()
  {
  return this.dcode;
  }
 public int check()
    {
   try
    {
     Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select rdcode,district,country from rdealers where rdcode='"+dcode+"' and pwd='"+pwd+"'");
     if(rs.next())
     {flag=1;dist=rs.getString(2);coun=rs.getString(3);}
     else
     flag=0;
    }
    catch(Exception e)
     {
     System.out.println(e.getMessage());
     }
     if(flag==1) return 1;
     else return 0;
     }
/* public String getDcode()
   {
    return dcode;
    }*/
 public String getDistrict()
     {
     return dist;
     }
public String retcoun()
   {
    return coun;
    }
   }

 
