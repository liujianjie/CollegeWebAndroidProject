create table history(
  id int primary key identity(1,1),
  qqnum varchar(50) not null,
  qqpwd varchar(50) null,
  qqface varchar(50) not null
)

create table history(
  id integer,
  qqnum varchar2(50) not null,
  qqpwd varchar2(50) null,
  qqface varchar2(50) not null,
  constraint PK_HISTORY primary key(id)
)

select * from history

--创建序列 试试只用一个序列
create sequence review_qq_sequence 
increment by 1
start with 1

alter sequence review_qq_sequence rename to seq_review_qq

--西八，要先nextval啊
select seq_review_qq.nextval from dual;
select seq_review_qq.currval from dual;

--
