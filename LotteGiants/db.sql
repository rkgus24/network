create table giants_player(
	pid number(4) not null,
	pname varchar2(15),
	pposition varchar2(10),
	pdate char(8),
	pgrade char(1),
	primary key(pid)
);

insert into giants_player values('1001','스트레일리','투수','20200321','C');
insert into giants_player values('1002','나균안','투수','20170221','S');
insert into giants_player values('1003','이대호','내야수','20210301','A');
insert into giants_player values('1004','박제현','내야수','20160421','S');
insert into giants_player values('1005','환성빈','외야수','20150510','B');
insert into giants_player values('1006','유강남','포수','20230228','A');

create table giants_coach(
	cid char(3) not null,
	cname varchar2(15),
	cposition varchar2(10),
	cdate char(8),
	primary key(cid)
);

insert into giants_coach values('c01','배영수','투수','20230101');
insert into giants_coach values('c02','박흥식','내야수','20210218');
insert into giants_coach values('c03','전준호','외야수','20221026');
insert into giants_coach values('c04','최경철','포수','20170820');

create table giants_money(
	pid number(4) not null,
	pcost number(5),
	cid char(3) not null,
	ccost number(5),
	primary key(pid, cid),
	foreign key(pid) references giants_player(pid) on delete cascade,
	foreign key(cid) references giants_coach(cid)
)
drop table  giants_money;
select co.cid, cname, cposition, count(*), sum(pcost), avg(pcost), max(pcost), min(pcost)
from giants_player pl, giants_coach co, giants_money mo 
where pl.pid=mo.pid and co.cid=mo.cid 
group by co.cid, cname, cposition;
insert into giants_money values(1001,10000,'c01',7000);
insert into giants_money values(1002,8000,'c01',7000);
insert into giants_money values(1003,15000,'c02',6000);
insert into giants_money values(1004,20000,'c02',6000);
insert into giants_money values(1005,6000,'c03',5000);
insert into giants_money values(1006,4000,'c04',4000);