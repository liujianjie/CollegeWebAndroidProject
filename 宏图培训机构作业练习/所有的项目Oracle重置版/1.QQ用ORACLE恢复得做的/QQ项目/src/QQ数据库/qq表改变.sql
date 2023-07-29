--qq表
create table QQ(
  id integer,--id
  qqnum varchar2(50) not null,--qq号
  qqname varchar2(50) not null,--昵称
  pwd varchar2(50) not null,--密码
  face varchar2(50) not null,--头像
  names varchar2(50) null,--真实姓名
  age integer null,--年龄
  sex varchar2(50) not null,--性别
  dateremix varchar2(50) not null,--农历日历
  years varchar2(20) not null,--年份
  months varchar2(50) not null,--月份
  days varchar2(50) not null,--日份
  country varchar2(20) not null,--国家
  province varchar2(50) not null,--省份
  city varchar2(50) not null,--城市
  mark varchar2(100),--个性签名
  nation varchar2(50) null,--名族
  levels integer null,--等级
  star varchar2(20) null,--星座
  status integer not null,--在线状态 0 离线，1 在线，2 隐身，3 忙碌
  ipadd varchar2(50) null,
  port integer,
  constraint PK_QQ primary key(id)
)
select * from qq

drop table qq

select * from history

delete from history where qqnum='10812';
insert into history values(seq_review_qq.nextval,'10812','123456','img/3.png')

delete from history where qqnum='10812'
insert into history values(seq_review_qq.nextval,'10812','123456','img/3.png')
delete from history where qqnum='10812';
insert into history values(seq_review_qq.nextval,'10812','123456','img/3.png')

DECLARE BEGIN delete from history where qqnum='10812';insert into history values(seq_review_qq.nextval,'10812','123456','img/3.png');commit;END;
select * from game

select * from history

delete from game;

delete from qq;
delete from qqfrid;


delete from weiyun;
delete from history;


select * from qq

select * from game

