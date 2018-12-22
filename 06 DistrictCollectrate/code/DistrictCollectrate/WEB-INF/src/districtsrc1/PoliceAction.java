import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class PoliceAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      Statement stmt=null;
	  PoliceFB  fb=(PoliceFB)form;
      String method=(String)fb.get("method");
	  String sqlSTMT=null;
	  if(method.equals("create")) {
		  String  pname=(String)fb.get("pname");
		  String addr=(String)fb.get("addr");
	      String login=(String)fb.get("login");
		  String pwd=(String)fb.get("pwd");
		  int range =12345;
		  Random rand = new Random();
		  int n= rand.nextInt(range);  
		  String pk="PST"+n;
		  sqlSTMT="insert into policest(pk,pname,addr,login,pwd) values ('"+pk+"','"+
						pname+"','"+
						addr+"','"+
						login+"','"+
						pwd+"')";
      stmt=con.createStatement();
      stmt.executeUpdate(sqlSTMT);
      request.setAttribute("cid",pk);
      return mapping.findForward("success");   
	  }
	  if(method.equals("delete")) {
		  String pk=(String)fb.get("pk");
		  sqlSTMT="delete from policest where pk='"+pk+"'";
      stmt=con.createStatement();
      stmt.executeUpdate(sqlSTMT);
      request.setAttribute("cid",pk);
      return mapping.findForward("success");   
	  }
	  if(method.equals("search")) {
      return mapping.findForward("success");   
	  }
	  if(method.equals("edit")) {
		  String pk=(String)fb.get("pk");
		  String  pname=(String)fb.get("pname");
		  String addr=(String)fb.get("addr");
	      String login=(String)fb.get("login");
		  String pwd=(String)fb.get("pwd");
		  sqlSTMT="update policest set pname='"+pname+"',addr='"+addr+"',login='"+login+"',pwd='"+pwd+"'where pk='"+pk+"'";
		  System.out.println(sqlSTMT);
      stmt=con.createStatement();
      stmt.executeUpdate(sqlSTMT);
      request.setAttribute("cid",pk);
      return mapping.findForward("success");   
	  }
     return mapping.findForward("fail");
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}

