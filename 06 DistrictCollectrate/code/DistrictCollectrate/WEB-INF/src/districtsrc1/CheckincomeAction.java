import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
public class CheckincomeAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
       String cid=request.getParameter("iid");
     
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("select  flag from incomcertificate where iid=?" );
        stmt.setString(1,cid);
     ResultSet rs=stmt.executeQuery();
     rs.next();
    int f=rs.getInt("flag");
	con.close();
     if(f==1)
       return mapping.findForward("success");   
    if(f==0)
      return mapping.findForward("success1");   
    else
      return mapping.findForward("fail");   
}
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
 }
}