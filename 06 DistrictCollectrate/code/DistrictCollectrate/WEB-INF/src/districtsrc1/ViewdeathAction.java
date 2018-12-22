import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class ViewdeathAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      org.district.DeathCer bc=new  org.district.DeathCer();
      String dcid=request.getParameter("dcid");
      HttpSession session=request.getSession(true);
      session.setAttribute("cid",dcid);
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("select *from  deathcertificate where dcid=?");
       stmt.setString(1,dcid);
      ResultSet rs=stmt.executeQuery();
      rs.next();
      bc.setDcid(rs.getString("dcid"));
      bc.setFname(rs.getString("firstname"));
      bc.setLname(rs.getString("lastname"));
      bc.setFather(rs.getString("fname"));
      bc.setMname(rs.getString("mname"));
      bc.setRadd(rs.getString("resaddress"));
      bc.setPadd(rs.getString("peraddress"));
      java.util.Date d1=rs.getDate("dob");
     String date=d1.toString();
      bc.setDob(date);
      java.util.Date d2=rs.getDate("dod");
     String date1=d2.toString();
      bc.setDod(date1);
      bc.setSex(rs.getString("sex"));
      bc.setCast(rs.getString("cast"));
      bc.setDplace(rs.getString("deathplace"));
      bc.setDrname(rs.getString("drname"));
      bc.setReason(rs.getString("reason"));
      bc.setOccup(rs.getString("occupation"));
      java.util.Date d3=rs.getDate("doapp");
      String date2=d3.toString();
      bc.setDor(date2);
      bc.setFlag(rs.getInt("flag"));
      bc.setHospital(rs.getString("hospital"));
      request.setAttribute("deathcer",bc);
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