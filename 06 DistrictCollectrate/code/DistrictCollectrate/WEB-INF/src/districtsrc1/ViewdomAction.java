import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
public class ViewdomAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      org.district.Domicile bc=new  org.district.Domicile();
      String dcid=request.getParameter("dcid");
      HttpSession session=request.getSession(true);
      session.setAttribute("cid",dcid);
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("select *from  domcilecertificate where did=?");
      stmt.setString(1,dcid);
      ResultSet rs=stmt.executeQuery();
      rs.next();
      bc.setDcid(rs.getString("did"));
      bc.setFname(rs.getString("firstname"));
      bc.setLname(rs.getString("lastname"));
      bc.setFather(rs.getString("fname"));
      bc.setRadd(rs.getString("resaddress"));
      bc.setPadd(rs.getString("peraddress"));
      java.util.Date d1=rs.getDate("dob");
     String date1=d1.toString();
      bc.setDob(date1);
      bc.setCast(rs.getString("caste"));
      bc.setLs(rs.getInt("livingsince"));
      bc.setPurpose(rs.getString("purpose"));
      bc.setOccup(rs.getString("occupation"));
      java.util.Date d2=rs.getDate("doapp");
      String date2=d2.toString();
      bc.setDor(date2);
      bc.setFlag(rs.getInt("flag"));
      request.setAttribute("resdcer",bc);
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
 }      
}