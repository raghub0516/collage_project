import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class StoredeathAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      DeathFB  fb=(DeathFB)form;
      String  first=(String)fb.get("first");
      String last=(String)fb.get("last");
      String fname=(String)fb.get("fname");
      String mname=(String)fb.get("mname");
      String resadd=(String)fb.get("resadd");
      String peradd=(String)fb.get("peradd");
      String dob=(String)fb.get("dob");
      java.sql.Date d1=java.sql.Date.valueOf(dob);
      String dod=(String)fb.get("dod");
      java.sql.Date d2=java.sql.Date.valueOf(dod);
      String sex=(String)fb.get("sex");
      String caste=(String)fb.get("caste");
      String dplace=(String)fb.get("dplace");
      String drname=(String)fb.get("drname");
      String rdeath=(String)fb.get("rdeath");
      String occup=(String)fb.get("occup");
      String hname=(String)fb.get("hname");
      java.util.Date sdate=new java.util.Date();
      DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
     String str = df.format(sdate);
     java.sql.Date d3=java.sql.Date.valueOf(str);

      int range =23456;
      Random rand = new Random();
      int n= rand.nextInt(range);  
      String death="DD"+n; 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("insert into deathcertificate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      stmt.setString(1,death);
      stmt.setString(2,first);
      stmt.setString(3,last);
      stmt.setString(4,fname);
      stmt.setString(5,mname);
      stmt.setString(6,resadd);
      stmt.setString(7,peradd);
      stmt.setDate(8,d2);
      stmt.setString(9,sex);
      stmt.setString(10,caste);
      stmt.setString(11,dplace);
      stmt.setString(12,drname);
      stmt.setString(13,rdeath);
      stmt.setString(14,occup);
      stmt.setDate(15,d3);
      stmt.setInt(16,0);
      stmt.setDate(17,d1);
       stmt.setString(18,hname); 
      stmt.executeUpdate();
      request.setAttribute("cid",death);
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}