package mytags;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class admin
{
  int flag=0;
  private String uid,pwd;
  public void setUid(String uid)
   { this.uid=uid;}
  public void setPwd(String pwd)
    { this.pwd=pwd;}
  public int check()
   {
   try
    {
     Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from admin");
    rs.next();
    String cuid,cpwd;
    cuid=rs.getString(1);
    cpwd=rs.getString(2);
    if((cuid.equals(uid))&&(cpwd.equals(pwd)))
    flag=1;
    else
    flag=0;
    }
    catch(Exception e){System.out.println(e);}
    if(flag==1)
    return 1;
    return 0;
    }

  public String getUid()
   { return uid;}
  public String getPwd()
   { return pwd;}
}  
