import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*; 
public class ContractorLoginAction extends Action{
public ActionForward execute(ActionMapping mapping,
ActionForm form,HttpServletRequest request,
HttpServletResponse response)throws Exception{
String vuname=request.getParameter("uname");
String vpwd=request.getParameter("pwd");
System.out.println("vuname="+vuname);
System.out.println("vpwd="+vpwd);
try
{
 int f=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
Statement stmt=con.createStatement();
System.out.println("connected");
ResultSet rs=stmt.executeQuery("select * from contractor where pk='"+vuname+"'"+" and pwd='"+vpwd+"'");
String profileid="0";
if(rs.next()){
   if(vpwd.equals(rs.getString("pwd")))  {
    f=1;
	profileid="2";
	System.out.println("succes in login name"+rs.getString("cname"));
   
HttpSession session;
session=request.getSession(true);
session.setAttribute("username",rs.getString("pk"));
session.setAttribute("loginname",rs.getString("cname"));
session.setAttribute("profileid",profileid);
System.out.println(vuname);

   }
}

con.close();
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
