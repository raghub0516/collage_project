package mytags;
import java.sql.*;
import java.io.*;
public class delchrges
  {
   String coun;
   public void setCoun(String coun)
    {
    this.coun=coun;
    }
    public void deldett(String pid)
     {
      try
       {
        Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


        Statement st=con.createStatement();
       String qry="delete from chrges where country='"+coun+"'";
       st.executeUpdate(qry);
       }
       catch(Exception e)
       {
       System.out.println(e.getMessage());
       }
    }
  public String retcoun()
   {
    return this.coun;
    }
    }
