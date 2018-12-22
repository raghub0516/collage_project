import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class StorePassportAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      PassportFB  fb=(PassportFB)form;
      String  first=(String)fb.get("first");
      String last=(String)fb.get("last");
      String fname=(String)fb.get("fname");
      String mname=(String)fb.get("mname");
      String sname=(String)fb.get("sname");
      String id=(String)fb.get("id");
      String emailid=(String)fb.get("emailid");
      String qul=(String)fb.get("qul");
      String prof=(String)fb.get("prof");
      String telno=(String)fb.get("telno");
      String mobileno=(String)fb.get("mobileno");
      String height=(String)fb.get("height");
      String resadd=(String)fb.get("resadd");
      String peradd=(String)fb.get("peradd");
      String dob=(String)fb.get("dob");
      java.sql.Date d1=java.sql.Date.valueOf(dob);
      String sex=(String)fb.get("sex");
      String bplace=(String)fb.get("bplace");
     /* java.util.Date sdate=new java.util.Date();
      DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
     String str = df.format(sdate);
     java.sql.Date d2=java.sql.Date.valueOf(str);*/

      int range =12345;
      Random rand = new Random();
      int n= rand.nextInt(range);  
      String birth="DD"+n; 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("insert into passportcertificate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      stmt.setString(1,birth);
      stmt.setString(2,first);
      stmt.setString(3,last);
	  stmt.setDate(4,d1);
      stmt.setString(5,sex);
      stmt.setString(6,sname);
      stmt.setString(7,fname);
      stmt.setString(8,mname);
      stmt.setString(9,resadd);
      stmt.setString(10,peradd);
      stmt.setString(11,bplace);
      stmt.setString(12,telno);
      stmt.setString(13,mobileno);
      stmt.setString(14,emailid);
      stmt.setString(15,qul);
      stmt.setString(16,prof);
      stmt.setString(17,id);
      stmt.setString(18,height);
      stmt.setInt(19,0);
      stmt.setInt(20,0);
      stmt.setString(21,"");
      stmt.executeUpdate();
      request.setAttribute("cid",birth);
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