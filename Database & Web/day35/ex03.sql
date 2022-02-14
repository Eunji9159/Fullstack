-- 서브쿼리
-- 메인쿼리문장 안에 들어가는 또다른 쿼리문장
-- DML, DDL
-- select (필드자리_2.서브쿼리) from (테이블자리_1.서브쿼리) where (조건자리_3.서브쿼리)
-- 1. select쿼리에서 의미를 지님, 단 자유롭게 모두가능
-- 2. 단일결과값.(단일 컬럼,레코드)
-- 3. 

select * from (selet * from dept);
select * from (select dname,loc from dept);
select * from (select 'add',dname from dept);
select ename,deptno from emp;
-- from (테이블자리_1.서브쿼리)
select ename,(select loc from dept where dept.deptno=emp.deptno) from emp;
select ename,(select dema,loc from dept where dept.deptno=emp.deptno) from emp;
-- select (필드자리_2.서브쿼리)
select ename,sal from emp where sal>=(select avg(sal) from emp);
select avg(sal) from emp;
-- where (조건자리_3.서브쿼리)
select ename,sal from emp where sal>=(select avg(sal) from emp group by deptno);
select ename,deptno from emp where deptno in (select deptno from dept where deptno<30);
select deptno from dept where deptno<30;

select * from ex02;
insert into ex02 (select 6666,'대구' from dual);
select * from ex02;
insert into ex02 (select 7777,'수원' from dual);
select * from ex02;
drop table ex03;
create table ex03 as (select * from dept);
select * from ex03;
insert into ex03 values (50,'test','test');
select * from dept;
drop table ex04;
create table ex04 as (select deptno,loc from dept);
select * from ex04;
create table ex05 as (select deptno,loc from dept where 0>1);
select * from ex05;
select (insert into ex05 values (111,'test')) from ex05;







