import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class StorebirthAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      BirthFB  fb=(BirthFB)form;
      String  first=(String)fb.get("first");
      String last=(String)fb.get("last");
      String fname=(String)fb.get("fname");
      String mname=(String)fb.get("mname");
      String resadd=(String)fb.get("resadd");
      String peradd=(String)fb.get("peradd");
      String dob=(String)fb.get("dob");
      java.sql.Date d1=java.sql.Date.valueOf(dob);
      String sex=(String)fb.get("sex");
      String caste=(String)fb.get("caste");
      String bplace=(String)fb.get("bplace");
      String drname=(String)fb.get("drname");
      String foccup=(String)fb.get("foccup");
      String hname=(String)fb.get("hname");
      java.util.Date sdate=new java.util.Date();
      DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
     String str = df.format(sdate);
     java.sql.Date d2=java.sql.Date.valueOf(str);

      int range =12345;
      Random rand = new Random();
      int n= rand.nextInt(range);  
      String birth="DD"+n; 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("insert into birthcertificate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      stmt.setString(1,birth);
      stmt.setString(2,first);
      stmt.setString(3,last);
      stmt.setString(4,fname);
      stmt.setString(5,mname);
      stmt.setString(6,resadd);
      stmt.setString(7,peradd);
      stmt.setDate(8,d1);
      stmt.setString(9,sex);
      stmt.setString(10,caste);
      stmt.setString(11,bplace);
      stmt.setString(12,drname);
      stmt.setString(13,foccup);
      stmt.setDate(14,d2);
      stmt.setInt(15,0);
       stmt.setString(16,hname); 
      stmt.executeUpdate();
      request.setAttribute("cid",birth);
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}