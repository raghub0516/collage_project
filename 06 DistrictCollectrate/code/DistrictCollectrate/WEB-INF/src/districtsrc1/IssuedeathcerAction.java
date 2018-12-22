import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
public class IssuedeathcerAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
       String result=request.getParameter("result");
       HttpSession session=request.getSession(true);
       String cid=(String)session.getAttribute("cid");
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("update deathcertificate set flag=? where dcid=?" );
      if(result.equals("approve"))
      {      
        stmt.setInt(1,1);
        stmt.setString(2,cid);
        stmt.executeUpdate();
       return mapping.findForward("success");   
      }
      else
      if(result.equals("decline"))
      {      
        stmt.setInt(1,2);
        stmt.setString(2,cid);
        stmt.executeUpdate();
       return mapping.findForward("success1");   
     }        
      else
      {
         stmt.setInt(1,0);
         stmt.setString(2,cid);
         stmt.executeUpdate();
         return mapping.findForward("success1");   
      }
  }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
 }
}