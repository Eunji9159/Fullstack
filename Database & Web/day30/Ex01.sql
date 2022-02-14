--DML (select,insert,update,delete) - CRUD
select * from dept;



INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

--입력
insert into dept (deptno,dname,loc) values (60,'aaaa','한글');

--삭제
delete from dept;

--수정
--update 테이블명 set 컬럼명=값,...where 조건;
update dapt set dname='AA',loc='BB' where deptno=50;
------------------------------------

insert into dept values (80,'FF','');
delete from dept where deptno in (50,60);
delete from dept where deptno between 50 and 60;
delete from dept where dname like '__';

