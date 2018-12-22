import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*; 
import java.text.*; 
public class DecideResidentAction  extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      String bcid=request.getParameter("rcid");
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("update RESIDENTIALCERTIFICATE set flag=? where iid=?");
	  if(request.getParameter("submit").equals("approved"))
	      stmt.setString(1,"1");
	  else
	  if(request.getParameter("submit").equals("deny"))
	      stmt.setString(1,"2");
      stmt.setString(2,bcid);
      stmt.executeUpdate();
	  request.setAttribute("rcid",bcid);
	  request.setAttribute("decided",request.getParameter("submit"));
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