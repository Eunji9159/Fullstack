create table guest01(
	msg varchar2(2000),
	nalja date
);
insert into guest01 values ('test1',sysdate);
insert into guest01 values ('test2',sysdate);
insert into guest01 values ('test3',sysdate);
insert into guest01 values ('test4',sysdate);
insert into guest01 values ('test5',sysdate);
commit;
select * from guest01 order by nalja; 