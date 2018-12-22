package mytags;
import java.sql.*;
import java.io.*;
public class delprds
  {
   String pid;
   public void setPid(String pid)
    {
    this.pid=pid;
    }
    public void delproduct(String pid)
     {
      try
       {
        Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


        Statement st=con.createStatement();
       String qry="delete from products where prodid='"+pid+"'";
       st.executeUpdate(qry);
       }
       catch(Exception e)
       {
       System.out.println(e.getMessage());
       }
    }
  public String retpid()
   {
    return this.pid;
    }
    }
