create database egreeting
use egreeting

create table reg(
id int primary key identity,
uname varchar(50),
email nvarchar(50),
pas nvarchar(50),
cpas nvarchar(50),
[role] varchar(50),
credit numeric(35),
[security] int,
 )
 drop table reg
alter table reg
add phone numeric(25),

create table adminreg(
id int primary key identity,
uname varchar(50),
email nvarchar(50),
pas nvarchar(50),
rpas varchar(50),
phone numeric(35),
[address] nvarchar(50),
 )
 insert into adminreg values ('Irtaza' , 'irtaza@gmail.com' ,'12345' , '12345' ,'03314587965' , 'Aptech')

create table cat(
cid int primary key identity,
cname varchar(50),
)
insert into cat values ('Wedding')
update reg set email =' moiz@gmail.com ' where id = 3

create table contact(
id int primary key identity,
ctfname varchar (50),
ctlname varchar (50),
ctemail nvarchar(50),
ctphone numeric(25),
ctmsg varchar(5000),
)
alter table contact
add phone numeric(25)

create table feedback(
id int primary key identity,
satisfication varchar (20),
expectaion varchar (20),
recommend nvarchar(20),
msatisfied nvarchar(20),
lsatisfied varchar(20),
)

create table addproduct(
id int primary key identity,
pname varchar(50),
pdetail varchar(50),
pimg nvarchar(max), 
pcid int foreign key references cat(cid)
)
alter table addproduct
add personalize nvarchar(max)

create table gly(id int primary key identity, gpic varchar(max),gcid int foreign key references cat(cid))

create table subscribe(
id int primary key identity,
semail varchar(50),
cradit int,
postel int,
[security] int,

)

create table font(
fid int primary key identity,
fname varchar(100),
)
alter table font
add fstyle varchar(100)


create table personalize(
id int primary key identity,
heading varchar(50),
fsize  varchar(50),
mfsize  varchar(50),
[date] nvarchar(50),
[message] nvarchar(1000),
pid int foreign key references font(fid)
)
alter table personalize
add uemail nvarchar(50)

alter table personalize
add color numeric(25)

select * from reg
select * from adminreg
select * from contact
select * from feedback
select * from addproduct
select * from cat
select * from gly
select * from subscribe
select * from font
select * from personalize


truncate table adminreg
truncate table addproduct
drop table addproduct
drop table reg
drop table adminreg
drop table subscribe


insert into cat values ('birthday'),('wedding'),('festivals')
insert into cat values ('jhangir')
insert into cat values ('ali')
insert into cat values ('mubi')





