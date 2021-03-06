import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
public class CheckwidowAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
       String wcid=request.getParameter("wid");
     
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("select  flag from widowcertificate where wid=?" );
        stmt.setString(1,wcid);
     ResultSet rs=stmt.executeQuery();
     rs.next();
    int f=rs.getInt("flag");
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