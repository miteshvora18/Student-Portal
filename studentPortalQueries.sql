create database studentPortal

create table roles
(
rid int primary key identity(1,1),
rname varchar(80)
)

insert into roles values('admin')
insert into roles values('student')
insert into roles values('parent')

create table users 
(
uid int primary key identity(1,1),
rid int foreign key(rid) references roles(rid),
username varchar(80),
password varchar(80),
name varchar(90),
address text,
dob date,
uemail varchar(80),
uimage varchar(80),
branch varchar(80),
currentSem int,
uvalid bit
)

insert into users(rid,username,password,uvalid) values(1,'admin','admin',1)

create table subjects
(
sid int primary key identity(1,1),
sname varchar(100),
ssem int,
branch varchar(80),
smarks int
)

insert into subjects values('Communication Skill',1,'BCA',100)
insert into subjects values('Problem Solving Methodologies & Programming in C',1,'BCA',100)
insert into subjects values('Computer Fundamental & Emerging Technology',1,'BCA',100)
insert into subjects values('Networking & Internet Environment',1,'BCA',100)

insert into subjects values('Data Structure Using C Language',2,'BCA',100)
insert into subjects values('Developing Applications Using Visual Basic 6.0',2,'BCA',100)
insert into subjects values('Computer Organization and Architecture (COA)',2,'BCA',100)
insert into subjects values('Mathematical & Statistical Foundation of Computer Science',2,'BCA',100)

insert into subjects values('SAD, Software Quality Assurance and Testing',3,'BCA',100)
insert into subjects values('C++ and Object oriented Programming',3,'BCA',100)
insert into subjects values('RDBMS Using Oracle',3,'BCA',100)
insert into subjects values('Web Development using PHP',3,'BCA',100)

insert into subjects values('Programming with JAVA',4,'BCA',100)
insert into subjects values('Programming with C#',4,'BCA',100)
insert into subjects values('Network Technology and Administration',4,'BCA',100)
insert into subjects values('Operating Systems Concept with Unix/Linux',4,'BCA',100)

insert into subjects values('.NET Frameworks',5,'BCA',100)
insert into subjects values('Internet Programming and Cyber Law',5,'BCA',100)
insert into subjects values('Principals of Marketing',5,'BCA',100)
insert into subjects values('Core Java',5,'BCA',100)

insert into subjects values('E-Commerce',6,'BCA',100)
insert into subjects values('Multimedia Systems',6,'BCA',100)
insert into subjects values('Introduction to SysPro And Operating Systems',6,'BCA',100)
insert into subjects values('Advance Java',6,'BCA',100)

create table marks
(
mid int primary key identity(1,1),
uid int foreign key(uid) references users(uid),
sid int foreign key(sid) references subjects(sid),
earnedMarks int
)