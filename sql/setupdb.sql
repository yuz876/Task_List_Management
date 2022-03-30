DROP DATABASE IF EXISTS tasklistmng;

create database tasklistmng;
use tasklistmng;
create table Users
(	userno	 char(10),
	userfn	 varCHAR(20) not null,
    usermn	 varCHAR(20),
	userln 	 varchar(20) not null,
    usernn	 varchar(20),
    useremail	varchar(30),
    usergender	varchar(5),
	userpwd		varchar(50)Not Null,
	userdob     varchar(20),
	usernote1	int,
	usernote2	varchar(30),
    Constraint Users Primary key (userno),
    Constraint Uniqueusernn	Unique(usernn));
select * from Users;
    
create table Tasks(
	taskno		char(15),
    taskcont	varchar(100),
    taskddl		varchar(20),
    taskord		int,
    taskim		varchar(10),
    taskisf		varchar(3),
    Constraint Tasks Primary key (taskno),
    CONSTRAINT usernoFK FOREIGN KEY (taskno) REFERENCES Users (userno)
);

create table UserChangeRecords (
	chgno	char(10),
	chgtime 	varchar(20),
	chgentry	varchar(20),
	chgbefore	varchar(20),
	chgafter	varchar(20),
	chgpwd		varchar(30),
	chgpwdbefore	varchar(20),
	chgpwdafter		varchar(20),
    Constraint UserChangearecords Primary key (chgno),
	CONSTRAINT chgnoFK FOREIGN KEY (chgno) REFERENCES Users (userno)
);

create table UserLoginActivityRecords (
	actno	char(10),
	acttime		varchar(10),
	acttype		varchar(10),
    Constraint UserLoginActivityRecords Primary key (actno),
    CONSTRAINT actnoFK FOREIGN KEY (actno) REFERENCES Users (userno)
);
show tables;