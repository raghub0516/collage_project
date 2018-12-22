<html>
<BODY background="images/back.jpeg" text=yellow>
<%@ page language="java" import="java.sql.*"%>
<%
  Connection con;
  Statement st,st1,st2,st3;
  ResultSet rs,rs1,rs2,rs3;    
  String dateo,datet,tdate;
  String ody,omon,oyr,tdy,tmon,tyr;
  int flag=0;
  ody=request.getParameter("fdy");
  int kk=Integer.parseInt(ody);
  if(kk<10)
  ody="0"+ody;
  omon=request.getParameter("fmon");
  oyr=request.getParameter("fyr");
  tdy=request.getParameter("sdy");
  int jk=Integer.parseInt(tdy);
  if(jk<10)
  tdy="0"+tdy;
  tmon=request.getParameter("smon");
  tyr=request.getParameter("syr");
  dateo=ody+"-"+omon+"-"+oyr;
  datet=tdy+"-"+tmon+"-"+tyr;
  try
    {
     Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


     st=con.createStatement();
     st1=con.createStatement();
     st2=con.createStatement();
     String sqr="select greatest(to_date('"+dateo+"'),to_date('"+datet+"')) from dual";
     rs=st.executeQuery(sqr);
     rs.next();
     tdate=rs.getString(1);
      if(dateo.equals(datet))
       {
        flag=3;
        String tsq="select maild,cmt from mailus where to_char(dom,'dd-fmmonth-yyyy') LIKE '"+dateo+"'";
       // out.println(tsq);
        rs1=st1.executeQuery(tsq);
        rs2=st2.executeQuery(tsq);
      } 
     else
     if(tdate.equals(dateo))
      {
     flag=1;
     String fsqr="select maild,cmt from mailus where dom between to_date('"+datet+"','dd-mon-yyyy') and to_date('"+dateo+"','dd-mon-yyyy')";
    // out.println(fsqr);
     rs1=st1.executeQuery(fsqr);
     rs2=st2.executeQuery(fsqr);
      }
     else
      {
     flag=2;
     String ssqr="select maild,cmt from mailus where dom between to_date('"+dateo+"','dd-mon-yyyy') and to_date('"+datet+"','dd-mon-yyyy')";
     //out.println(ssqr);
     rs1=st1.executeQuery(ssqr);
     rs2=st2.executeQuery(ssqr);
      }
     
    if(!rs2.next())
     {
      if(flag==3){out.println("No mails Recieved on"+dateo+".");}
      else
      if(flag==1)
       {
       out.println("No Mails Recieved from "+datet+" to "+dateo+".");
       }
       else
      if(flag==2)
       {
       out.println("No Mails Recieved from "+dateo+" to "+datet+".");
       }
     }
    else
     {
    if(flag==1)
    out.println("Mails Recieved between "+datet+" and "+dateo+".");
    if(flag==2)
    out.println("Mails Recieved between "+dateo+" and "+datet+".");
    if(flag==3)
    out.println("Mails Recieved on "+dateo+".");
    out.println("<br><br><table border=1 cellpadding=5>");
     out.println("<tr><td width=20>SNO</td><td>FROM</td><td>MESSAGE</td></tr>");
    int i=1;
     while(rs1.next())
      {
      String id=rs1.getString(1);
      String message=rs1.getString(2);
      out.println("<tr><td width=20>"+i+"</td><td>"+id+"</td><td>"+message+"</td></tr>");
      i++;
      }
    out.println("</table>");
     }
    }
   catch(Exception e)
     {
      out.println(e);
     }
%>
</html>

