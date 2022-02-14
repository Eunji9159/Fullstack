create table ex01(
	num1 number not null,
	num2 number,
	name varchar2(10) not null,
	sub varchar2(10)
);
insert into ex01 values (1000,1111,'test1','test2');
insert into ex01 values (2000,null,'test1',null);
insert into ex01 (num1,name) values (3000,'test2');
insert into ex01 values (4000,4444,'null',''); --비어있으면 null, 'null'은 문자열
insert into ex01 values (5000,'','test1','test2');
insert into ex01 values (6000,0,'test1','test2'); -- 0일 경우는 null이 아닌 것
insert into ex01 values ('7000','7777','test1','test2');
-- 중복불허
create table ex02(
	num1 number unique,
	num2 number,
	msg1 varchar2(10) unique,
	msg2 varchar2(10)
);
insert into ex02 values (1111,1111,'test1','test1');
insert into ex02 values (2222,2222,'test2','test2');
insert into ex02 values (3333,3333,'test3','test3');
insert into ex02 values (5555,5555,null,'test5'); -- 같은 문자열이 들어와서 무결성제약조건에 위배됨
--primary key : 유일키값
create table ex03(
	num1 number primary key,
	num2 number unique not null,
	msg1 varchar2(10) unique not null,
	msg2 varchar2(10)
);
insert into ex03 values (1111,1111,'test1','test1');
insert into ex03 values (2222,2222,'test2','test2');
insert into ex03 values (3333,3333,'test3','test3');

insert into ex03 values (2222,4444,'test4','test4');
-- 부모테이블
create table ex04(
	num1 number primary key,
	num2 number 
);
-- 자식테이블
create table ex05(
	num1 number primary key,
	num2 number references ex04(num1);
);
insert into ex04 values (1111,1111);
insert into ex04 values (2222,2222);
insert into ex04 values (3333,3333);

insert into ex05 values (1111,1111);
insert into ex05 values (2222,2222);

insert into ex04 values (3333,1111);
insert into ex04 values (4444,4444);
insert into ex05 values (4444,4444);

select ename,deptno from emp;

select * from dept;

create table ex06(
	num number primary key,
	name varchar2(10),
	gender char(3) check (gender in ('남','여')) -- ('남','여')만 사용가능
); 
insert into ex06 values (1111,'test1','남');
insert into ex06 values (2222,'test2','여');
-- insert into ex06 values (3333,'test3','외'); -- X

create table ex07(
	num number primary key,
	name varchar2(10),
	age number check (age between 1 and 80)
);

insert into ex07 values (1,'test1',1);
insert into ex07 values (2,'test2',10);
insert into ex07 values (3,'test3',15);
insert into ex07 values (4,'test4',80);

insert into ex07 values (5,'test5',0);

create table ex08(
	num1 number primary key,
	num2 number default 100,
	sub varchar2(12) default '제목없음'
);
insert into ex08 values (1111,1111,'test1');
insert into ex08 (num1) values (2222);
insert into ex08 values (3333,null,null); -- not null이 아니기 때문에 null입력 가능, default가 아닌 null나옴

select * from ex08;
-- 제약조건 명명법 ( 테이블명_컬럼명_제약조건)
-- 
create table ex09(
	num1 number,
	num2 number,
	msg1 varchar2(10),
	msg2 varchar2(10) constraint ex09_msg2_nn not null,
	constraint ex09_num1_pk primary key(num1),
	constraint ex09_msg1_uq unique(msg1),
	constraint ex09_num2_fk foreign key(num2) references ex08(num1) -- num2는 num1을 참조
);

insert into ex09 values (1111,1111,'test1','test1');
insert into ex09 values (2222,9999,'test1','test1');
insert into ex09 values (3333,9999,'test1','test1');

drop table ex04; -- 04테이블 먼저 지우는 것은 불가. 04를 참조하고 있는 05를 먼저 drop한 후 04drop 가능

alter table ex09 drop constraint ex09_num2_fk;
alter table ex09 drop constraint ex09_msg1_uq;
alter table ex09 drop constraint ex09_num1_pk;

alter table ex09 add constraint ex09_num1_pk primary key(num1); -- 제약조건 추가










