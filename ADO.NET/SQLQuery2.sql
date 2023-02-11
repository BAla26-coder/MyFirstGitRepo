 create database Employees

 Create Table Code_Employee (
  Empno int PRIMARY KEY,
  Empname varchar(35) NOT NULL,
  Empsal numeric(10,2) check (Empsal >= 25000),
  Emptype char(1) Check (Emptype IN ('F', 'P'))
);



Create Procedure Add_Employee (@empno int, @empname varchar(35), @empsal numeric(10,2), @emptype char(1))
as
Begin
Insert Into Code_Employee (Empno, Empname, Empsal, Emptype)
  Values(@empno, @empname, @empsal, @emptype);
end;

Select* from Code_Employee