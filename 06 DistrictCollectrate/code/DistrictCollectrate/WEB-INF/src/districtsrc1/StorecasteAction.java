import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class StorecasteAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      CasteFB  fb=(CasteFB)form;
      String  first=(String)fb.get("first");
      String last=(String)fb.get("last");
      String fname=(String)fb.get("fname");
     String dob=(String)fb.get("dob");
     java.sql.Date d1=java.sql.Date.valueOf(dob);
      String resadd=(String)fb.get("resadd");
      String peradd=(String)fb.get("peradd");
      String sex=(String)fb.get("sex");
      String caste=(String)fb.get("caste");  
      String religion=(String)fb.get("religion");      
      String income=(String)fb.get("income");
      double inm=Double.parseDouble(income);
      String occup=(String)fb.get("occup");
      String purpose=(String)fb.get("purpose");
    
      java.util.Date sdate=new java.util.Date();
      DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
     String str = df.format(sdate);
     java.sql.Date d2=java.sql.Date.valueOf(str);

      int range =56789;
      Random rand = new Random();
      int n= rand.nextInt(range);  
      String ccer="CC"+n; 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("insert into castcertificate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      stmt.setString(1,ccer);
      stmt.setString(2,first);
      stmt.setString(3,last);
      stmt.setString(4,fname);
      stmt.setDate(5,d1);
      stmt.setString(6,caste);
      stmt.setString(7,occup);
      stmt.setString(8,religion);
      stmt.setDouble(9,inm);
      stmt.setString(10,resadd);
      stmt.setString(11,peradd);
      stmt.setString(12,sex);
      stmt.setString(13,purpose);
      stmt.setDate(14,d2);
      stmt.setInt(15,0);
                 
      stmt.executeUpdate();
      request.setAttribute("cid",ccer);
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
 }      
}