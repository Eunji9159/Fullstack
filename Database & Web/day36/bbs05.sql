drop table bbs05;
drop sequence bbs05_seq;
--
create table bbs05(
   num number primary key,
   sub varchar2(30),
   id varchar2(30) not null,
   cnt number default 0,
   content varchar2(2000),
   grp number,
   ord number default 0,
   dep number default 0
   
);
create sequence bbs05_seq;
--
insert into bbs05 (num,sub,id,content,grp) values (bbs05_seq.nextval,'테스트1','guest','test',bbs05_seq.currval);
insert into bbs05 (num,sub,id,content,grp) values (bbs05_seq.nextval,'테스트2','guest','test',bbs05_seq.currval);
insert into bbs05 (num,sub,id,content,grp) values (bbs05_seq.nextval,'테스트3','guest','test',bbs05_seq.currval);
insert into bbs05 (num,sub,id,content,grp) values (bbs05_seq.nextval,'테스트4','guest','test',bbs05_seq.currval);
insert into bbs05 (num,sub,id,content,grp) values (bbs05_seq.nextval,'테스트5','guest','test',bbs05_seq.curval);
commit;
select * from bbs05 order by grp desc,ord asc;
update bbs05 set cnt=cnt+1 where num=1;
-- ord = 0 답글
insert into bbs05 (num,sub,id,content,grp,ord,dep) values (bbs05_seq.nextval,'답글1','guest','test',4,(select max(ord)+1 from bbs05 where num=4),0+1);
-- ord !=0 답글의 답글
update bbs05 set where
insert into bbs05 (num,sub,id,content,grp,ord,dep) values (bbs05_seq.nextval,'답글1','guest','test',4,param+1,0+1);












