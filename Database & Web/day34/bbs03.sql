drop table bbs03;
drop sequence bbs03_seq;
-- create
create table bbs03(
	num number primary key,
	sub varchar2(30) ,
	id varchar2(20) not null,
	nalja date default sysdate,
	cnt number(10) default 0, 
	content varchar2(2000)
);
create sequence bbs03_seq;
-- dummy
insert into bbs03 (num,sub,id,content) values (bbs03_seq.nextval,'제목없음','user1','test');
insert into bbs03 (num,sub,id,content) values (bbs03_seq.nextval,'제목없음','user2','test');
insert into bbs03 (num,sub,id,content) values (bbs03_seq.nextval,'제목없음','user3','test');
insert into bbs03 (num,sub,id,content) values (bbs03_seq.nextval,'제목없음','user4','test');
insert into bbs03 (num,sub,id,content) values (bbs03_seq.nextval,'제목없음','user5','test');
commit;
select * from bbs03;



