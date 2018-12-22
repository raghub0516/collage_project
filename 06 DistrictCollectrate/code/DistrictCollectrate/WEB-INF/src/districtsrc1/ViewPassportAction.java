import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class ViewPassportAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      org.district.PassportCer bc=new  org.district.PassportCer();
      String bcid=request.getParameter("bcid");
      HttpSession session=request.getSession(true);
      session.setAttribute("cid",bcid);
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      PreparedStatement stmt=con.prepareStatement("select *from  passportcertificate where bcid=?");
       stmt.setString(1,bcid);
      ResultSet rs=stmt.executeQuery();
      rs.next();
      bc.setBcid(rs.getString("bcid"));
      bc.setFname(rs.getString("firstname"));
      bc.setLname(rs.getString("lastname"));
      bc.setFather(rs.getString("fname"));
      bc.setMname(rs.getString("mname"));
      bc.setSname(rs.getString("spouse"));
      bc.setRadd(rs.getString("resaddress"));
      bc.setPadd(rs.getString("peraddress"));
      java.util.Date d1=rs.getDate("dob");
     String date=d1.toString();
      bc.setDob(date);
      bc.setSex(rs.getString("sex"));
      bc.setBplace(rs.getString("birthplace"));
      bc.setFlag(rs.getInt("flag"));
      bc.setTelno(rs.getString("teleno"));
      bc.setMobileno(rs.getString("mobileno"));
      bc.setQul(rs.getString("eduqul"));
      bc.setProf(rs.getString("prof"));
      bc.setId(rs.getString("idmark"));
      bc.setEmailid(rs.getString("emailid"));
      bc.setHeight(rs.getString("height"));
	  request.setAttribute("passportcer",bc);
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