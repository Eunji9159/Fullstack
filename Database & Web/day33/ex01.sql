select sum(sal),avg(sal),max(sal),min(sal) from emp;
-- count : 그룹함수 중 유일하게 * 허용
-- 단, 컬럼값이 null일 경우 카운팅에서 제외
select count(ename),count(*),count(comm) from emp;
-- GROUP BY
select sum(sal) from emp where deptno=10;
select sum(sal) from emp where deptno=20;
select sum(sal) from emp where deptno=30;

select deptno,sum(sal) from emp group by deptno having avg(sal)>=2000; -- 부서별 평균값이 2000이상인 사람들의 연봉평균
--DML의 적용(insert,update,delete)
commit;
-- 마지막 커밋시점으로 돌아가는 명령
rollback;
-- 시퀀스
create table test01(
	num number,
	name varchar2(10)
);
-- create table test02(
-- num numver --0
--);
--insert into test02 value (0);
create sequence test01_seq;

select test01_seq.nextval from dual;

























