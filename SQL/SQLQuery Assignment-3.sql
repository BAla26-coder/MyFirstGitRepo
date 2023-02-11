--Table For Client

create table Client(
ClientId int PRIMARY KEY,
Cname varchar(40) NOT NULL,
Address varchar(30),
Email varchar(30) UNIQUE,
PhoneNo varchar(10),
Business varchar(20) NOT NULL);

---Inserting Values
Insert into Client(ClientId,Cname,Address,Email,PhoneNo,Business)values(1001,'ACMEUtilities','Noida','contact@acmeutil.com',9567880032,'Manufacturing');
Insert into Client(ClientId,Cname,Address,Email,PhoneNo,Business)values(1002,'TrackonConsultants','Mumbai','consult@trackon.com',8734210090,'Consultant');
Insert into Client(ClientId,Cname,Address,Email,PhoneNo,Business)values(1003,'MoneySaverDistributors','Bangalore','save@moneysaver.com',7799886655,'Reseller');
Insert into Client(ClientId,Cname,Address,Email,PhoneNo,Business)values(1004,'LawfulCorp','Chennai','justice@lawful.com',9210342219,'Professional');

select * from Client

--Department Table

create table Dept(
Deptno int primary key,
Dname varchar(15) NOT NULL,
Loc varchar(20));

---Inserting Values
Insert into Dept(DEPTNO,DNAME,LOC) values(10,'Design','Pune');
Insert into Dept(DEPTNO,DNAME,LOC) values(20,'Development','Pune');
Insert into Dept(DEPTNO,DNAME,LOC) values(30,'Testing','Mumbai');
Insert into Dept(DEPTNO,DNAME,LOC) values(40,'Document','Mumbai');

select * from Dept

---Employee Table

create table Employees(
Empno int primary key,
Ename varchar(20) NOT NULL,
Job varchar(15),
Salary float CHECK (SALARY > 0),
Deptno int References Department(DEPTNO));

---Inserting Values
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7001,'Sandeep','Analyst',25000,10);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7002,'Rajesh','Designer',30000,10);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7003,'Madhav','Developer',40000,20);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7004,'Manoj','Developer',40000,20);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7005,'Abhay','Designer',35000,10);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7006,'Uma','Tester',30000,30);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7007,'Gita','Tech. Writer',30000,40);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7008,'Priya','Tester',35000,30);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7009,'Nutan','Developer',45000,20);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7010,'Smita','Analyst',20000,10);
Insert into Employees(EmpNo,Ename,Job,Salary,Deptno) values(7011,'Anand','Project Mgr',65000,10);

select * from EMPLOYEES

--Project table

create table PROJECTS(
projectId int primary key,
DESCR varchar(30) NOT NULL,
Startdate  Date,
Plannedenddate Date,
Actualenddate Date,
BUDGET int check(BUDGET > 0),
CLIENTID int references Client(CLIENTID));

--Inserting The values
insert into PROJECTS(PROJECTID,DESCR,Startdate,Plannedenddate,Actualenddate,BUDGET,CLIENTID)values(401,'Inventory','01-04-11','01-OCT-11','31-OCT-11',150000,1001);
Insert into PROJECTS(PROJECTID,DESCR,Startdate,Plannedenddate,Actualenddate,BUDGET,CLIENTID)values(402,'Accounting','01-AUG-11','01-JAN-12',null,500000,1002);
Insert into PROJECTS(PROJECTID,DESCR,Startdate,Plannedenddate,Actualenddate,BUDGET,CLIENTID)values(403,'Payroll','01-OCT-11','31-DEC-11',null,75000,1003);
Insert into PROJECTS(PROJECTID,DESCR,Startdate,Plannedenddate,Actualenddate,BUDGET,CLIENTID)values(404,'ContactMgmt','01-NOV-11','31-DEC-11',null,50000,1004);

select * from PROJECTS

--Employee Project table

create table EmployeeProTask(
ProjectId int References projects(ProjectId),
EmpNo int references EMPLOYEES(EMPNO),
startdate date,
enddate date,
TASK varchar(225) NOT NULL,
Status  varchar(10) NOT NULL,
Primary key(projectId,Empno));

--Inserting Values

insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values(401,7001,'01-APR-11','20-APR-11','SystemAnalysis','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7002,'21-APR-11','30-MAY-11','SystemDesign','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7003,'01-JUN-11','15-JUL-11','Coding','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7004,'18-JUL-11','01-SEP-11','Coding','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7006,'03-SEP-11','15-SEP-11','Testing','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7009,'18-SEP-11','05-OCT-11','CodeChange','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7008,'06-OCT-11','16-OCT-11','Testing','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7007,'06-OCT-11','22-OCT-11','Documentation','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (401,7011,'22-OCT-11','31-OCT-11','Signof','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (402,7010,'01-AUG-11','20-AUG-11','SystemAnalysis','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (402,7002,'22-AUG-11','30-SEP-11','SystemDesign','Completed');
insert into EmployeeProTask(projectId,Empno,startdate,enddate,Task,Status)values (402,7004,'01-OCT-11',null,'Coding','In Progress');

select * from EmployeeProTask