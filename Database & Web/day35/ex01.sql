drop sequence ex01_seq;
create sequence ex01_seq;
select ex01_seq.nextval from dual;
select ex01_seq.nextval,ex01_seq.nextval from dual;
select ex01_seq.currval from dual; -- 반드시 한번 이상의 nextval호출이 사전에 있었어야 함

create sequence ex01_seq start with 10;
select ex02_seq.nextval from dual;
create sequence ex03_seq INCREMENT BY 10;
select ex01_seq.nextval from dual;
drop sequence ex04_seq;
create sequence ex04_seq start with 1 minvalue 5 maxvalue 10 cycle nocache; -- nocache 필수
select ex04_seq.nextval from dual;
create sequence ex05_seq maxvalue 5 nocycle nocache;
select ex05_seq.nextval from dual;
create sequence ex06_seq cache 2; -- 2는 cache의 양
select ex06_seq.nextval from dual;





