import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class ShowbirthAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      org.district.BirthCer bc=new  org.district.BirthCer();
      String bcid=request.getParameter("bcid");
      HttpSession session=request.getSession(true);
      session.setAttribute("cid",bcid);
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("select *from  birthcertificate where bcid=?");
       stmt.setString(1,bcid);
      ResultSet rs=stmt.executeQuery();
      rs.next();
      bc.setBcid(rs.getString("bcid"));
      bc.setFname(rs.getString("firstname"));
      bc.setLname(rs.getString("lastname"));
      bc.setFather(rs.getString("fname"));
      bc.setMname(rs.getString("mname"));
      bc.setRadd(rs.getString("resaddress"));
      bc.setPadd(rs.getString("peraddress"));
      java.util.Date d1=rs.getDate("dob");
     String date=d1.toString();
      bc.setDob(date);
      bc.setSex(rs.getString("sex"));
      bc.setCast(rs.getString("cast"));
      bc.setBplace(rs.getString("birthplace"));
      bc.setDrname(rs.getString("drname"));
      bc.setFoccup(rs.getString("foccup"));
      java.util.Date d2=rs.getDate("dor");
      String date1=d2.toString();
      bc.setDor(date1);
      bc.setFlag(rs.getInt("flag"));
      bc.setHospital(rs.getString("hospital"));
      request.setAttribute("birthcer",bc);
      return mapping.findForward("success");   
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}