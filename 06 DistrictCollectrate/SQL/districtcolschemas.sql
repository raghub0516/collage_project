drop user distcol cascade;
create user distcol identified by distcol;
grant connect,resource,unlimited tablespace to distcol;
connect distcol/distcol;
drop table policest cascade constraint;
drop table passportcertificate cascade constraint;
drop table birthcertificate cascade constraint;
drop table deathcertificate cascade constraint;
drop table widowcertificate cascade constraint;
drop table incomcertificate cascade constraint;
drop table residentialcertificate cascade constraint;
drop table domcilecertificate cascade constraint;
drop table minoritycertificate cascade constraint;
drop table castcertificate cascade constraint;
drop table users_details cascade constraint;
drop table contractor cascade constraint;
drop table tender cascade constraint;
drop table tcassign cascade constraint;
create table contractor(pk varchar2(15) primary key,
			cname varchar2(25), 
			caddr varchar2(60), 
			bid varchar2(15), 
			bname varchar2(25),
			baddr varchar2(60),
			years varchar2(5),
			pwd varchar2(15))
/
create table tender(tid varchar2(15) primary key,
			tname varchar2(25),
			workplace varchar2(25),
			tdesc varchar2(200),
			flag number(1),
			pk  references contractor(pk) on delete cascade)
/
create table tcassign(tid varchar2(15) references tender(tid) on delete cascade,
                       pk varchar2(15) references contractor(pk),
                       nodays varchar2(5),
                       amt varchar2(10))
/
create table policest(pk varchar2(15),pname varchar2(25), addr varchar2(60), login varchar2(15) primary key, pwd varchar2(15))
/
create table passportcertificate(BCID VARCHAR2(10) primary key,
			FIRSTNAME VARCHAR2(15),
			LASTNAME VARCHAR2(15),
			DOB DATE,
			SEX VARCHAR2(8),
			SPOUSE VARCHAR2(15),
			FNAME VARCHAR2(25),
			MNAME VARCHAR2(25),
			RESADDRESS VARCHAR2(100),
			PERADDRESS VARCHAR2(100),
			BIRTHPLACE VARCHAR2(50),
			TELENO NUMBER(10),
			MOBILENO NUMBER(10),
			EMAILID	VARCHAR2(25),
			EDUQUL VARCHAR2(25),
			PROF VARCHAR2(25),
			IDMARK VARCHAR2(25),
			HEIGHT NUMBER(5),
			FLAG NUMBER(1),
			PFLAG NUMBER(1),
			pk varchar2(15))
/
create table birthcertificate(BCID VARCHAR2(10) primary key,
			FIRSTNAME VARCHAR2(15),
			LASTNAME VARCHAR2(15),
			FNAME VARCHAR2(25),
			MNAME VARCHAR2(25),
			RESADDRESS VARCHAR2(100),
			PERADDRESS VARCHAR2(100),
			DOB DATE,
			SEX VARCHAR2(8),
			CAST VARCHAR2(10),
			BIRTHPLACE VARCHAR2(50),
			DRNAME VARCHAR2(30),
			FOCCUP VARCHAR2(30),
			DOR DATE,
			FLAG NUMBER(1),
			HOSPITAL VARCHAR2(30))
/
create table deathcertificate(DCID VARCHAR2(10) primary key,
			FIRSTNAME VARCHAR2(15),
			LASTNAME VARCHAR2(15),
			FNAME VARCHAR2(25),
			MNAME VARCHAR2(25),
			RESADDRESS VARCHAR2(100),
			PERADDRESS VARCHAR2(100),
			DOD DATE,
			SEX VARCHAR2(8),
			CAST VARCHAR2(10),
			DEATHPLACE VARCHAR2(50),
			DRNAME VARCHAR2(30),
			REASON VARCHAR2(20),
			OCCUPATION VARCHAR2(30),
			DOAPP DATE,
			FLAG NUMBER(1),
			DOB DATE,
			HOSPITAL VARCHAR2(20))
/
create table widowcertificate(WID VARCHAR2(10) primary key,
			FIRSTNAME VARCHAR2(15),
			LASTNAME VARCHAR2(15),
			HUSNAME VARCHAR2(25),
			RESADDRESS VARCHAR2(100),
			PERADDRESS VARCHAR2(100),
			DEATHCERID VARCHAR2(10),
			REASON VARCHAR2(20),
			OCCUPATION VARCHAR2(30),
			DOAPP DATE,
			FLAG NUMBER(1),
			DOD DATE,
			DEATHPLACE VARCHAR2(30),
			HOSNAME VARCHAR2(30),
			DRNAME VARCHAR2(30))
/
create table incomcertificate(IID VARCHAR2(10) primary key,
			FIRSTNAME VARCHAR2(15),
			LASTNAME VARCHAR2(15),
			FNAME VARCHAR2(25),
			DOB DATE,
			QUALF VARCHAR2(20),
			OCCUPATION VARCHAR2(25),
			INCOME NUMBER(15,2),
			RESADDRESS VARCHAR2(100),
			PERADDRESS VARCHAR2(100),
			PURPOSE VARCHAR2(20),
			DOAPP DATE,
			FLAG NUMBER(1))
/
create table residentialcertificate(IID VARCHAR2(10) primary key,
			      FIRSTNAME VARCHAR2(15),
			      LASTNAME VARCHAR2(15),
			      FNAME VARCHAR2(25),
			      DOB DATE,
			      CASTE VARCHAR2(20),
			      OCCUPATION VARCHAR2(25),
			      LIVINGSINCE NUMBER(3),
			      RESADDRESS VARCHAR2(100),
			      PERADDRESS VARCHAR2(100),
			      REASON VARCHAR2(20),
			      PURPOSE VARCHAR2(20),
			      DOAPP DATE,
			      FLAG NUMBER(1))
/
create table domcilecertificate(DID VARCHAR2(10) primary key,
			  FIRSTNAME VARCHAR2(15),
			  LASTNAME VARCHAR2(15),
			  FNAME VARCHAR2(25),
			  DOB DATE,
			  OCCUPATION VARCHAR2(25),
			  LIVINGSINCE NUMBER(3),
			  RESADDRESS VARCHAR2(100),
			  PERADDRESS VARCHAR2(100),
			  PURPOSE VARCHAR2(20),
			  DOAPP DATE,
			  FLAG NUMBER(1),
			  CASTE VARCHAR2(20))
/
create table minoritycertificate(MID VARCHAR2(10) primary key,
			   FIRSTNAME VARCHAR2(15),
			   LASTNAME VARCHAR2(15),
			   FNAME VARCHAR2(25),
			   DOB DATE,
			   OCCUPATION VARCHAR2(25),
			   RELIGION VARCHAR2(20),
			   INCOME NUMBER(20,2),
			   RESADDRESS VARCHAR2(100),
			   PERADDRESS VARCHAR2(100),
			   SEX VARCHAR2(8),
			   PURPOSE VARCHAR2(20),
			   DOAPP DATE,
			   FLAG NUMBER(1))
/
create table castcertificate(CID VARCHAR2(10) primary key,
		       FIRSTNAME VARCHAR2(15),
		       LASTNAME VARCHAR2(15),
		       FNAME VARCHAR2(25),
		       DOB DATE,
		       CASTE VARCHAR2(10),
		       OCCUPATION VARCHAR2(25),
		       RELIGION VARCHAR2(20),
		       INCOME NUMBER(20,2),
		       RESADDRESS VARCHAR2(100),
		       PERADDRESS VARCHAR2(100),
		       SEX VARCHAR2(8),
                       PURPOSE VARCHAR2(20),
		       DOAPP DATE,
		       FLAG NUMBER(1))
/
create table users_details(USER_NAME VARCHAR2(20) primary key,
		     USER_PWD VARCHAR2(20),profileid number(1))
/
insert into users_details values('admin','admin','1')
/
commit
/