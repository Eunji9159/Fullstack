-- create table 테이블명 (컬럼명 자료형,컬럼명 자료형,...);
create table ex03(
   num1 number,
   name varchar2(3),
   num2 number(2),
   num3 number(3,1)
);
select * from ex03;
insert into ex03 values (1,'aaa',11,12.3);
insert into ex03 values (2,'bbb',2,12.3);
insert into ex03 values (3,'bbb',33.33,12.3);
-- 소수점 자리수 외 날림
insert into ex03 values (4,'bbb',44,12.34);
insert into ex03 values (5,'bbb',55,112.3);
insert into ex03 values (1.1,'bbb',66,12.4);

insert into ex03 values (6,'한',66,12.3);
insert into ex03 values (7,'한글',77,12.3);

create table ex04(
   num number,
   name char(3),
   nalja date
);
insert into ex04 values (1,'abc','2022/01/19');
insert into ex04 values (2,'abc','2022-01-19');
insert into ex04 values (3,'abc','20220119');
insert into ex04 values (4,'now',sysdate);

create table ex05 (num number);
select * from ex05;
insert into ex05 values (1111);
insert into ex05 values (2222);
insert into ex05 values (3333);

alter table ex05 add name varchar2(3);
insert into ex05 values (4444,'abc');
alter table ex05 modify name varchar2(3);
alter table ex05 drop column name;

drop table ex05;
alter table ex05 rename to ex55;
TRUNCATE TABLE ex55;




