import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
public class LoginAction extends Action{
public ActionForward execute(ActionMapping mapping,
ActionForm form,HttpServletRequest request,
HttpServletResponse response)throws Exception{

LoginFB fb=(LoginFB)form;
String vuname=(String)fb.get("uname");
String vpwd=(String)fb.get("pwd");
try
{
 int f=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from USERS_DETAILS where user_name='"+vuname+"'"+" and USER_PWD='"+vpwd+"'");
String profileid="0";
if(rs.next())
   if(vuname.equals(rs.getString("user_name")) && vpwd.equals(rs.getString("user_pwd")) && rs.getString(3).equals("1"))  {
    f=1;
	profileid="1";
   }
HttpSession session;
session=request.getSession(true);
session.setAttribute("username",vuname);
session.setAttribute("profileid",profileid);
System.out.println(vuname);
if(f==1)
return mapping.findForward("adminlogin");
else
return mapping.findForward("loginfail");
}
catch(Exception e)
{
System.out.println("Problem ---->"+e);
return mapping.findForward("loginfail");
}
}
}
