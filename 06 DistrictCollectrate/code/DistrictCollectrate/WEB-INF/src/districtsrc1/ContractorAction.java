import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class ContractorAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      Statement stmt=null;
	  ContractorFB  fb=(ContractorFB)form;
      String method=(String)fb.get("method");
	  String sqlSTMT=null;
	  if(method.equals("create")) {
		  String cname=(String)fb.get("cname");
		  String caddr=(String)fb.get("caddr");
		  String bid=(String)fb.get("bid");
	      String bname=(String)fb.get("bname");
		  String baddr=(String)fb.get("baddr");
	      String years=(String)fb.get("years");
		  String pwd=(String)fb.get("pwd");
		  int range =12345;
		  Random rand = new Random();
		  int n= rand.nextInt(range);  
		  String pk="CID"+n;
		  sqlSTMT="insert into contractor(pk,cname,caddr,bid,bname,baddr,years,pwd) values ('"+pk+"','"+
						cname+"','"+
						caddr+"','"+
						bid+"','"+
						bname+"','"+
						baddr+"','"+
						years+"','"+
						pwd+"')";
      stmt=con.createStatement();
      stmt.executeUpdate(sqlSTMT);
      request.setAttribute("cid",pk);
	  con.close();
      return mapping.findForward("success");   
	  }
	  if(method.equals("delete")) {
		  String pk=(String)fb.get("pk");
		  sqlSTMT="delete from contractor where pk='"+pk+"'";
      stmt=con.createStatement();
      stmt.executeUpdate(sqlSTMT);
      request.setAttribute("cid",pk);
	  con.close();
      return mapping.findForward("success");   
	  }
	  if(method.equals("search")) {
      return mapping.findForward("success");   
	  }
	  if(method.equals("edit")) {
  		  String pk=(String)fb.get("pk");
		  String cname=(String)fb.get("cname");
		  String caddr=(String)fb.get("caddr");
		  String bid=(String)fb.get("bid");
	      String bname=(String)fb.get("bname");
		  String baddr=(String)fb.get("baddr");
	      String years=(String)fb.get("years");
		  String pwd=(String)fb.get("pwd");
		  sqlSTMT="update contractor set cname='"
		  +cname+"',caddr='"+caddr+"',bid='"
		  +bid+"',bname='"+bname+"',baddr='"
		  +baddr+"',years='"+years
		  +"',pwd='"+pwd+"'where pk='"+pk+"'";
		  System.out.println(sqlSTMT);
      stmt=con.createStatement();
      stmt.executeUpdate(sqlSTMT);
      request.setAttribute("cid",pk);
	  con.close();
      return mapping.findForward("success");   
	  }
	  con.close();
     return mapping.findForward("fail");
    }
   catch(Exception e)
   {
     System.out.println("Exception"+e);
     return mapping.findForward("fail");
   }
}      
}

