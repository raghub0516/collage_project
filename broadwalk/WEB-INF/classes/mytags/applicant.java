package mytags;
import javax.servlet.http.*;
import java.sql.*;
public class  applicant
{
  private String fname,lname,frmne,sts,eml,adr,dst,sta,pdg,comments,cty;
  private String phn,fax,zip,me;
  private int ato;
  ResultSet rs;
  String dte;
  public void setFname(String fname)
  {this.fname=fname;}
  public void setLname(String lname)
  {this.lname=lname;}
  public void setFrmne(String frmne)
  {this.frmne=frmne;}
  public void setPhn(String phn)
  { this.phn=phn;}
  public void setFax(String fax)
  {this.fax=fax;}
  public void setEml(String eml)
  {this.eml=eml;}
  public void setAdr(String adr)
  {this.adr=adr;}
  public void setDst(String dst)
  {this.dst=dst;}
  public void setSta(String sta)
  {this.sta=sta;}
  public void setCty(String cty)
  {this.cty=cty;}
  public void setZip(String zip)
  {this.zip=zip;}
  public void setAto(int ato)
  { this.ato=ato;}
  public void setMe(String me)
  {this.me=me;}
  public void setPdg(String pdg)
  {this.pdg=pdg;}
  public void processrequest(HttpServletRequest r)
  {
   String str="",s1="",str1="";
   try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


    Statement st=con.createStatement();
    Statement nst=con.createStatement();
    rs=st.executeQuery("select to_char(sysdate,'ddmmyyyyhhmiss'),to_char(add_months(sysdate,6),'dd-mon-yyyy') from dual");
    rs.next();
    String dcode=rs.getString(1);
    dte=rs.getString(2);
    String s="insert into dealers values('"+dcode+"','"+fname+"','"+lname+"','"+frmne+"','"+phn+"','"+fax+"','"+eml+"','"+adr+"','"+dst+"','"+sta+"','";
    String sqr=cty+"','"+zip+"',sysdate,'u')";
    System.out.println(s+sqr);
    st.executeUpdate(s+sqr);
   str1="insert into exper values('"+dcode+"','"+pdg+"',"+ato+",'"+me+"')";
   System.out.println(str1);
    nst.executeUpdate(str1);
         }  
   catch(Exception e){System.out.println(e);
 }
}
 public String retdate()
  {
  return dte;
 }
}
