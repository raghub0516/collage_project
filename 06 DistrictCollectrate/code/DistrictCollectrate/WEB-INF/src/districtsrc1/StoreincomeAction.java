import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class StoreincomeAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      IncomeFB  fb=(IncomeFB)form;
      String  first=(String)fb.get("first");
      String last=(String)fb.get("last");
      String fname=(String)fb.get("fname");
      String resadd=(String)fb.get("resadd");
      String peradd=(String)fb.get("peradd");
      String dob=(String)fb.get("dob");
      java.sql.Date d1=java.sql.Date.valueOf(dob);
      String qual=(String)fb.get("qual");
            
      String occup=(String)fb.get("occup");
      String income=(String)fb.get("income");
      double inm=Double.parseDouble(income);
      String purpose=(String)fb.get("purpose");
      java.util.Date sdate=new java.util.Date();
      DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
     String str = df.format(sdate);
     java.sql.Date d2=java.sql.Date.valueOf(str);

      int range =34567;
      Random rand = new Random();
      int n= rand.nextInt(range);  
      String incm="IC"+n; 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("insert into incomcertificate values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
      stmt.setString(1,incm);
      stmt.setString(2,first);
      stmt.setString(3,last);
      stmt.setString(4,fname);
      stmt.setDate(5,d1);
      stmt.setString(6,qual);
      stmt.setString(7,occup);
      stmt.setDouble(8,inm);
      stmt.setString(9,resadd);
      stmt.setString(10,peradd);
      stmt.setString(11,purpose);
      stmt.setDate(12,d2);
      stmt.setInt(13,0);
               
      stmt.executeUpdate();
      request.setAttribute("cid",incm);
	  con.close();
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}