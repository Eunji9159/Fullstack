-- old join (2,4,5)
	1. Cross join
	2. Equi join
	3. NonEqui join
	4. Outer join
	5. Self join
--	
--	
--	
--	ANSI 조인 (2,4)
	old join 을 모두 포함 + α
	1. select * from ex01 cross join ex02
	2. select * from ex01 inner join ex02 on ex01.num=ex02.num
	2-1. select * from ex01 inner join ex02 using (num) --> 중복된 컬럼명이 하나이상 필수
	2-3. select * from ex01 natural join ex02 -> 반드시 하나의 컬럼명이 중복되어야함
	4-1. select * from ex01 left outer join ex02 on ex01.num=ex02.num
	4-2. select * from ex01 right outer join ex02 on ex01.num=ex02.num
	4-3. select * from ex01 right outer join ex02 on ex01.num=ex02.num
	
	
	
drop table ex01;
drop table ex02;
create table ex01(
	idx number,
	name varchar2(10),
	num number
);
create table ex02(
	num number,
	loc varchar2(6)	
);
insert into ex01 values (1,'user1',1111);
insert into ex01 values (2,'user2',2222);
insert into ex01 values (3,'user3',3333);
insert into ex01 values (4,'user4',5555);
	
insert into ex02 values (1111,'서울');
insert into ex02 values (2222,'부산');
insert into ex02 values (3333,'대전');
insert into ex02 values (4444,'제주');
commit;

--select * from ex01,ex02;
--select * from ex01,ex02 where num=num;
--select * from ex01,ex02 where ex01.num=ex02.num;
--select * from ex01,ex02 where ex01.num!=ex02.num;
--select ename,loc from emp,dept where emp.deptno=dept.deptno;

select * from ex01,ex02;
select * from ex01,ex02 where ex01.num=ex02.num;
select * from ex01,ex02 where ex01.num=ex02.num(+);
select * from ex01,ex02 where ex01.num(+)=ex02.num;

select a.idx,a.name,a.num,b.num,b.num,loc from ex01 A,ex02 B where a.num=b.num;

select * from emp A, emp B;
select A.ename, B.ename from emp A, emp B where A.mgr=B.empno;

--부산에 있는 사람이 누구인가?
select a.idx,a.name,a.num,b.num,b.num,loc from ex01 A,ex02 B where a.num=b.num and B.loc='부산';

--cross join
select * from ex01 cross join ex02;

--inner join. 'on'으로 조건 표현
select * from ex01 inner join ex02 on ex01.num=ex02.num;

--부산에 근무하는 사람
select * from ex01 inner join ex02 on ex01.num=ex02.num where loc='부산';

--using
select * from ex01 inner join ex02 using (num);

--natural join
select * from ex01 natural join ex02;

--outer join
select * from ex01 outer join ex02;
select * from ex01 left outer join ex02 using (num);
select * from ex01 left outer join ex02 on ex01.num=ex02.num;
select * from ex01 right outer join ex02 on ex01.num=ex02.num;
--full(left join + right join)
select * from ex01 full outer join ex02 on ex01.num=ex02.num;

select ename,mgr from emp;
select ename,(select ename from emp b where b.epmno=a.mgr) from emp a;



