create sequence userinfo_user_id
increment by 1
start with 1000

CREATE TABLE userinfo(
  user_id number not null,
  user_name varchar2(20) not null,
  user_gender char(2) not null,
  user_tel varchar2(50) not null,
  user_card char(18) not null
);
comment on table userinfo is '用户表';
comment on column userinfo.user_id is '用户编号，主键';
comment on column userinfo.user_name is '姓名';
comment on column userinfo.user_gender is '性别';
comment on column userinfo.user_tel is '电话';
comment on column userinfo.user_card is '身份证号';

create index ix_userinfo on userinfo(user_id);
alter table userinfo
      add constraint pk_userinfo primary key(user_id)
      using index ix_userinfo
/
      

create table cardinfo(
       card_id varchar2(32) not null,
       user_id number not null,
       card_type varchar2(10) not null,
       money_type varchar2(10) not null,
       current_money number(18,2) not null
);
comment on table cardinfo is '用户卡信息';
comment on column cardinfo.card_id is '卡号、主键';
comment on column cardinfo.user_id is '用户编号';
comment on column cardinfo.card_type is '卡类别';
comment on column cardinfo.money_type is '币种';
comment on column cardinfo.current_money is '当前余额';

create index ix_cardinfo on cardinfo(card_id);
alter table cardinfo 
      add constraint pk_cardinfo primary key(card_id)
      using index ix_cardinfo;
/     


create table transinfo(
       tran_id varchar2(32) not  null,
       card_id varchar2(32) not null,
       tran_date date not null,
       tran_type varchar2(10) not null,
       tran_money number(18,2) not null
);
comment on table transinfo is '交易记录';
comment on column transinfo.tran_id is '记录号';
comment on column transinfo.card_id is '卡号';
comment on column transinfo.tran_date is '交易日期';
comment on column transinfo.tran_type is '交易类型';
comment on column transinfo.tran_money is '交易金额';

create index ix_transinfo on transinfo(tran_id);
alter table transinfo  
      add constraint pk_transinfo primary key(tran_id)
      using index ix_transinfo;
/
