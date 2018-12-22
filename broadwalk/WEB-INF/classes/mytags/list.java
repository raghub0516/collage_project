package mytags;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.sql.*;
public class list extends TagSupport
 {
 public int doStartTag() throws JspException
  {
   try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","broadwalk","broadwalk");


    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select proname,capcity,cschge from products");
    while(rs.next())
      {
    pageContext.getOut().print("<tr><td>"+rs.getString(1)+"("+rs.getInt(2)+"ltrs)"+"</td><td>");
    pageContext.getOut().print(rs.getFloat(3)+"</td><td><input name=\"qty\" size=8></td><td>");
    pageContext.getOut().print("<A href=\"d:\\tip.html\">");
    pageContext.getOut().print("<img src=\"d:\\tomcat\\webapps\\project\\acart.gif\"></a>");
    pageContext.getOut().print("</td></tr>");
      }
    }
    catch(IOException e)
      {
       throw new JspException("error:IO exception while writing to client "+e);
       }
    catch(Exception e)
       {
        System.out.println(e.getMessage());
        }
   return SKIP_BODY;
 }
 public int doEndTag() throws JspException
   {
   return EVAL_PAGE;
    }
  }

    
