import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class StorewidowAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      WidowFB  fb=(WidowFB)form;
      String  first=(String)fb.get("first");
      String last=(String)fb.get("last");
      String hname=(String)fb.get("hname");
      String resadd=(String)fb.get("resadd");
      String peradd=(String)fb.get("peradd");
      String dod=(String)fb.get("dod");
      java.sql.Date d1=java.sql.Date.valueOf(dod);
      String dcid=(String)fb.get("dcid");
            
      String dplace=(String)fb.get("dplace");
      String drname=(String)fb.get("drname");
      String rdeath=(String)fb.get("rdeath");
      String occup=(String)fb.get("occup");
      String hosname=(String)fb.get("hosname");
      java.util.Date sdate=new java.util.Date();
      DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
     String str = df.format(sdate);
     java.sql.Date d2=java.sql.Date.valueOf(str);

      int range =34567;
      Random rand = new Random();
      int n= rand.nextInt(range);  
      String widow="WC"+n; 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("insert into widowcertificate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      stmt.setString(1,widow);
      stmt.setString(2,first);
      stmt.setString(3,last);
      stmt.setString(4,hname);
      stmt.setString(5,resadd);
      stmt.setString(6,peradd);
      stmt.setString(7,dcid);
      stmt.setString(8,rdeath);
      stmt.setString(9,occup);
      stmt.setDate(10,d2);
      stmt.setInt(11,0);
      stmt.setDate(12,d1);
      stmt.setString(13,dplace);
      stmt.setString(14,hosname); 
      stmt.setString(15,drname);
      
      stmt.executeUpdate();
      request.setAttribute("cid",widow);
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}