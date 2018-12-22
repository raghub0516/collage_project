import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class StoredomcileAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      DomicileFB  fb=(DomicileFB)form;
      String  first=(String)fb.get("first");
      String last=(String)fb.get("last");
      String fname=(String)fb.get("fname");
     String dob=(String)fb.get("dob");
     java.sql.Date d1=java.sql.Date.valueOf(dob);
      String resadd=(String)fb.get("resadd");
      String peradd=(String)fb.get("peradd");
      String caste=(String)fb.get("caste");
      String lsince=(String)fb.get("lsince");      
      int  ls=Integer.parseInt(lsince);
      String occup=(String)fb.get("occup");
      String purpose=(String)fb.get("purpose");
    
      java.util.Date sdate=new java.util.Date();
      DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
     String str = df.format(sdate);
     java.sql.Date d2=java.sql.Date.valueOf(str);

      int range =45678;
      Random rand = new Random();
      int n= rand.nextInt(range);  
      String domc="DC"+n; 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("insert into domcilecertificate values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
      stmt.setString(1,domc);
      stmt.setString(2,first);
      stmt.setString(3,last);
      stmt.setString(4,fname);
      stmt.setDate(5,d1);
      stmt.setString(6,occup);
      stmt.setInt(7,ls);
      stmt.setString(8,resadd);
      stmt.setString(9,peradd);
      stmt.setString(10,purpose);
      stmt.setDate(11,d2);
      stmt.setInt(12,0);
      stmt.setString(13,caste);
               
      stmt.executeUpdate();
      request.setAttribute("cid",domc);
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}