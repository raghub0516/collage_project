<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<jsp:useBean id="pr" scope="session" class="mytags.procls"/>
<jsp:useBean id="c" scope="session" class="mytags.cudetails"/>
<jsp:setProperty name="c" property="*"/>
<%
System.out.println("=======1======");
 String[] prns=pr.retpronames();
System.out.println(prns);
System.out.println("=======2======");

 String[] prcs=pr.retprices();
System.out.println(prcs);

 String[] tcap=pr.retcapacity();
System.out.println(tcap);

 String[] tamt=pr.retamounts();
System.out.println(tamt);

 String[] tqty=pr.retquantity();
System.out.println(tqty);

 String[] pid=pr.retpids();
System.out.println(pid);

 double f,fd,fd1,fd2;
 double total=0.0;
 Double d,d2;
 int m=0,flag=0,t=0; 
 String s;
int l=prns.length;
System.out.println(l);
 String[] fpid=new String[l];
System.out.println(fpid);
  String[] fqty=new String[l];
System.out.println(fqty);
  String[] famt=new String[l]; 
System.out.println(famt);
 if(l!=0)
 {
 for(int i=0;i<l;i++)
 {
 d=new Double(tamt[i]);
 m=m+Integer.parseInt(tqty[i]);
 total=total+d.doubleValue();
 } 
  double divpart=m/10;
  int qpart=m%10;
  if(qpart>0)divpart=divpart+1.0; 
  if(total==0.0)
  {out.println("You have not specified any Order.");
   out.println("No order Registered");}
  else
  {
  if(divpart!=0)
  total=total+(pr.transcharge()*divpart);
  else
  total=total+(pr.transcharge()*1.0); 
   int len=pid.length; int tp=0;double dv=0.0;
for(int j=0;j<len;j++)
{
    String st=pid[j]; int flag1=0;int temp=0;
 for(int k=j+1;k<len;k++)
    {
if((st.equals(pid[k]))&&(pid[k]!="x"))
 { 
 flag1=1;
 if(temp==0)
  {
  tp=Integer.parseInt(tqty[j])+Integer.parseInt(tqty[k]);
  Double sd=new Double(tamt[j]);Double d1=new Double(tamt[k]);
  dv =sd.doubleValue()+d1.doubleValue();
  }
 else
   {
    tp=tp+Integer.parseInt(tqty[k]); 
    Double ttd=new Double(tamt[k]);
    dv=dv+ttd.doubleValue();
   }
   temp=temp+1;
  pid[k]="x";
 }
}
 if(flag1!=0)
   {
     fpid[t]=st;
     fqty[t]=Integer.toString(tp);
     famt[t]=Double.toString(dv);
}
 else
   {
     fpid[t]=st;
    fqty[t]=tqty[j];
    famt[t]=tamt[j];
  }
t=t+1;
} 
int i=c.submitorder();
System.out.println("================"+i);
if(i==1){
c.isubmitorder();
c.insidpays(request,fpid,fqty,famt,total,t);}
else
{
c.dsubmitorder();
c.dsidpays(request,fpid,fqty,famt,total,t);}
out.println("<form action=\"nextorder.jsp\" name=\"f1\" method=post>");
out.println("Your <b>Order</b> has been Registered.<br>");
out.print("<br><br><input type=\"submit\" name=\"ao\" value=\"Click Here\"><b>to Place another");
out.println(" Order.</b>");
out.println("</form>");
}}
 else
 {
 out.println("<br><B>You have not placed any order.<br>No Order regisiterd</B>");
 }
%>
