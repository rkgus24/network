select regist_month,cl.c_no, c_name,class_name,
class_area,tuition,grade
from tbl_class_202201 cl,tbl_member_202201 me,tbl_teacher_202201 te
where cl.c_no =me.c_no and cl.teacher_code =te.teacher_code

CREATE TABLE TBL_TEACHER_202201 (
	TEACHER_CODE CHAR(3) NOT NULL,
	TEACHER_NAME VARCHAR2(15),
	CLASS_NAME VARCHAR2(20),
	CLASS_PRICE NUMBER(8),
	TEACHER_REGIST_DATE VARCHAR2(8),
	PRIMARY KEY(TEACHER_CODE)
);

insert into  tbl_teacher_202201 values (  '100', '이초급', '초급반', 100000, '20220101');
insert into  tbl_teacher_202201 values (  '200', '김중급', '중급반', 200000, '20220102');
insert into  tbl_teacher_202201 values (  '300', '박고급', '고급반', 300000, '20220103');
insert into  tbl_teacher_202201 values (  '400', '정심화', '심화반', 400000, '20220104');

CREATE TABLE TBL_MEMBER_202201 (
	C_NO CHAR(5) NOT NULL,
	C_NAME VARCHAR2(15),
	PHONE VARCHAR2(11),
	ADDRESS VARCHAR2(50),
	GRADE VARCHAR2(6),
	PRIMARY KEY(C_NO)
);

insert into  tbl_member_202201 values (  '10001', '홍길동', '01011112222', '서울시 강남구', '일반' );
insert into  tbl_member_202201 values (  '10002', '장발장', '01022223333', '성남시 분당구', '일반' );
insert into  tbl_member_202201 values (  '10003', '임꺽정', '01033334444', '대전시 유성구', '일반' );
insert into  tbl_member_202201 values (  '20001', '성춘향', '01044445555', '부산시 서구', 'VIP' );
insert into  tbl_member_202201 values (  '20002', '이몽룡', '01055556666', '대구시 북구', 'VIP' );

CREATE TABLE TBL_CLASS_202201 (
	REGIST_MONTH VARCHAR2(6) NOT NULL,
	C_NO CHAR(5),
	CLASS_AREA VARCHAR2(15),
	TUITION NUMBER(8),
	TEACHER_CODE CHAR(3),
	PRIMARY KEY(REGIST_MONTH, C_NO)
);

insert into  tbl_class_202201 values( '202203', '10001', '서울본원', 100000, '100');
insert into  tbl_class_202201 values( '202203', '10002', '성남본원', 100000, '100');
insert into  tbl_class_202201 values( '202203', '10003', '대전본원', 200000, '200');
insert into  tbl_class_202201 values( '202203', '20001', '부산본원', 150000, '300');
insert into  tbl_class_202201 values( '202203', '20002', '대구본원', 200000, '400');

SELECT * FROM TBL_TEACHER_202201;
SELECT * FROM TBL_MEMBER_202201;
SELECT * FROM TBL_CLASS_202201;

