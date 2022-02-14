-- 단일행 함수
-- 1. 문자함수





select 'aAbBcCdD',lower('aAbBcCdD'),upper('aAbBcCdD') from dual;
select ename, empno, sal from emp where lower(ename)='scott';

select initcap('aAbB cCdD') from dual;

select concat('문자', '열') from dual;
select concat('문',concat('자','열')) from dual; -- 문+자+열

select substr('aAbBcCdD',1,3) from dual; 
select substrb('aAbBcCdD',1,3) from dual; 

select substr('한글로작성',1,2) from dual; -- 글자의 갯수로 
select substrb('한글로작성',1,3) from dual; -- byte로 계산됨 / 한글은 3byte이기 때문에 한글자만 나옴.
select substrb('한글로작성',1,6) from dual; -- byte로 계산됨 / 한글은 3byte이기 때문에 두글자 나옴.

select LENGTH('한글로작성') from dual;
select LENGTHB('한글로작성') from dual;

select instr('한글로작성','로') from dual;
select instrb('한글로작성','로') from dual;

select replace('한글로작성','로','만') from dual; -- 문자열에서 특정 문자를 변경한다.

select lpad('abc',10,'#') from dual; -- 오른쪽 정렬 후 왼쪽에 생긴 빈 공백에 특정 문자를 채우는 함수
select rpad('abc',10,'#') from dual; -- 왼쪽 정렬 후 오른쪽에 생긴 빈 공백에 특정 문자를 채우는 함수

select lpad(rpad(trim('   ab c   '),20,'#'),30,'#') from dual;


-- 2. 숫자함수
select trim('' from '    ab cd    ') from dual; -- default 가 공백
select trim('#' from '####ab#cd####') from dual; --특정 문자열을 앞뒤로 잘라내기 가능

select 5/2,floor(5/2),mod(5,2) from dual; -- floot(몫) // 몫을 구하는게 아니라 소수점을 버렸기에 몫이 구해짐, mod(나머지)
select round(3.14),round(3.54) from dual; -- round(반올림)
select trunc(3.14) from dual; -- 특정 자릿수를 잘라낸다.
select trunc(123.456,-1) from dual; -- 일의 자리를 버림
select trunc(123.456,-2) from dual; -- 십의 자리를 버림
select trunc(123.456,1) from dual; -- 소수점 이하 두번째 자리에서 버림 연산
select trunc(123.456,2) from dual; -- 소수점 이하 세번째 자리에서 버림 연산


-- 3. 날짜 함수
select sysdate from dual; -- 쿼리 문장을 날리는 시점의 날짜 및 시간 정보를 나타내는 것
select hiredate,sysdate,sysdate-hiredate from emp; --일을 기준으로 연산 수행

select months_between(sysdate,hiredate) from emp;

select sysdate+1 from dual; -- 내일
select sysdate-1 from dual; -- 어제
select add_months(sysdate,1) from dual; -- 1개월 뒤
select add_months(sysdate,-1) from dual; -- 1개월 전
select add_months(sysdate,-12) from dual; -- 1년 전

select next_day(sysdate,'화요일') from dual; -- 다가올 요일에 대한 날짜
select last_day(sysdate+20) from dual; -- 해당달()의 마지막 날

select round(sysdate) from dual; -- 현재 시간에서 반올림 // pm12:37 -> 다음날
select trunc(sysdate) from dual;

select round(sysdate,'MONTH') from dual; -- 
select trunc(sysdate,'MONTH') from dual;

select length(to_char(1234)) from dual; -- 숫자를 문자열로 바꿔줌
select to_char(1234) from dual; -- 숫자를 문자형으로 바꾸면서 format을 줄 수 있음.
select to_char(1234, '000000') from dual; -- 0은 무조건 자릿수를 다 채움.
select to_char(1234, '000,000') from dual;
select to_char(1234, '999999') from dual;
select to_char(1234, '999,999') from dual;
select to_char(1234, '999,999.99') from dual; -- 소수점은 다 나타냄
select to_char(1234, 'L999,999.99') from dual; -- L : 통화 기호를 표시


select to_char(sysdate, 'YY-MM-DD HH:MI:SS') from dual;

select to_date('2022-01-20')+1 from dual; -- 문자를 날짜형으로 바꿔줌
select to_date('220120','YYMMDD')+1 from dual; -- 뒤에 패턴을 적어줌으로써 오류가 X

select to_date('220120 1200', 'YYMMDD HHMI')+1 from dual;

select to_number('1234')+1 from dual; -- 문자를 숫자형으로 변환
select to_number('12.34')+1 from dual; 

select null+1234 from dual;

select ename, sal, nvl(comm,0), sal+nvl(comm,0) from emp;

select ename,decode(deptno,10,'관리팀',20,'영업팀',30,'총무팀') from emp;

select ename,
			case 
				when deptno=10 then '관리팀'
				when deptno=20 then '영업팀'
				when deptno=30 then '총무팀'
				else '몰라'
			end 
		from emp;










































