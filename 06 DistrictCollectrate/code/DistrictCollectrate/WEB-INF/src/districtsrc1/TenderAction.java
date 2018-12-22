import javax.servlet.http.*;
import org.apache.struts.action.*;
import java.sql.*;
import java.util.*;
import java.text.*;
public class TenderAction extends Action{

public ActionForward execute(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response)throws Exception
{
   try
   {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","distcol","distcol");
      Statement stmt=null;
	  TenderFB  fb=(TenderFB)form;
      String method=(String)fb.get("method");
	  String sqlSTMT=null;
	  if(method.equals("create")) {
		  String tname=(String)fb.get("tname");
		  String wplace=(String)fb.get("wplace");
		  String tdesc=(String)fb.get("tdesc");
		  String sflag=(String)fb.get("flag");
		  int flag=0;
		  if(sflag.equals("open"))
			flag=0;
		  if(sflag.equals("cancel"))
			flag=2;
		  int range =12345;
		  Random rand = new Random();
		  int n= rand.nextInt(range);  
		  String pk="TID"+n;
		  sqlSTMT="insert into tender(tid,tname,workplace,tdesc,flag) values ('"+pk+"','"+
						tname+"','"+
						wplace+"','"+
						tdesc+"','"+
						flag+"')";
      stmt=con.createStatement();
      stmt.executeUpdate(sqlSTMT);
      request.setAttribute("cid",pk);
	  con.close();
      return mapping.findForward("success");   
	  }
	  if(method.equals("delete")) {
		  String pk=(String)fb.get("tid"); 
		  sqlSTMT="delete from tender where tid='"+pk+"'";
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
  		  String pk=(String)fb.get("tid");
		  String tname=(String)fb.get("tname");
		  String wplace=(String)fb.get("wplace");
		  String tdesc=(String)fb.get("tdesc");
	      String sflag=(String)fb.get("flag");
  		  int flag=0;
		  if(sflag.equals("open"))
			flag=0;
		  if(sflag.equals("cancel"))
			flag=2;
		  sqlSTMT="update tender set tname='"
		  +tname+"',workplace='"+wplace+"',tdesc='"
		  +tdesc+"',flag='"+flag+"'where tid='"+pk+"'";
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

