-- 주석
-- 테이블 목록 확인
select tname from tab;
-- 사원정보테이블(emp)
select * from emp;
-- 부서정보테이블(dept)
select * from dept;
-- dbms
-- 관계형 데이터베이스 모델 (RDBMS)
-- 순서가 없는 집합


-- 테이블 : 세로줄(컬럼)과 가로줄(row 레코드)의 모델을 이용하여 정렬된 데이터 집합(값)의 모임
-- sql 종류
-- DML - 데이터 조작 (select - dql)
-- DDL - 데이터 설계&정의
-- DDL - 데이터베이스 컨트롤
-- TCL - 트랜젝션 제어

select * from dept;
select * from emp;

select deptno, dname from dept;

-- 사원의 이름과 급여와 입사일자만을 출력하는 SQL 문을 작성해보자
select ename, sal, hiredate from EMP;

select distinct deptno from emp;

-- 급여를 3000이상 받는 사원을 대상
select ename,sal from emp where sal>=3000;

-- 테이블 EMP 중에서 부서번호가 10번인 사원에 관한 모든 정보 출력
select * from emp where deptno = 10;

-- 테이블 EMP 중에서 급여가 2000미만이 되는 사원의 정보 중에서 사번과 이름,급여를 출력
select empno,ename,sal from emp where sal<2000;

-- 이름이 scott인 사람의 사번과 이름,급여를 출력
select empno,ename,sal from emp where ename = 'SCOTT';

-- 이름이 MILLER인 사람의 사원번호와 사원명과 직급을 출력하라.
select empno,ename,job from emp where ename = 'MILLER';

-- 1980년 이후에 입사한 사람
select ename,hiredate from emp where hiredate>='1980/01/01';

-- 1981년도 입사자의 이름과 입사일
select ename,hiredate from emp where hiredate>='1981/01/01'and hiredate<='1981/12/31';

-- 급여가 1000에서 3000사이에 있는 사원
select ename, sal from emp where sal>=1000 and sal<3000;
select ename, sal from emp where sal between 1000 and 3000; 

-- 사원번호가 7844이거나 7654이거나 7521인 사원
select ename,empno from emp where empno=7844 or empno=7654 and empno=7521;
select empno,ename from emp where empno in (7844,7654,7521);

-- 급여가 1500과 2500사이인 사원의 사번, 이름, 급여를 출력하라.
select empno , ename, sal from emp where sal between 1500 and 2500; 

















