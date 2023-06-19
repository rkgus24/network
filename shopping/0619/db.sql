create table tbl_member_202205 (
custno number(6) not null,
custname varchar2(20),
phone varchar2(13),
address varchar2(60),
joindate date,
grade char(1),
city char(2),
primary key(custno)
);

create table tbl_money_202205 (
custno number(6) not null,
saleno number(8)not null,
pcost number(8),
amount number(4),
price number(8),
pcode varchar2(4),
sdate date,
primary key(custno, saleno)
);

insert into tbl_member_202205
values (100001, '김행복', '010-1111-2222', '서울 동대문구 휘경1동', '20210102', 'A', '10');
insert into tbl_member_202205
values (100002, '이축복', '010-1111-3333', '서울 동대문구 휘경2동', '20210103', 'B', '10');
insert into tbl_member_202205
values (100003, '장믿음', '010-1111-4444', '울릉도 울릉읍 독도1리', '20210104', 'B', '30');
insert into tbl_member_202205
values (100004, '최사랑', '010-1111-5555', '울릉도 울릉읍 독도2리', '20210105', 'A', '30');
insert into tbl_member_202205
values (100005, '진평화', '010-1111-6666', '제주도 제주시 외나무골', '20210106', 'B', '60');
insert into tbl_member_202205
values (100006, '차공단', '010-1111-7777', '제주도 제주시 감나무골', '20210107', 'C', '60');

insert into tbl_money_202205 values (100001, 20220001, 500,5,2500,'A001','20220101');
insert into tbl_money_202205 values (100001, 20220002, 1000,4,4000,'A002','20220101');
insert into tbl_money_202205 values (100001, 20220003, 500,3,1500,'A008','20220101');
insert into tbl_money_202205 values (100002, 20220004, 2000,1,2000,'A004','20220102');
insert into tbl_money_202205 values (100002, 20220005, 500,1,500,'A001','20220103');
insert into tbl_money_202205 values (100003, 20220006, 1500,2,3000,'A003','20220103');
insert into tbl_money_202205 values (100004, 20220007, 500,2,1000,'A001','20220104');
insert into tbl_money_202205 values (100004, 20220008, 300,1,300,'A005','20220104');
insert into tbl_money_202205 values (100004, 20220009, 600,1,600,'A006','20220104');
insert into tbl_money_202205 values (100004, 20220010, 3000,1,3000,'A007','20220106');

select * from tbl_member_202205;
select * from tbl_money_202205;
